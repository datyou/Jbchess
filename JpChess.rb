#! ruby -Ku
#将棋の対戦と通信対戦実装までやりたい

#盤クラス
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

    def move(line, column, newline, newcolumn, array)
        array[newline.to_i-1][newcolumn.to_i-1] = array[line.to_i-1][column.to_i-1]
        array[line.to_i-1][column.to_i-1] = "□"
    end

end


allField = Field.new
#駒オブジェクトの生成と表示

allField.field[2][0] = "歩"
allField.field[2][1] = "歩"
allField.field[2][2] = "歩"
allField.field[2][3] = "歩"
allField.field[2][4] = "歩"
allField.field[2][5] = "歩"
allField.field[2][6] = "歩"
allField.field[2][7] = "歩"
allField.field[2][8] = "歩"
allField.field[1][1] = "角"
allField.field[1][7] = "飛"
allField.field[0][0] = "香"
allField.field[0][1] = "桂"
allField.field[0][2] = "銀"
allField.field[0][3] = "金"
allField.field[0][4] = "王"
allField.field[0][5] = "金"
allField.field[0][6] = "銀"
allField.field[0][7] = "桂"
allField.field[0][8] = "香"

allField.field[6][0] = "歩"
allField.field[6][1] = "歩"
allField.field[6][2] = "歩"
allField.field[6][3] = "歩"
allField.field[6][4] = "歩"
allField.field[6][5] = "歩"
allField.field[6][6] = "歩"
allField.field[6][7] = "歩"
allField.field[6][8] = "歩"
allField.field[7][1] = "飛"
allField.field[7][7] = "角"
allField.field[8][0] = "香"
allField.field[8][1] = "桂"
allField.field[8][2] = "銀"
allField.field[8][3] = "金"
allField.field[8][4] = "玉"
allField.field[8][5] = "金"
allField.field[8][6] = "銀"
allField.field[8][7] = "桂"
allField.field[8][8] = "香"


allField.print_field(allField.field)


#while true
    str = gets
    p str.split(//)
    allField.move(str[0],str[1],str[2],str[3],allField.field)
    allField.print_field(allField.field)