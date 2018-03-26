#! ruby -Ku
#将棋の対戦と通信対戦実装までやりたい

#盤クラス
class Field
    def initialize(turn)
    @field = Array.new(9){Array.new(9,"□")}
    @turn = turn
    end
    attr_accessor :field, :turn

#盤の表示
    def print_field(array)
        puts "持ち駒"
        for i in 0..8
            for j in 0..8
            print array[8-j][i]
            end
            puts
        end
        puts "持ち駒"
    end

#駒の移動
    def move(line, column, newline, newcolumn, array)
        #駒があるかのチェック
        if move_check(line, column, newline, newcolumn, array) == true
        #駒があるとき
        array[newline][newcolumn] = array[line][column]
        array[line][column] = "□"

        #手番の変化
        self.turn = self.turn+1
        else
        #駒がないとき
            puts "駒がない"
        end
    end

#駒の移動ができるか
    def move_check(line, column, newline, newcolumn, array)
        if array[line][column] == "□"
            return false
        else

            return true
        end
    end

#移動先に駒あるか
    def piece_check(array)

    end
end

#fiieldオブジェクト作成
allField = Field.new(0)

#駒オブジェクトの生成と表示
allField.field[0][2] = "歩"
allField.field[1][2] = "歩"
allField.field[2][2] = "歩"
allField.field[3][2] = "歩"
allField.field[4][2] = "歩"
allField.field[5][2] = "歩"
allField.field[6][2] = "歩"
allField.field[7][2] = "歩"
allField.field[8][2] = "歩"
allField.field[1][1] = "角"
allField.field[7][1] = "飛"
allField.field[0][0] = "香"
allField.field[1][0] = "桂"
allField.field[2][0] = "銀"
allField.field[3][0] = "金"
allField.field[4][0] = "王"
allField.field[5][0] = "金"
allField.field[6][0] = "銀"
allField.field[7][0] = "桂"
allField.field[8][0] = "香"

allField.field[0][6] = "歩"
allField.field[1][6] = "歩"
allField.field[2][6] = "歩"
allField.field[3][6] = "歩"
allField.field[4][6] = "歩"
allField.field[5][6] = "歩"
allField.field[6][6] = "歩"
allField.field[7][6] = "歩"
allField.field[8][6] = "歩"
allField.field[7][7] = "角"
allField.field[1][7] = "飛"
allField.field[0][8] = "香"
allField.field[1][8] = "桂"
allField.field[2][8] = "銀"
allField.field[3][8] = "金"
allField.field[4][8] = "玉"
allField.field[5][8] = "金"
allField.field[6][8] = "銀"
allField.field[7][8] = "桂"
allField.field[8][8] = "香"


allField.print_field(allField.field)


while true

    if allField.turn % 2 == 0
        puts "先手の番です"
        else
        puts "後手の番です"
    end

    str = gets
    p str.split(//)
    allField.move(str[0].to_i-1,str[1].to_i-1,str[2].to_i-1,str[3].to_i-1,allField.field)
    p allField.field[str[0].to_i-1][str[1].to_i-1]

    allField.print_field(allField.field)
end