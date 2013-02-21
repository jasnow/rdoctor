require_relative '../../test_helper'

describe Rdoctor do
  it "must be defined" do
    Rdoctor::VERSION.wont_be_nil
  end
end
