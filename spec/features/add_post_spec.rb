require 'spec_helper'

feature 'User creates post' do
  scenario 'with valid date' do
    visit new_post_path

    fill_in 'Title', with: 'My post'
    fill_in 'Content', with: 'My content'
    click_button 'Create Post'

    expect(page).to have_content 'Post has been created'
    expect(page).to have_content 'My post'
    expect(page).to have_content 'My content'
  end
end
