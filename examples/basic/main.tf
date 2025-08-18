module "route53_profile" {
  source  = "schubergphilis/mcaf-route53-profiles/aws"
  version = "~> 1.0.0"

  name = "profile-1"
  associated_resources = {
    resolver-rule-1 = "arn:aws:route53resolver:eu-central-1:123456789012:resolver-rule/rslvr-rr-01a2bcd3456e7890f"
    resolver-rule-2 = "arn:aws:route53resolver:eu-central-1:123456789012:resolver-rule/rslvr-rr-02a2bcd3456e7890f"
  }
}
