class UsersController < ApplicationController
    def show
        #URLに記載されたIDを参考に必要なUserモデルを取得する、という処理
        @book = Book.find(params[:id])
        #特定のユーザに関連付けられた全てを取得し@booksに渡す、という処理
        @books = @user.books
    end

    def edit
    end
end
