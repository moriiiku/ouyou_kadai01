class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json

  def new
  @book = Book.new
  end

  def index
    @book = Book.new
    @books = Book.all
    # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能l
  end

  # GET /books/1
  # GET /books/1.json
  def show

    # findメソッドで、idにひもづくPOSTオブジェクトを取得する
    @book = Book.find(params[:id])

  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])

  end

  # POST /books
  # POST /books.json
  def create
    # @book = Book.new(book_params)
    #データはparamsという変数に渡されている
    #createはPostモデルのクラスメソッド

       @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice:"Book was successfully updated."
    else
      @books = Book.all
      render 'index'
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
       @book = Book.find(params[:id])
       if @book.update(book_params)
          redirect_to book_path(@book.id), notice:"Book was successfully updated."
       else
        render 'edit'
       end

  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id]).destroy
    redirect_to books_path, notice:"Book was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
