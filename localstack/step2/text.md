### Create a new DynamoDB table

```plain
awslocal dynamodb create-table \
    --table-name global01 \
    --key-schema AttributeName=id,KeyType=HASH \
    --attribute-definitions AttributeName=id,AttributeType=S \
    --billing-mode PAY_PER_REQUEST \
    --region ap-south-1
```{{exec}}

### Create a replica

```plain
awslocal dynamodb update-table \
    --table-name global01 \
    --replica-updates '[{"Create": {"RegionName": "eu-central-1"}}, {"Create": {"RegionName": "us-west-1"}}]' \
    --region ap-south-1
```{{exec}}

### Add data in the table

```plain
awslocal dynamodb put-item \
    --table-name global01 \
    --item '{"id":{"S":"foo"}}' \
    --region eu-central-1
```{{exec}}

### Describe the DynamoDB table

```plain
awslocal dynamodb describe-table \
    --table-name global01 \
    --query 'Table.ItemCount' \
    --region ap-south-1
```{{exec}}
