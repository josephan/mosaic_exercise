class OrganizeEvents
  attr_reader :organized

  def initialize(events)
    @events = events
    @organized = organize_events
  end

  private

  def organize_events
    @events.group_by { |event| event[:date] }
           .values.map { |array| array.reduce({}, :merge) }
  end
end
