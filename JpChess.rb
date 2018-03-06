#! ruby -Ku
#将棋の対戦と通信対戦実装までやりたい


field = Array.new(9){Array.new(9)}
#盤の初期化
for i in 0..8
    for j in 0..8
    field[i][j] = "□"
    end
end

#盤の表示
def print_field(array)
    for i in 0..8
        for j in 0..8
        print array[i][8-j]
        end
        puts
    end
end


#駒の表示
class Piece
    #駒の定数
    def initialize(status, line, column)
        @status = status    #駒の種類
        @line = line        #駒の行の位置
        @column = column    #駒の列の位置
    end
    attr_accessor :status, :line, :column
    #駒の移動
    def move
    end
    #駒の表示
    def display(array)
        array[self.column.to_i-1][self.line.to_i-1] = self.status
    end
end


firstpawn1 = Piece.new("歩","1","3")
firstpawn2 = Piece.new("歩","2","3")
firstpawn3 = Piece.new("歩","3","3")
firstpawn4 = Piece.new("歩","4","3")
firstpawn5 = Piece.new("歩","5","3")
firstpawn6 = Piece.new("歩","6","3")
firstpawn7 = Piece.new("歩","7","3")
firstpawn8 = Piece.new("歩","8","3")
firstpawn9 = Piece.new("歩","9","3")
firstking = Piece.new("王","5","1")
firstgold1 = Piece.new("金","4","1")
firstgold2 = Piece.new("金","6","1")
firstsilver1 = Piece.new("銀","3","1")
firstsilver2 = Piece.new("銀","7","1")
firstknight1 = Piece.new("桂","2","1")
firstknight2 = Piece.new("桂","8","1")
firstlance1 = Piece.new("香","1","1")
firstlance2 = Piece.new("香","9","1")
firstrook = Piece.new("飛","8","2")
firstbishiop = Piece.new("角","2","2")

firstpawn1.display(field)
firstpawn2.display(field)
firstpawn3.display(field)
firstpawn4.display(field)
firstpawn5.display(field)
firstpawn6.display(field)
firstpawn7.display(field)
firstpawn8.display(field)
firstpawn9.display(field)
firstking.display(field)
firstgold1.display(field)
firstgold2.display(field)
firstsilver1.display(field)
firstsilver2.display(field)
firstknight1.display(field)
firstknight2.display(field)
firstlance1.display(field)
firstlance2.display(field)
firstrook.display(field)
firstbishiop.display(field)

secondpawn1 = Piece.new("歩","1","7")
secondpawn2 = Piece.new("歩","2","7")
secondpawn3 = Piece.new("歩","3","7")
secondpawn4 = Piece.new("歩","4","7")
secondpawn5 = Piece.new("歩","5","7")
secondpawn6 = Piece.new("歩","6","7")
secondpawn7 = Piece.new("歩","7","7")
secondpawn8 = Piece.new("歩","8","7")
secondpawn9 = Piece.new("歩","9","7")
secondking = Piece.new("玉","5","9")
secondgold1 = Piece.new("金","4","9")
secondgold2 = Piece.new("金","6","9")
secondsilver1 = Piece.new("銀","3","9")
secondsilver2 = Piece.new("銀","7","9")
secondknight1 = Piece.new("桂","2","9")
secondknight2 = Piece.new("桂","8","9")
secondlance1 = Piece.new("香","1","9")
secondlance2 = Piece.new("香","9","9")
secondrook = Piece.new("飛","2","8")
secondbishiop = Piece.new("角","8","8")

secondpawn1.display(field)
secondpawn2.display(field)
secondpawn3.display(field)
secondpawn4.display(field)
secondpawn5.display(field)
secondpawn6.display(field)
secondpawn7.display(field)
secondpawn8.display(field)
secondpawn9.display(field)
secondking.display(field)
secondgold1.display(field)
secondgold2.display(field)
secondsilver1.display(field)
secondsilver2.display(field)
secondknight1.display(field)
secondknight2.display(field)
secondlance1.display(field)
secondlance2.display(field)
secondrook.display(field)
secondbishiop.display(field)

print_field(field)