# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'valid?' do
    post = posts(:one)
    assert_equal true, post.valid?
  end

  test 'invalid?' do
    post = posts(:invalid)
    assert_equal false, post.valid?
  end

  test 'title kind_of?(String)' do
    post = posts(:one)
    assert_kind_of String, post.title
  end

  test 'body kind_of?(String)' do
    post = posts(:one)
    assert_kind_of String, post.body
  end

  test 'title present?' do
    post = posts(:two)
    assert_equal true, post.title.present?
  end

  test 'body present?' do
    post = posts(:two)
    assert_equal true, post.body.present?
  end
end
