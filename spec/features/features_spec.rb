feature 'players can enter their names' do
  scenario 'displays names after entry' do
    sign_in_and_play
    expect(page).to have_content('John vs. Kees!!!')
  end
end

feature 'display wordsmith information' do
  scenario 'shows player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Kees: 60MP (morale points)')
  end
end

feature 'attacking' do
  scenario 'shows confirmation after attack' do
    sign_in_and_play
    click_button 'Sling an insult'
    expect(page).to have_content('Insult delivered!')
  end
end
