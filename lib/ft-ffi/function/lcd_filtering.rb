require 'ft-ffi/enum/lcd_filter'

module FT
  # LCD Filtering
  # http://freetype.sourceforge.net/freetype2/docs/reference/ft2-lcd_filtering.html

  # http://freetype.sourceforge.net/freetype2/docs/reference/ft2-lcd_filtering.html#FT_Library_SetLcdFilter
  # FT_Error FT_Library_SetLcdFilter( FT_Library    library, FT_LcdFilter  filter );
  ft_function 'Library_SetLcdFilter', LibraryRec.ptr(:in), LcdFilter

  # http://freetype.sourceforge.net/freetype2/docs/reference/ft2-lcd_filtering.html#FT_Library_SetLcdFilterWeights
  # FT_Error FT_Library_SetLcdFilterWeights( FT_Library      library, unsigned char  *weights );
  ft_function 'Library_SetLcdFilterWeights', LibraryRec.ptr(:in), :pointer
end