
#### `aws_ec2_inventory.py`

import subprocess
import json

def get_instance_ip(profile, tag_name):
    cmd = [
        'aws', 'ec2', 'describe-instances',
        '--profile', profile,
        '--filters', f'Name=tag:Name,Values={tag_name}',
        '--query', 'Reservations[*].Instances[*].PublicIpAddress',
        '--output', 'json'
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    ip_addresses = json.loads(result.stdout)
    if ip_addresses and ip_addresses[0]:
        return ip_addresses[0][0]
    else:
        raise ValueError(f"No instances found for tag: {tag_name}")

if __name__ == "__main__":
    environments = {
        "dev": "dev-tag",
        "qa": "qa-tag",
        "preprod": "preprod-tag",
        "prod": "prod-tag",
        "training": "training-tag"
    }
    inventory = {"all": {"hosts": {}}}
    for env, tag in environments.items():
        try:
            ip = get_instance_ip(f"llm_search_jobs_app_{env}", tag)
            inventory["all"]["hosts"][env] = {"ansible_host": ip}
        except ValueError as e:
            print(e)
    print(json.dumps(inventory, indent=2))
