output "ipaddr" {
  value = "${join(",",openstack_compute_instance_v2.sonata-sp.*.access_ip_v4)}"
}
#output "name" {
#  value = "${join(",",openstack_compute_instance_v2.sonata-sp.*.name)}"
#}
output "ansible_inventory" {
	value = "${template_file.ansible_hosts.rendered}"
}

