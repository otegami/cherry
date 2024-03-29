class Gate
  STATION = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # Gateオブジェクトの作成
  # ==== 引数
  #  * +name+ - 駅名
  def initialize(name)
    @name = name
  end

  # 改札機を通って駅に入場する
  # ==== 引数
  #  * +ticket+ 切符
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 改札機を通って駅から出場する
  # === 引数
  #  * +ticket+ - 切符
  # === 戻り値
  #  * +boolean+ - 運賃が足りていれば +true+, 不足していれば +false+ 
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATION.index(ticket.stamped_at)
    to = STATION.index(@name)
    distance = (to - from).abs
    FARES[distance - 1]
  end
end
