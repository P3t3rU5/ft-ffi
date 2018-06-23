require_relative '../enum/face_flag'

module FT
  # define FT_HAS_HORIZONTAL( face )( (face)->face_flags & FT_FACE_FLAG_HORIZONTAL )
  def FT_HAS_HORIZONTAL(face)
    face.face_flags & FaceFlag[:HORIZONTAL]
  end

  # define FT_HAS_VERTICAL( face )( (face)->face_flags & FT_FACE_FLAG_VERTICAL )
  def FT_HAS_VERTICAL(face)
    face.face_flags & FaceFlag[:VERTICAL]
  end

  # define FT_HAS_KERNING( face )( (face)->face_flags & FT_FACE_FLAG_KERNING )
  def FT_HAS_KERNING(face)
    face.face_flags & FaceFlag[:KERNING]
  end

  # define FT_IS_SCALABLE( face )( (face)->face_flags & FT_FACE_FLAG_SCALABLE )
  def FT_IS_SCALABLE(face)
    face.face_flags & FaceFlag[:SCALABLE]
  end

  # define FT_IS_SFNT( face )( (face)->face_flags & FT_FACE_FLAG_SFNT )
  def FT_IS_SFNT(face)
    face.face_flags & FaceFlag[:SFNT]
  end

  # define FT_IS_FIXED_WIDTH( face )( (face)->face_flags & FT_FACE_FLAG_FIXED_WIDTH )
  def FT_IS_FIXED_WIDTH(face)
    face.face_flags & FaceFlag[:FIXED_WIDTH]
  end

  # define FT_HAS_FIXED_SIZES( face )( (face)->face_flags & FT_FACE_FLAG_FIXED_SIZES )
  def FT_HAS_FIXED_SIZES(face)
    face.face_flags & FaceFlag[:FIXED_SIZES]
  end

  #define FT_HAS_FAST_GLYPHS( face ) 0 // Deprecated
  def FT_HAS_FAST_GLYPHS( face )
    0
  end

  # define FT_HAS_GLYPH_NAMES( face )( (face)->face_flags & FT_FACE_FLAG_GLYPH_NAMES )
  def FT_HAS_GLYPH_NAMES(face)
    face.face_flags & FaceFlag[:GLYPH_NAMES]
  end

  # define FT_HAS_MULTIPLE_MASTERS( face )( (face)->face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS )
  def FT_HAS_MULTIPLE_MASTERS(face)
    face.face_flags & FaceFlag[:MULTIPLE_MASTERS]
  end

  #define FT_IS_NAMED_INSTANCE( face ) ( (face)->face_index & 0x7FFF0000L )
  def FT_IS_NAMED_INSTANCE(face)
    face.face_index & 0x7FFF0000
  end

  # define FT_IS_VARIATION( face )( (face)->face_flags & FT_FACE_FLAG_VARIATION )
  def FT_IS_VARIATION(face)
    face.face_flags & FaceFlag[:VARIATION]
  end

  # define FT_IS_CID_KEYED( face )( (face)->face_flags & FT_FACE_FLAG_CID_KEYED )
  def FT_IS_CID_KEYED(face)
    face.face_flags & FaceFlag[:CID_KEYED]
  end

  # define FT_IS_TRICKY( face )( (face)->face_flags & FT_FACE_FLAG_TRICKY )
  def FT_IS_TRICKY(face)
    face.face_flags & FaceFlag[:TRICKY]
  end

  # define FT_HAS_COLOR( face )( (face)->face_flags & FT_FACE_FLAG_COLOR )
  def FT_HAS_COLOR(face)
    face.face_flags & FaceFlag[:COLOR]
  end
end