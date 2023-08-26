### Start LocalStack

Start LocalStack

```plain
localstack start -d
```{{exec}}

<br>

### Create an S3 bucket

```plain
awslocal s3 mb s3://test
```{{exec}}

### Create a Lambda function

Install ZIP package:

```plain
apt install zip
```{{exec}}

Create new Lambda file:

```plain
echo 'def handler(*args, **kwargs):' > /tmp/testlambda.py && echo '  print("Debug output from Lambda function")' >> /tmp/testlambda.py
```{{exec}}

Package the Lambda:

```plain
(cd /tmp; zip testlambda.zip testlambda.py)
```{{exec}}

Create a Lambda function

```plain
awslocal lambda create-function \
  --function-name func1 \
  --runtime python3.8 \
  --role arn:aws:iam::000000000000:role/lambda-role \
  --handler testlambda.handler \
  --timeout 30 \
  --zip-file fileb:///tmp/testlambda.zip
```{{exec}}

Wait for few seconds. Invoke the Lambda function

```plain
awslocal lambda invoke --function-name func1 output.txt
```{{exec}}

Show the contents of the output file

```plain
cat output.txt
```{{exec}}

