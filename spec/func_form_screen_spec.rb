describe "ProMotion::TestFormScreen functionality" do
  tests TestFormScreen

  def form_screen
    @form_screen ||= TestFormScreen.new(nav_bar: true)
  end

  def controller
    form_screen.navigationController
  end

  after do
    @form_screen = nil
  end

  it "has a navigation bar" do
    form_screen.navigationController.should.be.kind_of(UINavigationController)
  end

  it "contains an email and password input" do
    views(UITextField).length.should == 2
  end

  it "contains an image input" do
    view("Profile Image").should.not.be.nil
  end

  it "contains a section title" do
    view("ACCOUNT INFORMATION").should.not.be.nil
  end

  it "contains an email and password label" do
    view("Email").should.not.be.nil
    view("Password").should.not.be.nil
  end
end
