RSpec.describe WordList do
  it "filters out short words" do 
    dict = -> {["no", "everything"]}
    word_list = WordList.new(dict)
    expect(word_list.get_word).to eq("everything")
  end
end
