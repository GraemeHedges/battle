feature 'Testing player 1 can attack player 2' do
  scenario 'Player 1 attacks players 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2, it is super effective!'
  end
end