class ReportsController < ApplicationController
    before_action :set_report ,only: [:destroy, :show]
    skip_before_action :authenticate_user!, only: [:create]
    def index
        @reports = Report.all
    end

    def show
        
    end

    def create
        @report = Report.new(report_params)
        if @report.save
        render :show, status: :created, location: @report
        else
        render json: @report.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @report.destroy 
        head :ok
    end

    private

    def set_report
        @report = Report.find_by_id(params[:id])
        if @report.nil? 
        render json: { message: 'Not found'}, status: :not_found
      end
    end

    def report_params
      params.permit(:name, :phone, :email, :description)
    end
end
