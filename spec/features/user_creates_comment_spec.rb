require 'spec_helper'

feature 'User creates comment' do
  scenario 'with valid data' do
    post = create(:post)
    visit post_path(post)

    fill_in 'Text', with: 'My comment'
    click_button 'Create Comment'

    expect(page).to have_content 'Comment has been added'
    expect(page).to have_content 'My comment'
  end

  scenario 'with invalid data' do
    post = create(:post)
    visit post_path(post)

    click_button 'Create Comment'

    expect(page).to have_css 'div.has-error'
  end
end
