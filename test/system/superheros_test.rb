require "application_system_test_case"

class SuperherosTest < ApplicationSystemTestCase
  setup do
    @superhero = superheros(:one)
  end

  test "visiting the index" do
    visit superheros_url
    assert_selector "h1", text: "Superheros"
  end

  test "should create superhero" do
    visit superheros_url
    click_on "New superhero"

    fill_in "Descriptor", with: @superhero.descriptor
    fill_in "Name", with: @superhero.name
    fill_in "Power", with: @superhero.power
    fill_in "Prefix", with: @superhero.prefix
    fill_in "Suffix", with: @superhero.suffix
    click_on "Create Superhero"

    assert_text "Superhero was successfully created"
    click_on "Back"
  end

  test "should update Superhero" do
    visit superhero_url(@superhero)
    click_on "Edit this superhero", match: :first

    fill_in "Descriptor", with: @superhero.descriptor
    fill_in "Name", with: @superhero.name
    fill_in "Power", with: @superhero.power
    fill_in "Prefix", with: @superhero.prefix
    fill_in "Suffix", with: @superhero.suffix
    click_on "Update Superhero"

    assert_text "Superhero was successfully updated"
    click_on "Back"
  end

  test "should destroy Superhero" do
    visit superhero_url(@superhero)
    click_on "Destroy this superhero", match: :first

    assert_text "Superhero was successfully destroyed"
  end
end
