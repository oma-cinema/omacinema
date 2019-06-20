class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all         # GET /restaurants
  end

  def show
    @cinema = Cinema.find(params[:id])
    @reviews = Review.where(cinema_id: @cinema.id)  # GET /restaurants/:id
  end

  def new
    @cinema = Cinema.new      # GET /restaurants/new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    @cinema.save

    redirect_to cinema_path(@cinema)
  end

  def edit          # GET /restaurants/:id/edit
    @cinema = Cinema.find(params[:id])       # POST /restaurants
  end

  def update
    @cinema = Cinema.find(params[:id])
    @cinema.update(cinema_params)

    redirect_to cinema_path(@cinema)    # PATCH /restaurants/:id
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cinemas_path      # DELETE /restaurants/:id
  end

  private

  def cinema_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cinema).permit(:name, :address)
  end
end


