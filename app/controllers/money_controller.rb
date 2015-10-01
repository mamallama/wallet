class MoneyController < ApplicationController
  before_action :set_money, only: [:show, :edit, :update, :destroy]

  # GET /money

  def index
    @money = Money.all
    @balance = Money.balance
    @totalcash = Money.totalcash
  end

  def dash
    @money = Money.all
    @balance = Money.balance
    @totalcash = Money.totalcash
  end
  # GET /money/1
  def show
  end

  # GET /money/new
  def new
    @money = Money.new
  end

  # GET /money/1/edit
  def edit
  end

  # POST /money

  def create
    @money = Money.new(money_params)

    respond_to do |format|
      if @money.save
        redirect_to @money, notice: 'Money was successfully created.'
      else
        render :new
      end
    end
  end

  # PATCH/PUT /money/1
  def update
    respond_to do |format|
      if @money.update(money_params)
        redirect_to @money, notice: 'Money was successfully updated.'
      else
        render :edit
      end
    end
  end

  # DELETE /money/1
  def destroy
    @money.destroy
    respond_to do |format|
      redirect_to money_index_url, notice: 'Money was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money
      @money = Money.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def money_params
      params.require(:money).permit(:balance, :deposits, :withdrawals)
    end
end
