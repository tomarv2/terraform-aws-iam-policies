# file generated by wrapper script to configure backend
# do not edit or delete!

terraform {
	backend "s3" {
		endpoint = "s3-fips.us-west-2.amazonaws.com"
		workspace_key_prefix = "delme"
	}
}
