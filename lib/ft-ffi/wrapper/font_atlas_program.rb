module RWT
  class FontAtlasProgram
    include ShaderProgram

    VERTEX_SHADER_SRC = <<-END
      #version 130

      uniform mat4 mvp;
      in vec2 coord;
      in vec2 texCoord;
      out vec2 vsTexCoord;

      void main()
      {
          gl_Position = vec4(coord, 0.0, 1.0) * mvp;
          vsTexCoord = texCoord;
      }
    END

    FRAGMENT_SHADER_SRC = <<-END
      #version 130

      uniform sampler2D fontTexId;
      in vec2 vsTexCoord;
      out vec4 fsColor;

      void main()
      {
        float c = texture2D(fontTexId, vsTexCoord).r;
        fsColor = vec4(c, 0.0, 0.0, c);
      }
    END

    class Vertex < FFI::Struct
      layout :x,  :float,
             :y,  :float,
             :tx, :float,
             :ty, :float
    end

    class Quad < FFI::Struct
      layout :vertices, [Vertex, 4]
    end

    #vec2
    attrib :coord, :Pointer, 2, GL::FLOAT, false, Vertex.size, 0

    #vec2
    attrib :texCoord, :Pointer, 2, GL::FLOAT, false, Vertex.size, Vertex.offset_of(:tx)

    #sampler2D
    uniform :fontTexId, '1i'

    matrix :mvp, '4fv'

    def initialize(handle)
      super(handle, VERTEX_SHADER_SRC, FRAGMENT_SHADER_SRC)
    end

    def paint(length)
      vao_bind do
        if length > 1
          first, count = 2.times.map { FFI::MemoryPointer.new(:int, length) }
          first.write_array_of_int(length.times.map { |i| 4 * i })
          count.write_array_of_int([4] * length)
          handle.glMultiDrawArrays(Roglew::GL::TRIANGLE_STRIP, first, count, length)
        else
          handle.glDrawArrays(Roglew::GL::TRIANGLE_STRIP, 0, 4)
        end
      end
    end
  end
end