require_relative 'hangman'


describe TodoList do
  let(:secret_word) { WordGame.new("unkrich") }

  it "checks if there is a multiple letter" do
    secret_word.guess_letter_multiple("u")
    expect(guess_letters.include?.to eq (false)
  end

  it "checks if the letter is in the word then returns the array showing the blank spots and the right letter" do
    secret_word.guess_letter_check("u")
    expect(spot_change).to eq (0)
  end

  it "deletes an item" do
    secret_word.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "checks if word is right" do
    expect(secret_word).to eq ("unkich")
  end
end