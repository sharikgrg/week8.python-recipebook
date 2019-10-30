#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install python' do
      expect(chef_run).to install_package 'python'
    end

    it 'should install python-pip do
      expect(chef_run).to install_package 'python-pip'
    end

    it 'should install libncurses5 dev' do
      expect(chef_run).to install_package 'libncurses5-dev'
    end

  end
end
