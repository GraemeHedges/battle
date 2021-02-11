feature 'Testing Player 1 can attack Player 2' do
  scenario 'Player 1 attacks Player 2 ' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2, it is super effective!'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Player 2: 60HP'
    expect(page).to have_content 'Player 2: 50HP'
  end
end
