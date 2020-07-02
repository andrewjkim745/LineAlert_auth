require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url, as: :json
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { company_avgwait: @company.company_avgwait, company_email: @company.company_email, company_name: @company.company_name, company_number: @company.company_number, company_password: @company.company_password, company_pic: @company.company_pic, company_queue: @company.company_queue } }, as: :json
    end

    assert_response 201
  end

  test "should show company" do
    get company_url(@company), as: :json
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { company_avgwait: @company.company_avgwait, company_email: @company.company_email, company_name: @company.company_name, company_number: @company.company_number, company_password: @company.company_password, company_pic: @company.company_pic, company_queue: @company.company_queue } }, as: :json
    assert_response 200
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company), as: :json
    end

    assert_response 204
  end
end
