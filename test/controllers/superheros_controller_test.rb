require "test_helper"

class SuperherosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superhero = superheros(:one)
  end

  test "should get index" do
    get superheros_url
    assert_response :success
  end

  test "should get new" do
    get new_superhero_url
    assert_response :success
  end

  test "should create superhero" do
    assert_difference("Superhero.count") do
      post superheros_url, params: { superhero: { descriptor: @superhero.descriptor, name: @superhero.name, power: @superhero.power, prefix: @superhero.prefix, suffix: @superhero.suffix } }
    end

    assert_redirected_to superhero_url(Superhero.last)
  end

  test "should show superhero" do
    get superhero_url(@superhero)
    assert_response :success
  end

  test "should get edit" do
    get edit_superhero_url(@superhero)
    assert_response :success
  end

  test "should update superhero" do
    patch superhero_url(@superhero), params: { superhero: { descriptor: @superhero.descriptor, name: @superhero.name, power: @superhero.power, prefix: @superhero.prefix, suffix: @superhero.suffix } }
    assert_redirected_to superhero_url(@superhero)
  end

  test "should destroy superhero" do
    assert_difference("Superhero.count", -1) do
      delete superhero_url(@superhero)
    end

    assert_redirected_to superheros_url
  end
end
