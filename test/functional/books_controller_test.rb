require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { authors: @book.authors, average_rating: @book.average_rating, description: @book.description, image_link: @book.image_link, info_link: @book.info_link, isbn: @book.isbn, isbn_10: @book.isbn_10, isbn_13: @book.isbn_13, language: @book.language, page_count: @book.page_count, preview_link: @book.preview_link, print_type: @book.print_type, published_date: @book.published_date, publisher: @book.publisher, title: @book.title }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    put :update, id: @book, book: { authors: @book.authors, average_rating: @book.average_rating, description: @book.description, image_link: @book.image_link, info_link: @book.info_link, isbn: @book.isbn, isbn_10: @book.isbn_10, isbn_13: @book.isbn_13, language: @book.language, page_count: @book.page_count, preview_link: @book.preview_link, print_type: @book.print_type, published_date: @book.published_date, publisher: @book.publisher, title: @book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
