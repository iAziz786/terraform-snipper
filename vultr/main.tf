# Configure the Vultr Provider
provider "vultr" {
  # Create API Key from https://my.vultr.com/settings/#settingsapi
  api_key = "VULTR_API_KEY"
  # Vultr limits API calls to 3 calls per second
  rate_limit = 700
  # If many retires should be attempted on a failed call
  retry_limit = 3
}

# Get details of each field from: https://www.vultr.com/api/
resource "vultr_server" "freebsd_server" {
  # Pricing and configs: https://api.vultr.com/v1/plans/list?type=vc2
  plan_id = "204" # 8192 MB RAM,160 GB SSD,4.00 TB BW

  # JSON of region list: https://api.vultr.com/v1/regions/list
  region_id = "40" # Singapore

  # JSON of os list: https://api.vultr.com/v1/os/list
  os_id = "327" # FreeBSD

  # JSON of list: https://www.vultr.com/api/#sshkey_sshkey_list
  ssh_key_ids = ["SSH_KEY_ID"]
}
