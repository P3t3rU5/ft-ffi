require_relative '../struct/image/vector'
require_relative '../struct/matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Angle
  typedef :FT_Fixed, :FT_Angle # 16.16 fixed-point value expressed in degrees

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_ANGLE_PI
  FT_ANGLE_PI  = 180 << 16
  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_ANGLE_2PI
  FT_ANGLE_2PI = FT_ANGLE_PI * 2
  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_ANGLE_PI2
  FT_ANGLE_PI2 = FT_ANGLE_PI / 2
  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_ANGLE_PI4
  FT_ANGLE_PI4 = FT_ANGLE_PI / 4

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_MulDiv
  def self.MulDiv(a, b, c); end
  # FT_Long FT_MulDiv(FT_Long  a, FT_Long  b, FT_Long  c )
  attach_function 'MulDiv', 'FT_MulDiv', [:FT_Long, :FT_Long, :FT_Long], :FT_Long

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_MulFix
  def self.MulFix(a, b); end
  # FT_Long FT_MulFix( FT_Long  a, FT_Long  b )
  attach_function 'MulFix', 'FT_MulFix', [:FT_Long, :FT_Long], :FT_Long

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_DivFix
  def self.DivFix(a, b); end
  # FT_Long FT_DivFix( FT_Long  a, FT_Long  b )
  attach_function 'DivFix', 'FT_DivFix', [:FT_Long, :FT_Long], :FT_Long

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_RoundFix
  def self.RoundFix(a); end
  # FT_Fixed FT_RoundFix( FT_Fixed  a )
  attach_function 'RoundFix', 'FT_RoundFix', [:FT_Fixed], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_CeilFix
  def self.CeilFix(a); end
  # FT_Fixed FT_CeilFix( FT_Fixed  a )
  attach_function 'CeilFix', 'FT_CeilFix', [:FT_Fixed], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_FloorFix
  def self.FloorFix(a); end
  # FT_Fixed FT_FloorFix( FT_Fixed  a )
  attach_function 'FloorFix', 'FT_FloorFix', [:FT_Fixed], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Vector_Transform
  def self.Vector_Transform(vec, matrix); end
  # void FT_Vector_Transform(FT_Vector* vec, const FT_Matrix*  matrix )
  attach_function 'Vector_Transform', 'FT_Vector_Transform', [Vector.by_ref, Matrix.by_ref], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Matrix_Multiply
  def self.Matrix_Multiply(a, b); end
  # void  FT_Matrix_Multiply(const FT_Matrix*  a,  FT_Matrix*        b )
  attach_function 'Matrix_Multiply', 'FT_Matrix_Multiply', [Matrix.by_ref, Matrix.by_ref], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Matrix_Invert
  def self.Matrix_Invert(matrix); end
  # FT_ERROR FT_Matrix_Invert( FT_Matrix*  matrix )
  ft_function 'Matrix_Invert', Matrix.by_ref

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Sin
  def self.Sin(angle); end
  # FT_Fixed FT_Sin( FT_Angle  angle )
  attach_function 'Sin', 'FT_Sin', [:FT_Angle], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Cos
  def self.Cos(angle); end
  # FT_Fixed FT_Cos( FT_Angle  angle )
  attach_function 'Cos', 'FT_Cos', [:FT_Angle], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Tan
  def self.Tan(angle); end
  # FT_Fixed FT_Tan( FT_Angle  angle )
  attach_function 'Tan', 'FT_Tan', [:FT_Angle], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Atan2
  def self.Atan2(x, y); end
  # FT_Angle FT_Atan2( FT_Fixed  x, FT_Fixed  y )
  attach_function 'Atan2', 'FT_Atan2', [:FT_Fixed, :FT_Fixed], :FT_Angle

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Angle_Diff
  def self.Angle_Diff(angle1, angle2); end
  # FT_Angle FT_Angle_Diff( FT_Angle  angle1, FT_Angle  angle2 )
  attach_function 'Angle_Diff', 'FT_Angle_Diff', [:FT_Angle, :FT_Angle], :FT_Angle

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Angle_Diff
  def self.Vector_Unit(vec, angle); end
  # void FT_Vector_Unit( FT_Vector*  vec, FT_Angle angle )
  attach_function 'Vector_Unit', 'FT_Vector_Unit', [Vector.by_ref, :FT_Angle], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Vector_Rotate
  def self.Vector_Rotate(vec, angle); end
  # void FT_Vector_Rotate( FT_Vector*  vec, FT_Angle angle )
  attach_function 'Vector_Rotate', 'FT_Vector_Rotate', [Vector.by_ref, :FT_Angle], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Vector_Length
  def self.Vector_Length(vec); end
  # FT_Fixed FT_Vector_Length( FT_Vector*  vec )
  attach_function 'Vector_Length', 'FT_Vector_Length', [Vector.by_ref], :FT_Fixed

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Vector_Polarize
  def self.Vector_Polarize(vec, length, angle); end
  # void FT_Vector_Polarize( FT_Vector*  vec, FT_Fixed   *length, FT_Angle   *angle )
  attach_function 'Vector_Polarize', 'FT_Vector_Polarize', [Vector.by_ref, :FT_Fixed, :FT_Angle], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-computations.html#FT_Vector_From_Polar
  def self.Vector_From_Polar(vec, length, angle); end
  # void FT_Vector_From_Polar(FT_Vector*  vec, FT_Fixed    length,  FT_Angle    angle )
  attach_function 'Vector_From_Polar', 'FT_Vector_From_Polar', [Vector.by_ref, :FT_Fixed, :FT_Angle], :void
end