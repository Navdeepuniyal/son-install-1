#!/bin/sh
mkdir environments/
# DEV
mkdir environments/development/
mkdir environments/development/group_vars/
mkdir environments/development/group_vars/vim/
mkdir environments/development/group_vars/vim/openstack/
mkdir environments/development/group_vars/vim/openstack/location/
mkdir environments/development/group_vars/vim/openstack/location/ptin/
touch environments/development/group_vars/vim/openstack/location/ptin/provider_auth
touch environments/development/group_vars/vim/openstack/location/ptin/provider_vm
touch environments/development/group_vars/vim/openstack/location/ptin/provider_flavor
touch environments/development/group_vars/vim/openstack/location/ptin/provider_image
mkdir environments/development/group_vars/vim/openstack/location/ncsrd/
mkdir environments/development/group_vars/vim/osm/
mkdir environments/development/group_vars/vim/aws/
mkdir environments/development/group_vars/vim/vmware/
mkdir environments/development/host_vars/
mkdir environments/development/inventory/

# INT
mkdir environments/integration/
mkdir environments/integration/group_vars/
mkdir environments/integration/group_vars/vim/
mkdir environments/integration/group_vars/vim/openstack/
mkdir environments/integration/group_vars/vim/openstack/location/
mkdir environments/integration/group_vars/vim/openstack/location/ptin/
touch environments/integration/group_vars/vim/openstack/location/ptin/provider_auth
touch environments/integration/group_vars/vim/openstack/location/ptin/provider_vm
touch environments/integration/group_vars/vim/openstack/location/ptin/provider_flavor
touch environments/integration/group_vars/vim/openstack/location/ptin/provider_image
mkdir environments/integration/group_vars/vim/openstack/location/ncsrd/
mkdir environments/integration/group_vars/vim/osm/
mkdir environments/integration/group_vars/vim/aws/
mkdir environments/integration/group_vars/vim/vmware/
mkdir environments/integration/host_vars/
mkdir environments/integration/inventory/

# QUAL
mkdir environments/qualification/
mkdir environments/qualification/group_vars/
mkdir environments/qualification/group_vars/vim/
mkdir environments/qualification/group_vars/vim/openstack/
mkdir environments/qualification/group_vars/vim/openstack/location/
mkdir environments/qualification/group_vars/vim/openstack/location/ptin/
touch environments/qualification/group_vars/vim/openstack/location/ptin/provider_auth
touch environments/qualification/group_vars/vim/openstack/location/ptin/provider_vm
touch environments/qualification/group_vars/vim/openstack/location/ptin/provider_flavor
touch environments/qualification/group_vars/vim/openstack/location/ptin/provider_image
mkdir environments/qualification/group_vars/vim/openstack/location/ncsrd/
mkdir environments/qualification/group_vars/vim/osm/
mkdir environments/qualification/group_vars/vim/aws/
mkdir environments/qualification/group_vars/vim/vmware/
mkdir environments/qualification/host_vars/
mkdir environments/qualification/inventory/

# DEMO
mkdir environments/demonstration/
mkdir environments/demonstration/group_vars/
mkdir environments/demonstration/group_vars/vim/
mkdir environments/demonstration/group_vars/vim/openstack/
mkdir environments/demonstration/group_vars/vim/openstack/location/
mkdir environments/demonstration/group_vars/vim/openstack/location/ptin/
touch environments/demonstration/group_vars/vim/openstack/location/ptin/provider_auth
touch environments/demonstration/group_vars/vim/openstack/location/ptin/provider_vm
touch environments/demonstration/group_vars/vim/openstack/location/ptin/provider_flavor
touch environments/demonstration/group_vars/vim/openstack/location/ptin/provider_image
mkdir environments/demonstration/group_vars/vim/openstack/location/ncsrd/
mkdir environments/demonstration/group_vars/vim/osm/
mkdir environments/demonstration/group_vars/vim/aws/
mkdir environments/demonstration/group_vars/vim/vmware/
mkdir environments/demonstration/host_vars/
mkdir environments/demonstration/inventory/

