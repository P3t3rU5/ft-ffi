module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_FSTYPE_XXX
  FSType = enum Long, :fstype, [
      :INSTALLABLE_EMBEDDING,         0x0000,
      :RESTRICTED_LICENSE_EMBEDDING,  0x0002,
      :PREVIEW_AND_PRINT_EMBEDDING,   0x0004,
      :EDITABLE_EMBEDDING,            0x0008,
      :NO_SUBSETTING,                 0x0100,
      :BITMAP_EMBEDDING_ONLY,         0x0200,
  ]

  define_prefix(:FSTYPE, FSType)
end
