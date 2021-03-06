class StudentsController < ApplicationController
  before_filter :save_and_load_spreadsheet, :only => :import
  def index
    @students = Student.all
    @account = current_account
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    redirect_to students_path
  end
end
