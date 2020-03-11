require_relative "test_helper"

describe "get_location" do
  it "can find a location" do

    VCR.use_cassette("location_find") do
      location = "Great Pyramid of Giza"
      response = get_location(location)

      expect(response[location]).wont_be_nil
      expect(response[location][:lat]).must_equal "29.9791264"
      expect(response[location][:lon]).must_equal "31.1342383751015"
    end
    
  end
end