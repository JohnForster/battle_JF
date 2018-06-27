feature 'players can enter their names' do
  scenario 'displays names after entry' do
    visit('/')
    fill_in :player1, with: 'John'
    fill_in :player2, with: 'Kees'
    click_button :Submit
    expect(page).to have_content('John vs. Kees!!!')
  end
end
