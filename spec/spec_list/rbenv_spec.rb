require 'spec_helper'

USER_NAME="ec2-user"

describe user(USER_NAME) do
  it { should exist }
  it { should have_home_directory "/home/#{USER_NAME}" }
end

describe file("/home/#{USER_NAME}/.rbenv") do
  it { should be_directory }
end

describe file("/home/#{USER_NAME}/.rbenv/shims/ruby") do
  it { should be_file }
end