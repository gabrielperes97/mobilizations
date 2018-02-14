class UsuariosController < ApplicationController
    def create
        respond_to do |format|
            if (request[:usuario][:password] != request[:usuario][:passwordC])
                format.js {render :js => "register_error('Erro', 'As senhas não são iguais');"}
            else
                @user = Usuario.new(usuario_params)
                begin
                    @user.save
                    session[:login_id]=@user.id
                    format.js {render :js => "location.reload();" }
                rescue Exception
                    format.js {render :js => "register_error('Erro interno', 'Por algum motivo obscuro não conseguimos realizar o cadastro, tente novamente com os dedos cruzados');"}
                end
            end
        end
    end

    def usuario_params
        params.require(:usuario).permit(:name, :email, :password)
    end
end

