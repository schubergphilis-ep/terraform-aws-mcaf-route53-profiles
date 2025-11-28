resource "aws_route53profiles_profile" "default" {
  region = var.region
  name   = var.name
}

resource "aws_route53profiles_resource_association" "default" {
  for_each = var.associated_resources

  region       = var.region
  name         = each.key
  profile_id   = aws_route53profiles_profile.default.id
  resource_arn = each.value
}
