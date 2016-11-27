class InvoiceController < ApplicationController
  def index
    @jobs = Job.all
    @time_entries = TimeEntry.all
  end

  def create
    render :create
  end
end
