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

  step 'I should see the page footer' do
    expect(@page).to have_footer
  end

  step 'I should see the page footer social media links' do
    @page.footer.tap do |footer|
      expect(footer).to have_social_media
      footer.social_media.tap do |social_media|
        expect(social_media).to have_links(count: 3)
        expect(social_media).to have_twitter
        expect(social_media).to have_facebook
        expect(social_media).to have_google_plus
      end
    end
  end

  step 'I should see the page footer copyleft' do
    @page.footer.tap do |footer|
      expect(footer).to have_copyleft(text: '2016')
    end
  end
end
