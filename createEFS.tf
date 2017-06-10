resource "aws_efs_file_system" "ofdev2efslogs" {
  creation_token = "ofdev2-logs-efs"
  performance_mode = "generalPurpose"
  tags {
    Name = "ofdev2logsefs"
  }
}

resource "aws_efs_mount_target" "alpha" {
  file_system_id = "${aws_efs_file_system.ofdev2efslogs.id}"
  subnet_id      = "${var.SUBNET1}"
}
resource "aws_efs_mount_target" "beta" {
  file_system_id = "${aws_efs_file_system.ofdev2efslogs.id}"
  subnet_id      = "${var.SUBNET2}"
}
resource "aws_efs_mount_target" "gamma" {
  file_system_id = "${aws_efs_file_system.ofdev2efslogs.id}"
  subnet_id      = "${var.SUBNET3}"
}

output "ofdev2efslogs" {
   value = "${aws_efs_file_system.ofdev2efslogs.id}"
   }
output "ofdev2efslogsDNS" {
   value = "${aws_efs_mount_target.alpha.dns_name}"
   }
