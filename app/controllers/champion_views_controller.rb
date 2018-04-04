class ChampionViewsController < ApplicationController
  before_action :set_champion_view, only: [:show, :edit, :update, :destroy]

  # GET /champion_views
  # GET /champion_views.json
  def index
    @champion_views = ChampionView.all
  end

  # GET /champion_views/1
  # GET /champion_views/1.json
  def show
  end

  # GET /champion_views/new
  def new
    @champion_view = ChampionView.new
  end

  # GET /champion_views/1/edit
  def edit
  end

  # POST /champion_views
  # POST /champion_views.json
  def create
    @champion_view = ChampionView.new(champion_view_params)

    respond_to do |format|
      if @champion_view.save
        format.html { redirect_to @champion_view, notice: 'Champion view was successfully created.' }
        format.json { render :show, status: :created, location: @champion_view }
      else
        format.html { render :new }
        format.json { render json: @champion_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /champion_views/1
  # PATCH/PUT /champion_views/1.json
  def update
    respond_to do |format|
      if @champion_view.update(champion_view_params)
        format.html { redirect_to @champion_view, notice: 'Champion view was successfully updated.' }
        format.json { render :show, status: :ok, location: @champion_view }
      else
        format.html { render :edit }
        format.json { render json: @champion_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /champion_views/1
  # DELETE /champion_views/1.json
  def destroy
    @champion_view.destroy
    respond_to do |format|
      format.html { redirect_to champion_views_url, notice: 'Champion view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion_view
      @champion_view = ChampionView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champion_view_params
      params.require(:champion_view).permit(:slide)
    end
end
