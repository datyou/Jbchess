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



