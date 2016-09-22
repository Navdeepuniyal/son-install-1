#
variable "node_count" {
  default = 1
}

resource "openstack_compute_floatingip_v2" "fip" {
    region = ""
    pool = "${var.floatip}"
    count = "${var.node_count}"
}
 
resource "openstack_compute_instance_v2" "sonata-sp" {
  count = "${var.node_count}"
  region = ""
  name = "os-${var.vm_name}${format("%02d",count.index)}"
  image_name = "${var.img_name}"
  flavor_name = "${var.flv_name}"
  key_pair = "${var.key_pair}"
  security_groups = ["${var.sec_grp}"]
  metadata {
      demo = "metadata"
  }
  network {
      uuid = "${var.internal_network_id}"
      name = "${var.internal_network_name}"
      #fixed_ip = ""
  }
  floating_ip = "${element(openstack_compute_floatingip_v2.fip.*.address, count.index)}"
  user_data = "${file("bootstrap-son.sh")}"

provisioner "file"{
    source = "floatingip"
    destination = "/home/ubuntu/floatingip"
    connection {
        user = "${var.ssh_user}"
        private_key = "${file("/etc/ansible/son-ift-ptin.rsa")}"
    }
}

provisioner "remote-exec" {
    inline = ["sudo sh -c 'echo ${openstack_compute_instance_v2.sonata-sp.access_ip_v4} ${openstack_compute_instance_v2.sonata-sp.name} >> /etc/hosts'"]
    connection {
      user = "ubuntu"
      private_key = "${file("/etc/ansible/son-ift-ptin.rsa")}"
    }
 }
}
