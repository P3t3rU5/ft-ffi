require_relative 'list_node_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_ListRec
  class ListRec < FFIAdditions::Struct
    layout head: ListNodeRec,
           tail: ListNodeRec

    def to_s
      inspect
    end

    #define FT_IS_EMPTY( list )  ( (list).head == 0 )
    def empty?
      self[:head] == 0
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end