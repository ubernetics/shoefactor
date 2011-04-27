require 'spec_helper'

describe "materials/edit.html.erb" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :Name => "MyString",
      :Description => "",
      :Type => "MyString"
    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materials_path(@material), :method => "post" do
      assert_select "input#material_Name", :name => "material[Name]"
      assert_select "input#material_Description", :name => "material[Description]"
      assert_select "input#material_Type", :name => "material[Type]"
    end
  end
end