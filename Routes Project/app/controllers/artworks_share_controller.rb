class ArtworksShareController < ApplicationController
    def create
        arkworkshare = ArtworkShare.new(:artworks_share_params)
        if arkworkshare.save
            render json: user
        else
            render json: user.errors.full_messages, 
            status: :unprocessable_entity
        end
    end

    def destroy
        arkworkshare = ArtworkShare.find(params[:artwork_id])
        if arkworkshare && arkworkshare.destroy
            render json: arkworkshare
        else
            render json: {'error': 'Arkwork doesnt exist'}
        end
    end

    private
    def artworks_share_params
        params.require(:artworks_share).permit(:artwork_id, :viewer_id)
    end
end