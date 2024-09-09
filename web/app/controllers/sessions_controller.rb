class SessionsController < Devise::SessionsController
    # デフォルトの `new` アクションをオーバーライドする例
    def new
      super
    end
  
    # デフォルトの `create` アクションをオーバーライドする例
    def create
      super
    end
  
    # デフォルトの `destroy` アクションをオーバーライドしてログアウト後にリダイレクトする例
    def destroy
      super
    end
  end