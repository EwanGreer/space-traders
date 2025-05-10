require "application_system_test_case"

class FactionsTest < ApplicationSystemTestCase
  setup do
    @faction = factions(:one)
  end

  test "visiting the index" do
    visit factions_url
    assert_selector "h1", text: "Factions"
  end

  test "should create faction" do
    visit factions_url
    click_on "New faction"

    fill_in "Desctiption", with: @faction.desctiption
    fill_in "Headquarters", with: @faction.headquarters_id
    fill_in "Name", with: @faction.name
    fill_in "Symbol", with: @faction.symbol
    click_on "Create Faction"

    assert_text "Faction was successfully created"
    click_on "Back"
  end

  test "should update Faction" do
    visit faction_url(@faction)
    click_on "Edit this faction", match: :first

    fill_in "Desctiption", with: @faction.desctiption
    fill_in "Headquarters", with: @faction.headquarters_id
    fill_in "Name", with: @faction.name
    fill_in "Symbol", with: @faction.symbol
    click_on "Update Faction"

    assert_text "Faction was successfully updated"
    click_on "Back"
  end

  test "should destroy Faction" do
    visit faction_url(@faction)
    click_on "Destroy this faction", match: :first

    assert_text "Faction was successfully destroyed"
  end
end
