feature 'Testing players have hit points' do
  scenario 'Player 1 has 60 Hit Points after names are entered' do
    sign_in_and_play    
    expect(page).to have_content 'Player 1: 60HP'
  end

  scenario 'Player 2 has 60 Hit Points after names are entered' do
    sign_in_and_play    
    expect(page).to have_content 'Player 2: 60HP'
  end
end
