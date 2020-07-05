resource "aws_kms_key" "key" {
   description             = "${var.description}"
   key_usage               = "ENCRYPT_DECRYPT"
   policy                  = "${var.key_policy}"
   is_enabled              = true

   tags {
      Description   = "${var.description}"
      Environment   = "${var.environment}"
      Name          = "${var.alias_name}"
      ManagedBy     = "terraform"
   }
}

resource "aws_kms_alias" "key_alias" {
  name          = "alias/${var.alias_name}"
  target_key_id = "${aws_kms_key.key.id}"
}
