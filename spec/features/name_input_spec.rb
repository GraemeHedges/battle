feature 'Testing name input' do
  scenario 'Players can fill in their name and see those names on screen' do
    sign_in_and_play 
    expect(page).to have_content 'Player 1 vs. Player 2'
  end
end