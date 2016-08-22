require 'ffi'
require 'ffi-additions'
require 'logger'
require 'ft-ffi/version'

module FT
  LOGGER = Logger.new(STDOUT)
  LOGGER.info "FT-FFT v#{FT::VERSION}"

  module LibBase

    extend FFI::Library
    ffi_convention :cdecl
    ffi_lib Dir[File.expand_path('../../freetype*.dll', __FILE__)].map { |f| [f.scan(/\d+/).last.to_i, f] }.max[1]

    # Basic Data Types
    # http://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html

    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Byte
    typedef :uchar,   :FT_Byte
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Bytes
    typedef :pointer,   :FT_Bytes
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Char
    typedef :char,    :FT_Char
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Int
    typedef :int,     :FT_Int
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UInt
    typedef :uint,    :FT_UInt
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Int16
    typedef :int16,   :FT_Int16
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UInt16
    typedef :uint16,  :FT_UInt16
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Int32
    typedef :int32,   :FT_Int32
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UInt32
    typedef :uint32,  :FT_UInt32

    if FFI::Platform::CPU == 'x86_64'
      # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Int64
      typedef :int64,  :FT_Int64
      # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UInt64
      typedef :uint64, :FT_UInt64
    end

    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Short
    typedef :short,   :FT_Short
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UShort
    typedef :ushort,  :FT_UShort
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Long
    typedef :long,    :FT_Long
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_ULong
    typedef :ulong,   :FT_ULong
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Bool
    typedef :bool,    :FT_Bool
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Offset
    typedef :size_t,  :FT_Offset
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_String
    # Actually a String in Freettpe is a char
    # typedef :FT_String.  :string,
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Tag
    typedef :uint32,  :FT_Tag
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Error
    typedef :int,     :FT_Error
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Fixed
    typedef :long,    :FT_Fixed
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Pointer
    typedef :pointer, :FT_Pointer
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Pos
    typedef :long,    :FT_Pos
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_FWord
    typedef :short,   :FT_FWord
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UFWord
    typedef :ushort,  :FT_UFWord
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_F2Dot14
    typedef :short,   :FT_F2Dot14
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_F26Dot6
    typedef :int,     :FT_F26Dot6

    ERROR_CODE = {
        0x00 => [ :Ok,                            'no error' ],
        0x01 => [ :Cannot_Open_Resource,          'cannot open resource' ],
        0x02 => [ :Unknown_File_Format,           'unknown file format' ],
        0x03 => [ :Invalid_File_Format,           'broken file' ],
        0x04 => [ :Invalid_Version,               'invalid FreeType version' ],
        0x05 => [ :Lower_Module_Version,          'module version is too low' ],
        0x06 => [ :Invalid_Argument,              'invalid argument' ],
        0x07 => [ :Unimplemented_Feature,         'unimplemented feature' ],
        0x08 => [ :Invalid_Table,                 'broken table' ],
        0x09 => [ :Invalid_Offset,                'broken offset within table' ],
        0x0A => [ :Array_Too_Large,               'array allocation size too large' ],
        0x0B => [ :Missing_Module,                'missing module' ],
        0x0C => [ :Missing_Property,              'missing property' ],
        0x10 => [ :Invalid_Glyph_Index,           'invalid glyph index' ],
        0x11 => [ :Invalid_Character_Code,        'invalid character code' ],
        0x12 => [ :Invalid_Glyph_Format,          'unsupported glyph image format' ],
        0x13 => [ :Cannot_Render_Glyph,           'cannot render this glyph format' ],
        0x14 => [ :Invalid_Outline,               'invalid outline' ],
        0x15 => [ :Invalid_Composite,             'invalid composite glyph' ],
        0x16 => [ :Too_Many_Hints,                'too many hints' ],
        0x17 => [ :Invalid_Pixel_Size,            'invalid pixel size' ],
        0x20 => [ :Invalid_Handle,                'invalid object handle' ],
        0x21 => [ :Invalid_Library_Handle,        'invalid library handle' ],
        0x22 => [ :Invalid_Driver_Handle,         'invalid module handle' ],
        0x23 => [ :Invalid_Face_Handle,           'invalid face handle' ],
        0x24 => [ :Invalid_Size_Handle,           'invalid size handle' ],
        0x25 => [ :Invalid_Slot_Handle,           'invalid glyph slot handle' ],
        0x26 => [ :Invalid_CharMap_Handle,        'invalid charmap handle' ],
        0x27 => [ :Invalid_Cache_Handle,          'invalid cache manager handle' ],
        0x28 => [ :Invalid_Stream_Handle,         'invalid stream handle' ],
        0x30 => [ :Too_Many_Drivers,              'too many modules' ],
        0x31 => [ :Too_Many_Extensions,           'too many extensions' ],
        0x40 => [ :Out_Of_Memory,                 'out of memory' ],
        0x41 => [ :Unlisted_Object,               'unlisted object' ],
        0x51 => [ :Cannot_Open_Stream,            'cannot open stream' ],
        0x52 => [ :Invalid_Stream_Seek,           'invalid stream seek' ],
        0x53 => [ :Invalid_Stream_Skip,           'invalid stream skip' ],
        0x54 => [ :Invalid_Stream_Read,           'invalid stream read' ],
        0x55 => [ :Invalid_Stream_Operation,      'invalid stream operation' ],
        0x56 => [ :Invalid_Frame_Operation,       'invalid frame operation' ],
        0x57 => [ :Nested_Frame_Access,           'nested frame access' ],
        0x58 => [ :Invalid_Frame_Read,            'invalid frame read' ],
        0x60 => [ :Raster_Uninitialized,          'raster uninitialized' ],
        0x61 => [ :Raster_Corrupted,              'raster corrupted' ],
        0x62 => [ :Raster_Overflow,               'raster overflow' ],
        0x63 => [ :Raster_Negative_Height,        'negative height while rastering' ],
        0x70 => [ :Too_Many_Caches,               'too many registered caches' ],
        0x80 => [ :Invalid_Opcode,                'invalid opcode' ],
        0x81 => [ :Too_Few_Arguments,             'too few arguments' ],
        0x82 => [ :Stack_Overflow,                'stack overflow' ],
        0x83 => [ :Code_Overflow,                 'code overflow' ],
        0x84 => [ :Bad_Argument,                  'bad argument' ],
        0x85 => [ :Divide_By_Zero,                'division by zero' ],
        0x86 => [ :Invalid_Reference,             'invalid reference' ],
        0x87 => [ :Debug_OpCode,                  'found debug opcode' ],
        0x88 => [ :ENDF_In_Exec_Stream,           'found ENDF opcode in execution stream' ],
        0x89 => [ :Nested_DEFS,                   'nested DEFS' ],
        0x8A => [ :Invalid_CodeRange,             'invalid code range' ],
        0x8B => [ :Execution_Too_Long,            'execution context too long' ],
        0x8C => [ :Too_Many_Function_Defs,        'too many function definitions' ],
        0x8D => [ :Too_Many_Instruction_Defs,     'too many instruction definitions' ],
        0x8E => [ :Table_Missing,                 'SFNT font table missing' ],
        0x8F => [ :Horiz_Header_Missing,          'horizontal header (hhea table missing' ],
        0x90 => [ :Locations_Missing,             'locations (loca table missing' ],
        0x91 => [ :Name_Table_Missing,            'name table missing' ],
        0x92 => [ :CMap_Table_Missing,            'character map (cmap table missing' ],
        0x93 => [ :Hmtx_Table_Missing,            'horizontal metrics (hmtx table missing' ],
        0x94 => [ :Post_Table_Missing,            'PostScript (post table missing' ],
        0x95 => [ :Invalid_Horiz_Metrics,         'invalid horizontal metrics' ],
        0x96 => [ :Invalid_CharMap_Format,        'invalid character map (cmap format' ],
        0x97 => [ :Invalid_PPem,                  'invalid ppem value' ],
        0x98 => [ :Invalid_Vert_Metrics,          'invalid vertical metrics' ],
        0x99 => [ :Could_Not_Find_Context,        'could not find context' ],
        0x9A => [ :Invalid_Post_Table_Format,     'invalid PostScript (post table format' ],
        0x9B => [ :Invalid_Post_Table,            'invalid PostScript (post table' ],
        0xA0 => [ :Syntax_Error,                  'opcode syntax error' ],
        0xA1 => [ :Stack_Underflow,               'argument stack underflow' ],
        0xA2 => [ :Ignore,                        'ignore' ],
        0xA3 => [ :No_Unicode_Glyph_Name,         'no Unicode glyph name found' ],
        0xB0 => [ :Missing_Startfont_Field,       '`STARTFONT` field missing' ],
        0xB1 => [ :Missing_Font_Field,            '`FONT` field missing' ],
        0xB2 => [ :Missing_Size_Field,            '`SIZE` field missing' ],
        0xB3 => [ :Missing_Fontboundingbox_Field, '`FONTBOUNDINGBOX` field missing' ],
        0xB4 => [ :Missing_Chars_Field,           '`CHARS` field missing' ],
        0xB5 => [ :Missing_Startchar_Field,       '`STARTCHAR` field missing' ],
        0xB6 => [ :Missing_Encoding_Field,        '`ENCODING` field missing' ],
        0xB7 => [ :Missing_Bbx_Field,             '`BBX` field missing' ],
        0xB8 => [ :Bbx_Too_Big,                   '`BBX` too big' ],
        0xB9 => [ :Corrupted_Font_Header,         'Font header corrupted or missing fields' ],
        0xBA => [ :Corrupted_Font_Glyphs,         'Font glyphs corrupted or missing fields' ]
    }

    def ft_function(method_name, *args)
      function_name = "FT_#{method_name}"
      attach_function function_name, args, :FT_Error
      (class << self; self end).send('define_method', method_name) do |*args2|
        LOGGER.debug method_name
        error = send(function_name, *args2)
        return if error == 0
        msg = "#{function_name} api returned error code 0x#{error.to_s(16)}"
        error_array = ERROR_CODE[error]
        msg += " #{error_array[0]} #{error_array[1].inspect}" if error_array
        raise FreeTypeError, msg
      end
    end

    def self.extended(c)
      c.extend FFI::Library
      instance_variables.each do |v|
        value = instance_variable_get(v)
        value = value.dup unless value.is_a?(Fixnum) || value.is_a?(Symbol)
        c.instance_variable_set(v, value)
      end
    end
  end

  extend LibBase
end