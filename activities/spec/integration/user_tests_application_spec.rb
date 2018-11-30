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
        click_link "Location List"
        click_link "Show"
        expect(page). to have_content("User Added Activities")
        fill_in "user[zip]" , with: "28216"
        fill_in "user[body]" , with: "Test user activity"
        click_button "Save Activity"
        expect(page).to have_content("28216")
        expect(page).to have_content("Test user activity")
    end
    
    scenario "As an Activity Creator, I want to be able to delete unwanted or expired activities from the Activity List." do
        visit preload_index_path
        expect(page).to have_content("Choose an Activity Location by Zip")
        click_link "New Activity"
        expect(page). to have_content("New Activity")
        fill_in "preload[title]" , with: "28215"
        fill_in "preload[text]" , with: "Test activity"
        click_button "Save Activity"
        click_link "Location List"
        click_link "Destroy"
    end
    
    scenario "As an Activity Creator, I want to be able to edit and update my activity submission." do
        visit preload_index_path
        expect(page).to have_content("Choose an Activity Location by Zip")
        click_link "New Activity"
        expect(page). to have_content("New Activity")
        fill_in "preload[title]" , with: "28215"
        fill_in "preload[text]" , with: "Test activity"
        click_button "Save Activity"
        click_link "Location List"
        click_link "Edit"
        expect(page). to have_content("Editing Activity")
        fill_in "preload[title]" , with: "28215"
        fill_in "preload[text]" , with: "Test updating activity"
        click_button "Save Activity"
        expect(page).to have_content("28215")
        expect(page).to have_content("Test updating activity")
    end
end