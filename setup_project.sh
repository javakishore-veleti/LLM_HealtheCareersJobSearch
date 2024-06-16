#!/bin/bash

# Root directory
mkdir -p ../LLM_HealtheCareersJobSearch

cd ../LLM_HealtheCareersJobSearch

# Create directories for infrastructure
mkdir -p infrastructure/ansible_playbooks/playbooks
mkdir -p infrastructure/ansible_playbooks/roles/terraform_role/tasks
mkdir -p infrastructure/ansible_playbooks/roles/cdk_role/tasks
mkdir -p infrastructure/ansible_playbooks/roles/common_role/tasks
mkdir -p infrastructure/ansible_playbooks/inventory
mkdir -p infrastructure/terraform_configs/dev_qa_preprod
mkdir -p infrastructure/terraform_configs/prod
mkdir -p infrastructure/terraform_configs/training

# Create directories for apps
mkdir -p apps/search_jobs_dotnet_app/{dev,qa,preprod,prod,training}
mkdir -p apps/search_jobs_django_app/{dev,qa,preprod,prod,training}
mkdir -p apps/search_jobs_java_app/{dev,qa,preprod,prod,training}
mkdir -p apps/search_jobs_nodejs_app/{dev,qa,preprod,prod,training}

# Create README.md
touch README.md

# Create package.json
touch package.json

# Create Ansible playbooks

# create_infrastructure.yml
touch infrastructure/ansible_playbooks/playbooks/create_infrastructure.yml

# deploy_dotnet_app.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_dotnet_app.yml

# deploy_django_app.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_django_app.yml

# deploy_java_app.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_java_app.yml

# deploy_nodejs_app.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_nodejs_app.yml

# deploy_data_generator.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_data_generator.yml

# deploy_datalake_analytics.yml
touch infrastructure/ansible_playbooks/playbooks/deploy_datalake_analytics.yml

# Create role tasks main.yml files
touch infrastructure/ansible_playbooks/roles/terraform_role/tasks/main.yml
touch infrastructure/ansible_playbooks/roles/cdk_role/tasks/main.yml
touch infrastructure/ansible_playbooks/roles/common_role/tasks/main.yml

# Create inventory files
touch infrastructure/ansible_playbooks/inventory/dev
touch infrastructure/ansible_playbooks/inventory/qa
touch infrastructure/ansible_playbooks/inventory/preprod
touch infrastructure/ansible_playbooks/inventory/prod
touch infrastructure/ansible_playbooks/inventory/training

# Create Terraform configuration files
touch infrastructure/terraform_configs/dev_qa_preprod/main.tf
touch infrastructure/terraform_configs/prod/main.tf
touch infrastructure/terraform_configs/training/main.tf

# Create application files
touch apps/search_jobs_dotnet_app/dev/{app.py,dotnet_stack.py}
touch apps/search_jobs_dotnet_app/qa/{app.py,dotnet_stack.py}
touch apps/search_jobs_dotnet_app/preprod/{app.py,dotnet_stack.py}
touch apps/search_jobs_dotnet_app/prod/{app.py,dotnet_stack.py}
touch apps/search_jobs_dotnet_app/training/{app.py,dotnet_stack.py}

touch apps/search_jobs_django_app/dev/{app.py,django_stack.py}
touch apps/search_jobs_django_app/qa/{app.py,django_stack.py}
touch apps/search_jobs_django_app/preprod/{app.py,django_stack.py}
touch apps/search_jobs_django_app/prod/{app.py,django_stack.py}
touch apps/search_jobs_django_app/training/{app.py,django_stack.py}

touch apps/search_jobs_java_app/dev/{app.py,java_stack.py}
touch apps/search_jobs_java_app/qa/{app.py,java_stack.py}
touch apps/search_jobs_java_app/preprod/{app.py,java_stack.py}
touch apps/search_jobs_java_app/prod/{app.py,java_stack.py}
touch apps/search_jobs_java_app/training/{app.py,java_stack.py}

touch apps/search_jobs_nodejs_app/dev/{app.py,nodejs_stack.py}
touch apps/search_jobs_nodejs_app/qa/{app.py,nodejs_stack.py}
touch apps/search_jobs_nodejs_app/preprod/{app.py,nodejs_stack.py}
touch apps/search_jobs_nodejs_app/prod/{app.py,nodejs_stack.py}
touch apps/search_jobs_nodejs_app/training/{app.py,nodejs_stack.py}

npm install
