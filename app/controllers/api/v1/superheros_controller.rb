class Api::V1::SuperherosController < ApiController
  before_action :set_superhero, only: %i[ show edit update destroy ]

  # GET /superheros or /superheros.json
  def index
    @superheros = Superhero.all.order(created_at: :desc)
    render json: @superheros
  end

  # GET /superheros/1 or /superheros/1.json
  def show
    render json: @superhero
  end

  # GET /superheros/new
  def new
    @superhero = Superhero.new
  end

  # GET /superheros/1/edit
  def edit
  end

  # POST /superheros or /superheros.json
  def create
    @superhero = Superhero.new(superhero_params)
      if @superhero.save
        render json: @superhero, status: :created, location: @superhero
      else
        render json: @superhero.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /superheros/1 or /superheros/1.json
  def update
    if @superhero.update(superhero_params)
      render json: @superhero
    else
      render json: @superhero.errors, status: :unprocessable_entity
      end
  end

  # DELETE /superheros/1 or /superheros/1.json
  def destroy
    @superhero.destroy
    if @superhero.destroy
      head :no_content
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superhero
      @superhero = Superhero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def superhero_params
      params.require(:superhero).permit(:name, :power, :prefix, :suffix, :descriptor)
    end
end
