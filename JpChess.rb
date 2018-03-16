#! ruby -Ku
#将棋の対戦と通信対戦実装までやりたい


class Field
    def initialize
    @field = Array.new(9){Array.new(9,"□")}
    end
    attr_accessor :field

    #盤の表示
    def print_field(array)
        for i in 0..8
            for j in 0..8
            print array[i][8-j]
            end
            puts
        end
    end

end
#駒のクラス
class Piece
    #駒の定数
    def initialize(status, line, column)
        @status = status    #駒の種類
        @line = line        #駒の行の位置
        @column = column    #駒の列の位置
    end
    attr_accessor :status, :line, :column
    #駒の移動
    def move(line, column, status)

    end
    #駒の表示
    def display(array)
        array[self.column.to_i-1][self.line.to_i-1] = self.status
    end
end

allField = Field.new
#駒オブジェクトの生成と表示
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




firstpawn1.display(allField.field)
firstpawn2.display(allField.field)
firstpawn3.display(allField.field)
firstpawn4.display(allField.field)
firstpawn5.display(allField.field)
firstpawn6.display(allField.field)
firstpawn7.display(allField.field)
firstpawn8.display(allField.field)
firstpawn9.display(allField.field)
firstking.display(allField.field)
firstgold1.display(allField.field)
firstgold2.display(allField.field)
firstsilver1.display(allField.field)
firstsilver2.display(allField.field)
firstknight1.display(allField.field)
firstknight2.display(allField.field)
firstlance1.display(allField.field)
firstlance2.display(allField.field)
firstrook.display(allField.field)

firstbishiop.display(allField.field)
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

secondpawn4.display(allField.field)
secondpawn1.display(allField.field)
secondpawn2.display(allField.field)
secondpawn3.display(allField.field)
secondpawn5.display(allField.field)
secondpawn6.display(allField.field)
secondpawn7.display(allField.field)
secondpawn8.display(allField.field)
secondpawn9.display(allField.field)
secondking.display(allField.field)
secondgold1.display(allField.field)
secondgold2.display(allField.field)
secondsilver1.display(allField.field)
secondsilver2.display(allField.field)
secondknight1.display(allField.field)
secondknight2.display(allField.field)
secondlance1.display(allField.field)
secondlance2.display(allField.field)
secondrook.display(allField.field)
secondbishiop.display(allField.field)


allField.print_field(allField.field)


#while str = gets
