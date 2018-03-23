class SemestersController < ApplicationController
    def new

    end

    def create
        render plain: params[:semester].inspect
    end

end
