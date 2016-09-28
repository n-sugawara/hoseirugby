require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post :create, result: { category: @result.category, fb: @result.fb, ho: @result.ho, lctb: @result.lctb, lfl: @result.lfl, llo: @result.llo, lpr: @result.lpr, lwtb: @result.lwtb, n08: @result.n08, place: @result.place, rctb: @result.rctb, rfl: @result.rfl, rlo: @result.rlo, rpr: @result.rpr, rwtb: @result.rwtb, score_first_dg: @result.score_first_dg, score_first_g: @result.score_first_g, score_first_pg: @result.score_first_pg, score_first_t: @result.score_first_t, score_second_dg: @result.score_second_dg, score_second_g: @result.score_second_g, score_second_pg: @result.score_second_pg, score_second_t: @result.score_second_t, sh: @result.sh, so: @result.so, team: @result.team, time: @result.time }
    end

    assert_redirected_to result_path(assigns(:result))
  end

  test "should show result" do
    get :show, id: @result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result
    assert_response :success
  end

  test "should update result" do
    patch :update, id: @result, result: { category: @result.category, fb: @result.fb, ho: @result.ho, lctb: @result.lctb, lfl: @result.lfl, llo: @result.llo, lpr: @result.lpr, lwtb: @result.lwtb, n08: @result.n08, place: @result.place, rctb: @result.rctb, rfl: @result.rfl, rlo: @result.rlo, rpr: @result.rpr, rwtb: @result.rwtb, score_first_dg: @result.score_first_dg, score_first_g: @result.score_first_g, score_first_pg: @result.score_first_pg, score_first_t: @result.score_first_t, score_second_dg: @result.score_second_dg, score_second_g: @result.score_second_g, score_second_pg: @result.score_second_pg, score_second_t: @result.score_second_t, sh: @result.sh, so: @result.so, team: @result.team, time: @result.time }
    assert_redirected_to result_path(assigns(:result))
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete :destroy, id: @result
    end

    assert_redirected_to results_path
  end
end
