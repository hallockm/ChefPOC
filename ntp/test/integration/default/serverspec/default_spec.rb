require 'spec_helper'

describe 'ntp::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('ntp') do
    it { should be_installed }
  end
  describe file('/etc/ntp.conf') do
    it { should be_file }
  end
end
