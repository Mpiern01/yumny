require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
<<<<<<< HEAD
  
  setup do
    @chef = Chef.create!(chefname: "Eric", email: "eric@chef.com", password: "password", password_confirmation: "password")
    @recipe = Recipe.new(name: "vegetumtum", description: "great vegetarian recipe", chef_id: @chef.id) 
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  
  test "recipe without chef id should be invalid" do
    @recipe.chef_id = nil
    assert_not @recipe.valid?
  end
  
  test "name should be present" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end
  
  test "description should be present" do
    @recipe.description = ""
    assert_not @recipe.valid?
  end
  
  test "description should not be under 5 characters" do
    @recipe.description = "a" * 3
    assert_not @recipe.valid?
  end
  
  test "description should not be over 500 characters" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  
end
=======
	def setup
		@chef = Chef.create(chefname: "bob", email: "bob@example.com", password: "password")
		@recipe = @chef.recipes.build(name: "Chicken Parm", summary: "This is the best chicken parm recipe ever", description: "I make this all the time. I had 2 pounds of chicken and I cook it for 45 minutes. And it is oh so good.")
	end

	test "recipe should be valid" do
		assert @recipe.valid?
	end

	test "chef id should be present" do
		@recipe.chef_id = nil
		assert_not @recipe.valid?

	end

	test "name should be present" do
		@recipe.name = " "
		assert_not @recipe.valid?
	end

	test "name length should not be too long" do
		@recipe.name = "a" * 101
		assert_not @recipe.valid?
	end

	test "name length should not be too short" do
		@recipe.name = "aaaa"
		assert_not @recipe.valid?
	end

	test "summary should be present" do
		@recipe.summary = " "
		assert_not @recipe.valid?
	end

	test "summary length should not be too long" do
		@recipe.summary = "a" * 151
		assert_not @recipe.valid?
	end

	test "summary length should not be too short" do
		@recipe.summary = "a" * 9
		assert_not @recipe.valid?
	end

	test "description should be present" do
		@recipe.description = " "
		assert_not @recipe.valid?
	end

	test "description length should not be too short" do
		@recipe.description = "a" * 501
		assert_not @recipe.valid?
	end

	test "description length should not be too long" do
		@recipe.description = "a" * 19
		assert_not @recipe.valid?
	end

end
>>>>>>> adf7e4ca59f4b725b86890d58f8f66cd0595ffa4
