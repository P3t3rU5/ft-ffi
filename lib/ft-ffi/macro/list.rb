require_relative '../struct/list/rec'

module FT
  #define FT_IS_EMPTY( list )  ( (list).head == 0 )
  def IS_EMPTY( list )
    list.head == 0
  end
end