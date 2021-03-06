require 'spec_helper'

describe "materials/index.html.erb" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,

        :name => "Name",
        :description => "MyText",
        :material_type => "Material Type"
      ),
      stub_model(Material,
        :name => "Name",
        :description => "MyText",
        :material_type => "Material Type"

      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers

    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Material Type".to_s, :count => 2

  end
end
