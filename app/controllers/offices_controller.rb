class OfficesController < ApplicationController
#***might need new, create, edit, update, destroy
    def show
        @office = Office.find(params[:id])
    end
end
