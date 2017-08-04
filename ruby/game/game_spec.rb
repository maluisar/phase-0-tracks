require_relative 'game'

describe Game do
  let (:game) {Game.new("hello")}

  it "Check if letter input is in the word" do
    expect(game.letter_check("o")).to eq true
  end

  it "Substitue _ from array for right letter" do
    expect(game.substitute_letter("l")).to eq ["_","_","l","l","_"]
  end

end


