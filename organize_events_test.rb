require 'minitest/autorun'
require_relative 'organize_events'

class TestOrganizeEvents < Minitest::Test
  def test_simple_events
    events = [
      {date: '2014-01-01', a: 5, b:1},
      {date: '2014-01-01', xyz: 11},
      {date: '2014-10-10', qbz: 5},
      {date: '2014-10-10', v: 4, q: 1, strpm: -99}
    ]

    organized_events = [
      {date: '2014-01-01', a: 5, b:1, xyz: 11 },
      {date: '2014-10-10', qbz: 5, v: 4, q: 1, strpm: -99},
    ]

    assert_equal organized_events, OrganizeEvents.new(events).organized
  end
end
