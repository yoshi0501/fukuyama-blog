require 'test_helper'

class DailyreportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dailyreport = dailyreports(:one)
  end

  test "should get index" do
    get dailyreports_url
    assert_response :success
  end

  test "should get new" do
    get new_dailyreport_url
    assert_response :success
  end

  test "should create dailyreport" do
    assert_difference('Dailyreport.count') do
      post dailyreports_url, params: { dailyreport: { report: @dailyreport.report, title: @dailyreport.title } }
    end

    assert_redirected_to dailyreport_url(Dailyreport.last)
  end

  test "should show dailyreport" do
    get dailyreport_url(@dailyreport)
    assert_response :success
  end

  test "should get edit" do
    get edit_dailyreport_url(@dailyreport)
    assert_response :success
  end

  test "should update dailyreport" do
    patch dailyreport_url(@dailyreport), params: { dailyreport: { report: @dailyreport.report, title: @dailyreport.title } }
    assert_redirected_to dailyreport_url(@dailyreport)
  end

  test "should destroy dailyreport" do
    assert_difference('Dailyreport.count', -1) do
      delete dailyreport_url(@dailyreport)
    end

    assert_redirected_to dailyreports_url
  end
end
