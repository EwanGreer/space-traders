require "test_helper"

class AgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get agents_url
    assert_response :success
  end

  test "should get new" do
    get new_agent_url
    assert_response :success
  end

  test "should create agent" do
    assert_difference("Agent.count") do
      post agents_url, params: { agent: { account_id: @agent.account_id, credits: @agent.credits, faction_id: @agent.faction_id, headquarters_id: @agent.headquarters_id, symbol: @agent.symbol, user_id: @agent.user_id } }
    end

    assert_redirected_to agent_url(Agent.last)
  end

  test "should show agent" do
    get agent_url(@agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_agent_url(@agent)
    assert_response :success
  end

  test "should update agent" do
    patch agent_url(@agent), params: { agent: { account_id: @agent.account_id, credits: @agent.credits, faction_id: @agent.faction_id, headquarters_id: @agent.headquarters_id, symbol: @agent.symbol, user_id: @agent.user_id } }
    assert_redirected_to agent_url(@agent)
  end

  test "should destroy agent" do
    assert_difference("Agent.count", -1) do
      delete agent_url(@agent)
    end

    assert_redirected_to agents_url
  end
end
