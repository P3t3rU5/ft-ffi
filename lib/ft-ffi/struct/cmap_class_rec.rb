require_relative 'memory_rec'

module FT

  CMap_InitFunc = callback 'CMap_InitFunc', [CMapRec, :FT_Pointer], :FT_Error
  CMap_DoneFunc = callback 'CMap_DoneFunc', [CMapRec], :void
  CMap_CharIndexFunc = callback 'CMap_CharIndexFunc', [CMapRec, :FT_UInt32], :FT_UInt
  CMap_CharNextFunc = callback 'CMap_CharNextFunc', [CMapRec, :pointer], :FT_UInt

  CMap_CharVarIndexFunc = callback 'CMap_CharVarIndexFunc', [CMapRec, CMapRec, :FT_UInt32, :FT_UInt32], :FT_UInt
  CMap_CharVarIsDefaultFunc = callback 'CMap_CharVarIsDefaultFunc', [CMapRec, :FT_UInt32, :FT_UInt32], :FT_Bool
  CMap_VariantListFunc = callback 'CMap_VariantListFunc', [CMapRec, MemoryRec], :pointer
  CMap_CharVariantListFunc = callback 'CMap_CharVariantListFunc', [CMapRec, MemoryRec, :FT_UInt32], :pointer
  CMap_VariantCharListFunc = callback 'CMap_VariantCharListFunc', [CMapRec, MemoryRec, :FT_UInt32], :pointer

  class CMap_ClassRec < FFIAdditions::Struct
    layout size:                :FT_ULong,
           init:            CMap_InitFunc,
           done:            CMap_DoneFunc,
           char_index: CMap_CharIndexFunc,
           char_next:   CMap_CharNextFunc,

           # Subsequent entries are special ones for format 14 -- the variant
           # selector subtable which behaves like no other

           char_var_index:       CMap_CharVarIndexFunc,
           char_var_default: CMap_CharVarIsDefaultFunc,
           variant_list:          CMap_VariantListFunc,
           charvariant_list:  CMap_CharVariantListFunc,
           variantchar_list:  CMap_VariantCharListFunc
  end
end