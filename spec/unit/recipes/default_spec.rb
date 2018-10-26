#
# Cookbook:: DB
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'DB::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    # Checks if Mongodb is installed

    it 'should install mongod' do
      expect(chef_run).to upgrade_package "mongodb-org"
    end

    # Checks if mongodb repository has been added

    it 'should add mongodb repository' do
      expect(chef_run).to add_apt_repository('mongodb-org')
    end

    # Checks if all sources have been updated

    it 'should update all sources' do
      expect(chef_run).to update_apt_update('update')
    end

    # Checks if template has been created

    it 'should create a mongod.conf template in /etc/mongod.conf' do
      expect(chef_run).to create_template('/etc/mongod.conf')
    end

    it 'should create a mongod.service template in /etc/systemd/system/mongod.service' do
      expect(chef_run).to create_template('/etc/systemd/system/mongod.service')
    end

    # Checks if original conf file has been deleted

    it 'should delete the file from the default config in /etc/mongod/mongod.conf' do
      expect(chef_run).to delete_link "/etc/mongod/mongod.conf"
    end

    it 'should delete the file from the default config in /etc/systemd/system/mongod.service' do
      expect(chef_run).to delete_link "/etc/systemd/system/mongod.service"
    end

    # Checks if mongod is enabled

    it 'should enable mongod' do
      expect(chef_run).to enable_service 'mongod'
    end

    # Checks if mongod has been started

    it 'should start mongod' do
      expect(chef_run).to start_service 'mongod'
    end
  end
end
