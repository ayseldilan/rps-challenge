class Turn
  GAME_RULES = {
      rock: {rock: :draw, paper: :lose, scissors: :win},
      paper: {rock: :win, paper: :draw, scissors: :lose}, 
      scissors: {rock: :lose, paper: :win, scissors: :draw}
  }
  attr_reader :player_name, :player_shape, :opponent_shape
    
  def initialize(options)
    @player_name = options["player_name"]
    @player_shape = options["player_shape"]
    @opponent_shape = options["opponent_shape"]
  end

  def win?
    result == :win
  end

  def result
    return if @opponent_shape.nil?
    GAME_RULES[@player_shape][@opponent_shape]
  end
end
