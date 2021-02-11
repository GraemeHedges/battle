feature 'Testing players have hit points' do
  scenario 'Players have 60 Hit Points after names are entered' do
    sign_in_and_play    
    expect(page).to have_content 'Player 1: 60HP'
  end
end
