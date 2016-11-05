require 'ft-ffi/struct/memory_rec'

module FT
  # void FT_GlyphLoader_Add ( FT_GlyphLoader  loader );
  attach_function 'GlyphLoader_Add', 'FT_GlyphLoader_Add', [:pointer], :void

  # FT_Error FT_GlyphLoader_CheckPoints(
  #   FT_GlyphLoader  loader,
  #   FT_UInt         n_points,
  #   FT_UInt         n_contours )
  ft_function 'GlyphLoader_CheckPoints', :pointer, :FT_UInt, :FT_UInt

  # FT_GlyphLoader_CheckSubGlyphs
  # FT_Error FT_GlyphLoader_CheckSubGlyphs( FT_GlyphLoader  loader, FT_UInt  n_subs );
  ft_function 'GlyphLoader_CheckSubGlyphs', :pointer, :FT_UInt

  # FT_Error FT_GlyphLoader_CopyPoints( FT_GlyphLoader  target, FT_GlyphLoader  source );
  ft_function 'GlyphLoader_CopyPoints', :pointer, :pointer

  # FT_Error FT_GlyphLoader_CreateExtra( FT_GlyphLoader  loader );
  ft_function 'GlyphLoader_CreateExtra', :pointer

  # void FT_GlyphLoader_Done( FT_GlyphLoader  loader );
  attach_function 'GlyphLoader_Done', 'FT_GlyphLoader_Done', [:pointer], :void

  # FT_Error FT_GlyphLoader_New( FT_Memory memory, FT_GlyphLoader  *aloader );
  ft_function 'GlyphLoader_New', MemoryRec.ptr, :pointer

  # void FT_GlyphLoader_Prepare( FT_GlyphLoader  loader )
  attach_function 'GlyphLoader_Prepare', 'FT_GlyphLoader_Prepare', [:pointer], :void

  # void FT_GlyphLoader_Reset( FT_GlyphLoader  loader );
  attach_function 'GlyphLoader_Reset', 'FT_GlyphLoader_Reset', [:pointer], :void

  # void FT_GlyphLoader_Rewind( FT_GlyphLoader  loader );
  attach_function 'GlyphLoader_Rewind', 'FT_GlyphLoader_Rewind', [:pointer], :void
end