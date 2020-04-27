require 'spec_helper'

describe cloudwatch_event('TestTestTest') do
  it { should exist }
  it { should be_enable }
  it { should be_scheduled('cron(0 2 * * ? *)') }
end
