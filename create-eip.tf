resource "aws_eip" "ofdev2" {
  vpc = true
}
output "ofdev2_eip_id" {
  value = "${aws_eip.ofdev2.id}"
  }
output "ofdev2_eip_ipaddr" {
  value = "${aws_eip.ofdev2.public_ip}"
  }
