class UserComponent < Phlex::HTML
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def template
    li class: "p-4 border rounded shadow-md" do
      div class: "text-xl font-bold mb-2" do
        user.name
      end
      div class: "text-gray-500" do
        user.email
      end 
    end
  end
end
