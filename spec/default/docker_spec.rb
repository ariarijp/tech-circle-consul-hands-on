require 'spec_helper'

describe package('lxc-docker'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('docker'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end
