module WelcomeSteps
  extend SpecSteps

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
      form.tap do |form|
        expect(form).to have_method :post
        expect(form[:class]).to include 'form-inline'
      end
    end
  end
end
