require 'rails_helper.rb'

feature"User Creates Activity" do
    scenario "As an Activity Creator, I want to able to create an activity at a certain zipcode." do
        visit preload_index_path
        expect(page).to have_content("Choose an Activity Location by Zip")
        click_link "New Activity"
        expect(page). to have_content("New Activity")
        fill_in "preload[title]" , with: "28215"
        fill_in "preload[text]" , with: "Test activity"
        click_button "Save Activity"
        expect(page).to have_content("28215")
        expect(page).to have_content("Test activity")
    end
end