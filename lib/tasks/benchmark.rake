namespace :benchmark do
  desc 'Run rendering benchmark'
  task :render_results => [ :environment ] do
    require 'benchmark'
    require 'phlex-rails'
    include ActionView::Rendering

    # Logic to fetch user data
    users = User.all

    # Phlex Components results
    phlex_component_results = []

    # Rails Partials results
    rails_partial_results = []

    # Perform benchmark
    10.times do
      # Benchmarking Phlex Components
      phlex_time = Benchmark.measure do
        users.map do |user|
          UserComponent.new(user)
        end
      end
      phlex_component_results << phlex_time.real

      # Benchmarking Rails Partials
      rails_time = Benchmark.measure do
        users.map do |user|
          ActionController::Base.render(partial: 'users/user', locals: { user: user })
        end
      end
      rails_partial_results << rails_time.real
    end

    # Calculate the average of the results
    phlex_component_average = phlex_component_results.sum / phlex_component_results.length
    rails_partial_average = rails_partial_results.sum / rails_partial_results.length

    # Show the results
    puts "Phlex Components Average: #{sprintf('%.6f', phlex_component_average)} seconds"
    puts "Rails Partials Average: #{sprintf('%.6f', rails_partial_average)} seconds"
  end
end
