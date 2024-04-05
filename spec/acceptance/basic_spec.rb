# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'anaconda class' do
  let(:manifest) do
    <<-PP
    class { 'anaconda':
      anaconda_version   => 'Anaconda3-2023.07-2',
      python_env_name    => 'py311',
      python_env_version => '3.11',
      conda_packages => {
        'pyside2' => {
          'channel' => 'conda-forge',
          'version' => '5.15.8',
        },
      },
    }
    PP
  end

  it_behaves_like 'an idempotent resource'
end
