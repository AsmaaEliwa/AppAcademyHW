class Board
  attr_accessor :cups

  def initialize(name1, name2)
    # @stones=stones
    @cups=Array.new(14) {Array.new}
    @cups[0..5].map { |ele| 4.times {ele<<:stone} }
    @cups[7..12].map {|ele| 4.times {ele<<:stone} }

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    valid_cups=@cups[0..5]+@cups[7..12]
    if !valid_cups.include?(@cups[start_pos])
        raise 'Invalid starting cup'
    elsif valid_cups.include?(@cups[start_pos])&&@cups[start_pos].empty?
        raise 'Starting cup is empty'
    end
    return true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
       selected_stone= @cups[start_pos].shift
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end