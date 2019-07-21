aws s3 mb s3://andy-deploy-cloud
aws s3 cp ".\cloud_formation.json" s3://andy-deploy-cloud
aws cloudformation create-stack \
    --stack-name myteststack \
    --template-url  https://s3.amazonaws.com/andy-deploy-cloud/cloud_formation.json