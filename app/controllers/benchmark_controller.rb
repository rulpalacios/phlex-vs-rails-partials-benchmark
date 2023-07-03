class BenchmarkController < ApplicationController
  def phlex_render_benchmark
    require 'benchmark'
    require 'phlex-rails'

    users = User.limit(1000)

    time = Benchmark.measure do
      users.map do |user|
        UserComponent.new(users)
      end
    end

    render plain: "Time to render phlex component for 1k users: #{time.real} seconds"
  end

  def rails_render_benchmark
    require 'benchmark'

    users = User.limit(1000)

    time = Benchmark.measure do
      users.map do |user|
        render_to_string(partial: 'users/user', locals: { user: user })
      end
    end

    render plain: "Time to render partial for 1000 users: #{time.real} seconds"
  end
end