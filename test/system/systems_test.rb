require "application_system_test_case"

class SystemsTest < ApplicationSystemTestCase
  setup do
    @system = systems(:one)
  end

  test "visiting the index" do
    visit systems_url
    assert_selector "h1", text: "Systems"
  end

  test "should create system" do
    visit systems_url
    click_on "New system"

    fill_in "Constellation", with: @system.constellation
    fill_in "Name", with: @system.name
    fill_in "Sector symbol", with: @system.sector_symbol
    fill_in "Symbol", with: @system.symbol
    fill_in "Type", with: @system.type
    fill_in "X", with: @system.x
    fill_in "Y", with: @system.y
    click_on "Create System"

    assert_text "System was successfully created"
    click_on "Back"
  end

  test "should update System" do
    visit system_url(@system)
    click_on "Edit this system", match: :first

    fill_in "Constellation", with: @system.constellation
    fill_in "Name", with: @system.name
    fill_in "Sector symbol", with: @system.sector_symbol
    fill_in "Symbol", with: @system.symbol
    fill_in "Type", with: @system.type
    fill_in "X", with: @system.x
    fill_in "Y", with: @system.y
    click_on "Update System"

    assert_text "System was successfully updated"
    click_on "Back"
  end

  test "should destroy System" do
    visit system_url(@system)
    click_on "Destroy this system", match: :first

    assert_text "System was successfully destroyed"
  end
end
