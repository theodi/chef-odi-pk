require 'serverspec'
set :backend, :exec

describe user 'odi' do
  it { should exist }
end

describe file '/home/odi/.ssh/authorized_keys' do
  it { should exist }
  its(:content) { should match /sam@dirac.local/ }
end
