#! ruby -Ku
#将棋の対戦と通信対戦実装までやりたい


field = Array.new(9, Array.new(9) )
#盤の初期化
for i in 0..8
    for j in 0..8
    field[i][j] = "□"
    end
end
#盤の表示
for i in 0..8
    for j in 0..8
    print field[i][j]
    end
    puts
end


#駒の表示
class Piece
    def initialize(status, line, column)
        @status = status
        @line = line
        @column = column
    end
    attr_accessor :status, :line, :column
end


firstpawn1 = Piece.new("歩","1","3")
p firstpawn1.status
p firstpawn1.line
p firstpawn1.column






