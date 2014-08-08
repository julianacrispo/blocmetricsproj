class Event < ActiveRecord::Base
  # attr_accessor :who, :what, :where


  def grouped_created_at
    @created_ats = @events.group_by { |c| c.created_at.to_date }
  end

  def group_by_criteria
    created_at.to_date.to_s(:db)
  end
end
