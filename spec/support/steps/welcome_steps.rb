module WelcomeSteps
  extend SpecSteps

  step 'I be/land on the welcome page' do
    @page = WelcomePage.new
    @page.load
  end

  step 'I should see the welcome header' do
    expect(@page).to have_header
  end
end
