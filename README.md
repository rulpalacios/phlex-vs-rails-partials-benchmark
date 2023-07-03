# Rendering Benchmark: Phlex Components vs. Rails Partials

This project conducts a comparative benchmark between Phlex components and Rails partials to evaluate rendering times in a specific context.

## Introduction

Phlex components and Rails partials are two popular approaches for rendering components and elements in a Rails application. In this project, we compare both approaches in terms of performance and rendering time.

## Prerequisites

- Ruby 3.1.2 or higher
- Rails 7.0.4 or higher

## Setup

1. Clone this repository to your local machine.
2. Install the required dependencies by running `bundle install`.

## Running the Benchmark

To run the benchmark and compare the rendering times, follow these steps:

1. Open a terminal and navigate to the project directory.
2. Execute the following command: `bundle exec rake benchmark:render_results`

This will run the benchmark and display the average rendering times for Phlex Components and Rails Partials.

## Benchmark Methodology

Benchmark tests were performed using a dataset of 1000 users, measuring the rendering times for each approach. The following configurations and parameters were used:

- Test environment:
  - MacBook Pro with Intel Core i7 1.7 GHz QuadCore processor
  - 16GB 2133MHZ LPDDR3 RAM
  - macOS Ventura 13.01

## Results

### Manual Testing
After performing manual testing on the rendering performance, the following results were obtained:

| Approach          | Rendering Time (Average) |
|-------------------|--------------------------|
| Phlex components  | 0.019 seconds            |
| Rails partials    | 0.165 seconds            |

**Phlex is 8.68 times faster than Rails partials.**

### Rake Task Results
Running the rendering benchmark using Rake tasks produced the following average times:

| Approach          | Rendering Time (Average) |
|-------------------|--------------------------|
| Phlex components  | 0.005220 seconds         |
| Rails partials    | 0.023790 seconds         |

**Phlex is 4.56 times faster than Rails partials.**

Comparing the results between manual testing and Rake tasks, it's evident that there is a difference in the measured times. This can be attributed to various factors such as system load, caching, or variations in the test environment.

## Recommendations and Conclusions

Based on the results and analysis, it is recommended to consider using Phlex components in situations where optimized performance and reduced rendering time are required. However, it is essential to evaluate other aspects such as maintainability and the development team's familiarity with each approach.

## Contribution and Contact

If you would like to contribute to this project or have any questions, feel free to get in touch with us. [Include relevant contact information or links]

