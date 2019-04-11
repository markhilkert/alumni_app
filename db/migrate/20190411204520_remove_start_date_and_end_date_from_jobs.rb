class RemoveStartDateAndEndDateFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :start_date, :date
    remove_column :jobs, :end_date, :date



  end
end
