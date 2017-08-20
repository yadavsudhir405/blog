RSpec.describe "around example" do

  let(:modified_foo) {"modified_fooo"}
  around(:example) do |example|
    puts "around block before #{example.metadata[:description]} shared value is #{example.metadata[:foo]}"
    example.metadata[:foo] = modified_foo
    example.run
    puts "around block after #{example.metadata[:description]}"
  end

  it "example1",:foo=>"foo1" do |example|
    puts "ran example1"
    expect(example.metadata[:foo]).to eq(modified_foo)

  end
  it "example2" ,:foo=>"foo2"do |example|
    puts "ran example2"
    expect(example.metadata[:foo]).to eq(modified_foo)
  end

end