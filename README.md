# LLM Healthe Careers Job Search

## Description

A reference business application for healthcare job search, leveraging Generative AI. This project includes .NET, Django, Java, and Node.js applications for searching and managing job postings, as well as data generation and analytics. It utilizes AWS services such as ECS, S3, RDS, OpenSearch, and Bedrock Claude to create a robust, multi-environment infrastructure.

## Features

- **Multi-environment support**: Separate configurations for development, QA, pre-production, and production environments.
- **Modular architecture**: Independent AWS CDK projects for each application component.
- **AI Integration**: Utilizes AWS Bedrock Claude for AI-powered search and data analysis.
- **Comprehensive data management**: Supports data generation, ingestion, and analytics using S3 and OpenSearch.

## Setup and Deployment

### Prerequisites

- [AWS CLI](https://aws.amazon.com/cli/)
- [AWS CDK](https://aws.amazon.com/cdk/)
- [Terraform](https://www.terraform.io/)
- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)

### AWS CLI Configuration

1. Configure your AWS CLI with the necessary profiles:

```ini
[llm_search_jobs_app_dev]
aws_access_key_id = YOUR_DEV_ACCESS_KEY_ID
aws_secret_access_key = YOUR_DEV_SECRET_ACCESS_KEY

[llm_search_jobs_app_prod]
aws_access_key_id = YOUR_PROD_ACCESS_KEY_ID
aws_secret_access_key = YOUR_PROD_SECRET_ACCESS_KEY

[profile llm_search_jobs_app_dev]
region = us-east-1
output = json

[profile llm_search_jobs_app_prod]
region = us-east-1
output = json
```

2. Install Dependencies

```shell
npm install
```

3. Deployment Commands

Use the npm scripts to deploy the infrastructure and applications.

4. Infrastructure Setup
```shell
npm run infra:dev

npm run infra:qa

npm run infra:preprod

npm run infra:prod

npm run infra:training

```

5. Application Deployment

```shell
npm run deploy:dotnet:dev

npm run deploy:dotnet:qa

npm run deploy:dotnet:prod

npm run deploy:dotnet:training

npm run deploy:django:dev

npm run deploy:django:qa

npm run deploy:django:preprod

npm run deploy:django:prod

npm run deploy:django:training

npm run deploy:java:dev

npm run deploy:java:qa

npm run deploy:java:prod

npm run deploy:java:training

npm run deploy:nodejs:dev

npm run deploy:nodejs:qa

npm run deploy:nodejs:preprod

npm run deploy:nodejs:prod

npm run deploy:nodejs:training

`