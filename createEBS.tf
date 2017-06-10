resource "aws_ebs_volume" "ebslogsofdev2" {
    availability_zone = "${var.INSTANCEZONE}"
    size = 40
    type = "gp2"
    encrypted = "false"
    tags {
        Name = "ebslogsofdev2"
    }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "${var.DEVICENAME}"
  volume_id   = "${aws_ebs_volume.ebslogsofdev2.id}"
  instance_id = "${var.INSTANCEID}"
}
