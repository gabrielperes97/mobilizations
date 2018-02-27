class MetaController < ApplicationController

    def index
    end

    def new
        @meta = Meta.new
    end

    def create
        @meta = Meta.new(meta_params)
        print(@meta)
        respond_to do |format|
            if @meta.save
                format.js {render :js => "window.location = '../'" }
            else
                format.js {render :js => "error_message('#error-message', 'Erro ao cadastrar meta', 'Por favor tente novamente');"}
            end
        end
    end

    private
    def meta_params
        params.require(:meta).permit(:title, :description, :time_limit)
    end

end