
require_relative 'game'

describe Game do
  let(:game) { Game.new("candy") }

  it "returns whether or not you guessed the correct letter" do
    expect(game.guesses("s")).to eq "Guess a letter"
  end

  it "returns that you already guessed the same letter" do
    expect(game.current)guess("s")).to eq "You already guessed this"
  end

  it "let you know if you guessed the word correctly" do
    expect(game.secret_word("apple")).to eq "WOWZA! You guessed the word!"
  end

end