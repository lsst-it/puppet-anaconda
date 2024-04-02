# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'anaconda class' do
  let(:manifest) do
    <<-PP
    class { 'anaconda':
      anaconda_version   => 'foo',
      python_env_name    => 'bar',
      python_env_version => 'baz',
      conda_packages => {
        'qux' => {
          'channel' => 'corge',
          'version' => 'quux',
        },
      },
    }
    PP
  end

  it_behaves_like 'an idempotent resource'
end
