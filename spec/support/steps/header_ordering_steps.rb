module HeaderOrderinSteps
  extend SpecSteps

  step 'I toggle the header order type toggle' do
    @page.header.order_type_toggle.tap do |order_type|
      @type = order_type.toggle
    end
  end

  step 'I should see the header order type toggle switch' do
    @page.header.order_type_toggle.tap do |order_type|
      expect(order_type.selected).to have_text(@type.capitalize)
    end
  end

  step 'I should have my order type preference updated' do
    @user.reload.order_preference.tap do |order_preference|
      expect(order_preference.type).to eq @type
    end
  end
end
