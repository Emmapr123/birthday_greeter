feature 'homepage' do
  scenario 'asks for name and birthday' do
    visit '/'
    expect(page).to have_content 'Hoe heet je?'
  end
end 