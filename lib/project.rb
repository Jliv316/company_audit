require 'date'
class Project
    attr_reader :id,
                :name,
                :start_date,
                :end_date

    def initialize(project_id, name, start_date, end_date)
        @id = project_id.to_i
        @name = name
        @start_date = format_date(start_date)
        @end_date = format_date(end_date)
    end

    def format_date(date)
        da = date.split('-')
        formatted_date = Date.new(da[0].to_i, da[1].to_i, da[2].to_i)
    end
end