class MetaController < ApplicationController

    def index
        
    end

    def show
        @meta = Meta.find(params[:id])
    end
    
    def new
        if (session[:login_id] != nil)
            @meta = Meta.new
        else
            #TODO: Jogar pra uma tela de erro depois
            redirect_to :controller => 'home', :action => 'index'
        end
    end

    def create
        if (session[:login_id] != nil)
            user = Usuario.find(session[:login_id])
            meta = Meta.new(meta_params)
            meta.usuarios_id = Usuario.find(session[:login_id]).id
            respond_to do |format|
                if meta.save
                    format.js {render :js => "window.location = '../'" }
                else
                    format.js {render :js => "error_message('#error-message', 'Erro ao cadastrar meta', 'Por favor tente novamente');"}
                end
            end
        else
            respond_to do |format|
                format.js {render :js => "error_message('#error-message', 'Erro ao cadastrar meta', 'Você não está logado(a)');"}
            end
        end
    end

    private
    def meta_params
        params.require(:meta).permit(:title, :description, :time_limit, :limit, :unity)
    end

end