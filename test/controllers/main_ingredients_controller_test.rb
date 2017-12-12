require 'test_helper'

class MainIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_ingredient = main_ingredients(:one)
  end

  test "should get index" do
    get main_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_main_ingredient_url
    assert_response :success
  end

  test "should create main_ingredient" do
    assert_difference('MainIngredient.count') do
      post main_ingredients_url, params: { main_ingredient: {  } }
    end

    assert_redirected_to main_ingredient_url(MainIngredient.last)
  end

  test "should show main_ingredient" do
    get main_ingredient_url(@main_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_ingredient_url(@main_ingredient)
    assert_response :success
  end

  test "should update main_ingredient" do
    patch main_ingredient_url(@main_ingredient), params: { main_ingredient: {  } }
    assert_redirected_to main_ingredient_url(@main_ingredient)
  end

  test "should destroy main_ingredient" do
    assert_difference('MainIngredient.count', -1) do
      delete main_ingredient_url(@main_ingredient)
    end

    assert_redirected_to main_ingredients_url
  end
end
