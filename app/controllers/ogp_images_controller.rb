class OgpImagesController < ApplicationController
  def show
    text = ogp_params[:text]
    image = OgpCreator.build(text).tempfile.open.read
    if ogp_params[:download].present?
      send_data image, type: 'image/png', disposition: 'attachment', filename: "youzyo_document.png"
    else
      send_data image, :type => 'image/png', :disposition => 'inline'
    end
  end

  private
  def ogp_params
    params.permit(:text, :download)
  end
end