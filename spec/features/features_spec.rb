describe 'all the features', type: :feature do
  it 'tests infrastructure working' do
    visit('/')
    expect(page).to have_content('Testing Infrastructure Working')
  end
end
