class RegalosController < InheritedResources::Base

  def show_details
    @regalo = Regalo.find(params[:id_regalo])
    if @regalo.state == 1
      @user = User.find(@regalo.user_id)
    end
  end

  private

    def regalo_params
      params.require(:regalo).permit(:name, :description, :price_min, :price_max, :link, :img_product, :state)
    end
end

