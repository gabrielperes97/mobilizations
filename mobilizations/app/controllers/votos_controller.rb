class VotosController < ApplicationController

    def create
        if (session[:login_id] != nil)
            user = Usuario.find(session[:login_id])
            meta = Meta.find(voto_params[:meta_id])
            voto = Votos.new :votos => params[:voto], :meta_id => meta.id, :usuario_id => user.id
            respond_to do |format|
                if voto.save
                    format.js {render :js => "error_message('#error-message', 'Voto computado com sucesso', '');"}
                else
                    format.js {render :js => "error_message('#error-message', 'Erro ao computar voto', 'Por favor tente novamente');"}
                end
            end
        else
            respond_to do |format|
                format.js {render :js => "error_message('#error-message', 'Erro ao computar voto', 'Você não está logado(a)');"}
            end
        end
        
    end

    private
    def voto_params
        params.require(:voto).permit(:voto, :meta_id)
    end
end