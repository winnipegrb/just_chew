module WelcomeSteps
  extend SpecSteps

  step 'I be/land on the welcome page' do
    @page = JustChew::Spec::Application::Welcome::Page.new
    @page.load
    expect(@page).to be_displayed
  end

  step 'I should see the page header' do
    expect(@page).to have_header
  end

  step 'I should see the page header logo' do
    @page.header.tap do |header|
      expect(header).to have_logo
      header.logo.tap do |logo|
        expect(logo[:width]).to eq 80
        expect(logo[:height]).to eq 40
        expect(logo[:src]).to match 'assets/logo-.*.png'
      end
    end
  end

  step 'I should see the page header items' do
    @page.header.tap do |header|
      expect(header).to have_items(count: 2)
      expect(header).to have_home
      header.home.tap do |home|
        expect(home[:href]).to match '/'
      end
      header.log_in.tap do |log_in|
        expect(log_in[:href]).to match '#'
      end
    end
  end
end
