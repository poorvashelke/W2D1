require_relative 'board.rb'
require 'colorize'
require_relative 'cursor.rb'

class Display

  attr_reader :board, :cursor

  def initialize
    @board = Board.new
    @cursor = Cursor.new([0,0], @board)
  end

  def render
    # puts "------------------------------"
    8.times do |i|
      result = ''
      board.rows[i].each_with_index do |ele, j|
        if i.even?
          if j.even?
            if cursor.cursor_pos == [i,j]
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :yellow)
            else
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :black)
            end
          else
            if cursor.cursor_pos == [i,j]
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :yellow)
            else
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :white)
            end
          end
        else
          if j.odd?
            if cursor.cursor_pos == [i,j]
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :yellow)
            else
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :black)
            end
          else
            if cursor.cursor_pos == [i,j]
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :yellow)
            else
              result += " #{ele.color[0]} ".colorize(:color => :blue, :background => :white)
            end
          end
        end
      end
      puts result
    end
  end

end

display = Display.new


while true 
  display.render
  begin
    display.cursor.get_input
  rescue OffBoardError
    puts 'Error'
    retry
  end
  system('clear')
  # p display.cursor.cursor_pos
end
