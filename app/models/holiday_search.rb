class HolidaySearch
  attr_reader :dateTo_from, :dateFrom_to
  
  def initialize(params)
    params ||= {}
    @dateTo_from = parsed_date(params[:dateTo_from], 7.days.ago.to_date.to_s)
    @dateFrom_to = parsed_date(params[:dateFrom_to], Date.today.to_s)
  end
  
  def scope
    Holiday.where('dateTo_from BETWEEN ? AND ?', @dateTo_from, @dateFrom_to)
  end
  
  private
  
  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end
  
end