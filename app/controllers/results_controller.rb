class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # GET /results
  # GET /results.json
  def index
    @results = Result.page(params[:page])
    @sidetopics = Topic.order(created_at: :desc)
    @sideresults = Result.order(created_at: :desc)
  end

  # GET /results/1
  # GET /results/1.json
  def show
    @sidetopics = Topic.order(created_at: :desc)
    @sideresults = Result.order(created_at: :desc)
  end

  # GET /results/new
  def new
    @result = Result.new
    @sideresults = Result.order(created_at: :desc)
  end

  # GET /results/1/edit
  def edit
    @sideresults = Result.order(created_at: :desc)
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:time, :category, :team, :opponent, :score_first_t, :score_first_g, :score_first_pg, :score_first_dg, :score_second_t,
       :score_second_g, :score_second_pg, :score_second_dg, :opponent_score_first_t, :opponent_score_first_g, :opponent_score_first_pg,
       :opponent_score_first_dg, :opponent_score_second_t, :opponent_score_second_g, :opponent_score_second_pg, :opponent_score_second_dg,
       :ho, :rpr, :lpr, :rlo, :llo, :rfl, :lfl, :n08, :sh, :so, :rctb, :lctb, :rwtb, :lwtb, :fb, :place)
    end
end
