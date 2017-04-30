module PageSteps
  extend SpecSteps

  step 'I am/land on the :page page' do |page_class|
    @page        = page_class.new
    @page_params = params_for_page(@page)
    @page.load @page_params
  end

  :expect_page_displayed.tap do |expect_method|
    step expect_method, 'I :assert be/land/remain on the :page page'
    step expect_method, 'I :assert be redirected to the :page page'
  end

  def expect_page_displayed(assert, page_class)
    page_class.new.tap do |page|
      expect(page).send assert, be_displayed
      @page = page if assert.eql? :to
    end
  end

  def params_for_page(page)
    params_method = params_method_for_page(page)
    { }.tap do |params|
      params.merge! send(params_method) if respond_to? params_method
      (params[:query] ||= { }).tap do |query_params|
        query_params.merge! clearance_query_params
      end
    end
  end

  def params_method_for_page(page)
    page_name = page.class.name.underscore.split('/').drop(2).join('_')
    :"params_for_#{page_name}"
  end
end
