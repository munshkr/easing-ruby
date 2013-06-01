require 'test_helper'
require 'easing'

describe Easing do
  describe 'linear_tween' do
    it { assert_equal 10, Easing.linear_tween(10, 0, 100, 100) }
    it { assert_equal 90, Easing.linear_tween(90, 0, 100, 100) }
  end

  describe 'ease_in_out_quad' do
    it { assert_equal 2.0, Easing.ease_in_out_quad(10, 0, 100, 100) }
    it { assert_equal 98.0, Easing.ease_in_out_quad(90, 0, 100, 100) }
  end

  describe 'ease_in_out_expo' do
    it { assert_equal 0.1953125, Easing.ease_in_out_expo(10, 0, 100, 100) }
    it { assert_equal 99.8046875, Easing.ease_in_out_expo(90, 0, 100, 100) }
  end
end
