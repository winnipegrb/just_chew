module RestaurantsIndexSteps
  extend SpecSteps

  step 'there are some restaurants' do
    @restaurants = create_list :restaurant, 5
  end

  step 'I should see restaurants in a list' do
    expect(@page).to have_restaurants(count: @restaurants.count)
    @page.restaurants.tap do |restaurants|
      @restaurants.zip(restaurants).each do |restaurant, section|
        expect(section).to have_logo
        expect(section.logo).to have_src(restaurant.logo.thumb.url)
        expect(section).to have_name(text: restaurant.name)
        expect(section).to have_address(text: restaurant.address)
      end
    end
  end

  step 'I click a restaurant in the list' do
    @restaurants.zip(@page.restaurants).sample.tap do |restaurant, section|
      @restaurant = restaurant
      section.click
    end
  end
end
