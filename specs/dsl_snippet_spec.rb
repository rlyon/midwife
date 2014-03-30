require File.dirname(__FILE__) + '/spec_helper'

describe "Midwife::DSL::Snippet" do
  it "must create a snippet" do
    file = "./specs/files/configs/snippets/noop.erb"
    snippet = Midwife::DSL::Snippet.new(file)
    snippet.name.must_equal "noop"
    snippet.content.must_equal "# Default Snippet\n"
  end
end