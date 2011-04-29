require 'spec_helper'

describe "materials/edit.html.erb" do
  before(:each) do
    @material = assign(:material, stub_model(Material,

      :name => "MyString",
      :description => "MyText",
      :material_type => "MyString"

    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materials_path(@material), :method => "post" do


      assert_select "input#material_name", :name => "material[name]"
      assert_select "textarea#material_description", :name => "material[description]"
      assert_select "input#material_material_type", :name => "material[material_type]"

    end
  end
end
