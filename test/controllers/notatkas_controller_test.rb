require "test_helper"

class NotatkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notatka = notatkas(:one)
  end

  test "should get index" do
    get notatkas_url
    assert_response :success
  end

  test "should get new" do
    get new_notatka_url
    assert_response :success
  end

  test "should create notatka" do
    assert_difference("Notatka.count") do
      post notatkas_url, params: { notatka: {  } }
    end

    assert_redirected_to notatka_url(Notatka.last)
  end

  test "should show notatka" do
    get notatka_url(@notatka)
    assert_response :success
  end

  test "should get edit" do
    get edit_notatka_url(@notatka)
    assert_response :success
  end

  test "should update notatka" do
    patch notatka_url(@notatka), params: { notatka: {  } }
    assert_redirected_to notatka_url(@notatka)
  end

  test "should destroy notatka" do
    assert_difference("Notatka.count", -1) do
      delete notatka_url(@notatka)
    end

    assert_redirected_to notatkas_url
  end
end
