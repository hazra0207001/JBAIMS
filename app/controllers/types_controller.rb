class TypesController< ApplicationController
  before_action :set_type, only: [:edit,:update, :show, :destroy]
  def index
    @types =Type.all
  end
  def new
    @type =Type.new
  end
  def create
    @product =Type.new(type_params)

    if @product.save
      redirect_to types_path, notice: " Your Product #{@tpye.name} Created successfully"
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @type.update(type_params)
      redirect_to types_path, notice: " Your Product #{@type.name} updated successfully"
    else
      render :edit
    end
  end
  def show
  end

  def destroy
    if @type.destroy
      redirect_to types_path, notice: " Your Product #{@type.name} Deleted successfully"
    end
  end

  private
  def type_params
    params.require(:product).permit(:name)
  end
  def set_type
    @type =Type.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
    redirect_to types_path, notice: error

  end
end
