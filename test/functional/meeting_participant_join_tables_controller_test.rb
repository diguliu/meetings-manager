require 'test_helper'

class MeetingParticipantJoinTablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeting_participant_join_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting_participant_join_table" do
    assert_difference('MeetingParticipantJoinTable.count') do
      post :create, :meeting_participant_join_table => { }
    end

    assert_redirected_to meeting_participant_join_table_path(assigns(:meeting_participant_join_table))
  end

  test "should show meeting_participant_join_table" do
    get :show, :id => meeting_participant_join_tables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => meeting_participant_join_tables(:one).to_param
    assert_response :success
  end

  test "should update meeting_participant_join_table" do
    put :update, :id => meeting_participant_join_tables(:one).to_param, :meeting_participant_join_table => { }
    assert_redirected_to meeting_participant_join_table_path(assigns(:meeting_participant_join_table))
  end

  test "should destroy meeting_participant_join_table" do
    assert_difference('MeetingParticipantJoinTable.count', -1) do
      delete :destroy, :id => meeting_participant_join_tables(:one).to_param
    end

    assert_redirected_to meeting_participant_join_tables_path
  end
end
