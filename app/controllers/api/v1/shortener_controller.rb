class Api::V1::ShortenerController < ApplicationController

    def index 
        @link = Shortener.all 
        render json: @link
    end

    def create
        @link = Shortener.new(shortener_params) 
        if @link.save 
            render json: @link, status: :created 
        else 
            render json: @link.errors.full_message, status: :unprocessable_entity
        end
    end 

    def new 
    end

    def show 
        @link = Shortener.find_by(Code: params[:Code])
        if params[:Code] == 'api/auth/confirmation'
            redirect_to 'http://localhost:3000/sucessful_confirmation'
        else
            redirect_to "https://" + @link.BaseUrl, allow_other_host: true
        end

    end 

    def destroy 
        @link = Shortener.find_by(Code: params[:Code])
        @link.destroy 
    end

    private 

    def shortener_params 
        params.permit(:BaseUrl, :ShortenedUrl)
    end
end
