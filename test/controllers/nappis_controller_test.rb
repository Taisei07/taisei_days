require 'test_helper'

class NappisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nappi = nappis(:one)
  end

  test "should get index" do
    get nappis_url
    assert_response :success
  end

  test "should get new" do
    get new_nappi_url
    assert_response :success
  end

  test "should create nappi" do
    assert_difference('Nappi.count') do
      post nappis_url, params: { nappi: { age: @nappi.age, year: @nappi.year } }
    end

    assert_redirected_to nappi_url(Nappi.last)
  end

  test "should show nappi" do
    get nappi_url(@nappi)
    assert_response :success
  end

  test "should get edit" do
    get edit_nappi_url(@nappi)
    assert_response :success
  end

  test "should update nappi" do
    patch nappi_url(@nappi), params: { nappi: { age: @nappi.age, year: @nappi.year } }
    assert_redirected_to nappi_url(@nappi)
  end

  test "should destroy nappi" do
    assert_difference('Nappi.count', -1) do
      delete nappi_url(@nappi)
    end

    assert_redirected_to nappis_url
  end
end
