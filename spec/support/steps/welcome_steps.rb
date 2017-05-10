module WelcomeSteps
  extend SpecSteps

  step 'I be/land on the welcome page' do
    @page = JustChew::Spec::Application::Welcome::Page.new
    @page.load
    expect(@page).to be_displayed
  end

  step 'I should see the welcome page cards' do
    expect(@page).to have_cards(count: 3)
    @page.cards.tap do |cards|
      %i(dollar rocket clock-o).zip(
        ['No Extra Cost', 'Fast Delivery', 'Time Saved'], cards
      ).each do |icon, title, card|
        expect(card).to have_fa_icon(icon)
        expect(card).to have_block_title(text: title)
      end
    end
  end

  step 'I should see the welcome page banner' do
    expect(@page).to have_banner
    @page.banner.tap do |banner|
      expect(banner.has_title?).to be true
      expect(banner).to have_subtitle
    end
  end

  step 'I should see the welcome page banner form' do
    expect(@page.banner).to have_form
    @page.banner.form.tap do |form|
      expect(form).to have_address
      expect(form.address[:placeholder]).to eq '123 Fake St.'
      expect(form).to have_submit
      expect(form.submit[:value]).to eq 'Go'
      form.root_element.tap do |form_elem|
        expect(form_elem[:method]).to eq 'get'
        expect(form_elem[:class]).to include 'form-inline'
      end
    end
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
        expect(logo[:alt]).to eq 'Logo'
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
        log_in.find(:xpath, '..').tap do |nav_item|
          expect(nav_item[:class]).to include 'float-xs-right'
        end
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
        expect(social_media).to have_icons(class: 'fa-2x')
        expect(social_media).to have_twitter
        expect(social_media).to have_facebook
        expect(social_media).to have_google_plus
      end
    end
  end

  step 'I should see the page footer copyleft' do
    @page.footer.tap do |footer|
      expect(footer).to have_copyleft(text: Time.now.year)
    end
  end
end
