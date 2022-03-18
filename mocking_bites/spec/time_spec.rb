require 'time'

RSpec.describe TimeError do
  it "time difference" do
  fake_requester = double :requester
  expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"92.2.118.81","datetime":"2022-03-15T10:15:34.358037+00:00","day_of_week":2,"day_of_year":74,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647339334,"utc_datetime":"2022-03-15T10:15:34.358037+00:00","utc_offset":"+00:00","week_number":11}')
  time = Time.new(2022, 3, 15, 10, 15, 34)
  difference = TimeError.new(fake_requester)
  expect(difference.error(time)).to eq 0.358037
end
end
