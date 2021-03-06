class BuildingsController < ApplicationController
    #building need index, show, edit, update
    before_action :find_building, only: [:show, :edit, :update]

    def index
        @buildings = Building.all
    end

    def show
    end

    def edit
    end

    def update
        if @building.update(building_params(:name, :country, :address, :rent_per_floor, :number_of_floors))
            redirect_to building_path(@building)
        else
            flash[:errors] = @building.errors.full_messages
            redirect_to edit_building_path
        end
    end

    private
    def building_params(*args)
        params.require(:building).permit(*args)
    end

    def find_building
        @building = Building.find(params[:id])
    end
end