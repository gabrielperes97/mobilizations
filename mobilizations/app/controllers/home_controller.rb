class HomeController < ApplicationController
    
    def index
        if (session[:login_id] != nil)
            @user = Usuario.find(session[:login_id])
        end
        @metas_aprovadas = Meta.where("status = 1")
        @metas_em_votacao = Meta.where("status = 0")
        @metas_aprovadas.each do |m|
            m.define_singleton_method(:progresso) { 50 }
            #m.define_singleton_method(:progresso) { RealizacaoMeta.having("meta_id = "+m.id.to_s).sum(:contribuicao) }
        end
    end

    def show
    end

    def create
        #Request for um login
        if (not request[:login].nil?)
            @user = Usuario.find_by(:email => request[:login][:email], :password => request[:login][:password])
            respond_to do |format|
                if (@user.nil?)
                    format.js {render :js => "login_error('Erro', 'Usuário ou senha invalido(s)');"}
                else
                    session[:login_id]=@user.id
                    format.js {render :js => "location.reload();" }
                end
            end
        else
            if (not request[:unlogin].nil?)
                session[:login_id] = nil
                respond_to {|format| format.js {render :js => "location.reload();" } }
            end
        end
    end
end
  