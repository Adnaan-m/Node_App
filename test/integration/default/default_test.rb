# # encoding: utf-8

# Inspec test for recipe node::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

  # This is an example test, replace with your own test.


# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end

describe package "nginx" do
  it{ should be_installed }
end

describe service "nginx" do
  it{ should be_running }
  it{ should be_enabled }
end

describe package ("nodejs") do
  it{ should be_installed }
  its("version") { should_not eq "6.11.2*"}
end

describe npm ("pm2") do
  it{ should be_installed }
end

describe http('http://localhost', enable_remote_worker: true) do
  its('status'){ should cmp == 502 }
end
