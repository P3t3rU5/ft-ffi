require 'ft-ffi/function/face'

module FT
  class Face
    attr_reader :library

    def initialize(lib, filepathname, face_index = 0)
      @library = lib #avoid gc of library

      @face = FaceRec.new
      FT.New_Face(@library.library, filepathname, face_index, @face)
      @finalizer = { :face => @face }

      ObjectSpace.define_finalizer(self, self.class.finalize(lib, @finalizer))
    end

    def self.finalize(lib, finalizer)
      proc do
        lib.synchronize do
          face = finalizer[:face]
          if face
            puts "releasing FT_Face #{face.to_ptr}"
            FT.Done_Face(face)
            finalizer[:face] = nil
          end
        end
      end
    end

    def self.to_code(char)
      char.is_a?(Integer) ? char : char.unpack('U').first
    end

    def char_index(char)
      code = self.class.to_code(char)
      index = FT.Get_Char_Index(@face, code)
      #raise FreeTypeError, "undefined character code: #{char.inspect} (0x#{code.to_s(16)})" if index == 0
      index = FT.Get_Char_Index(@face, 0x25A1) if index == 0
      index
    end

    def done
      self.class.finalize(@library, @finalizer).call
    end

    def each_char
      return enum_for(:each_char) unless block_given?

      p_gindex = FFI::MemoryPointer.new(:uint32)
      charcode = FT.Get_First_Char(@face, p_gindex)
      gindex = p_gindex.read_uint32
      while gindex != 0
        yield charcode, gindex
        charcode = FT.Get_Next_Char(@face, charcode, p_gindex)
        gindex = p_gindex.read_uint32
      end
    end

    def kerning(left_glyph, right_glyph, mode = :DEFAULT)
      v = FT::Vector.new
      FT.Get_Kerning(@face, left_glyph, right_glyph, KernMode[mode], v)
      [v.x / 64.0, v.y / 64.0]
    end

    def glyph_slot
      @face.glyph_slot
    end

    def has_kerning?
      (@face.face_flags & FT::FaceFlags[:KERNING]) != 0
    end

    def height
      @face.ascender/64.0
    end

    def load_char(char, *flags)
      char = self.class.to_code(char)
      return unless char
      flags = [:DEFAULT] if flags.size == 0
      flags = flags.reduce { |a, flag| a | LoadFlags[flag] }
      FT.Load_Char(@face, char, flags)
    end

    def load_glyph(index, *flags)
      flags = [:DEFAULT] if flags.size == 0
      flags = flags.map { |f| LoadFlags[f] }.reduce(&:|)
      FT.Load_Glyph(@face, index, flags)
    end

    def set_char_size(height, width = 0, hdpi = 96, vdpi = 96)
      FT.Set_Char_Size(@face, (width*64).to_i, (height*64).to_i, hdpi, vdpi)
    end

    # Glyph Variants
    # http://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html
    def get_chars_of_variant(variant_selector)
      FT.Face_GetCharsOfVariant(@face, variant_selector)
    end

    def get_char_variant_index(charcode, variant_selector)
      FT.Face_GetCharVariantIndex(@face, charcode, variant_selector)
    end

    def get_char_variant_is_default(charcode, variant_selector)
      FT.Face_GetCharVariantIsDefault(@face, charcode, variant_selector)
    end

    def get_variant_selectors
      FT.Face_GetVariantSelectors(@face)
    end

    def get_variants_of_char(charcode)
      FT.Face_GetVariantsOfChar(@face, charcode)
    end

    # def set_pixel_size(height, width = 0)
    #   FT.Set_Pixel_Sizes(@face, width, height)
    # end
  end
end