# boto3 is an AWS SDK for python. allows interacting with various AWS services     
import boto3

region = 'ap-south-1'
ecr_client = boto3.client('ecr', region_name=region)

repository_name = "my-cloud-ative-repo"
response = ecr_client.create_repository(repositoryName=repository_name)

repository_uri = response['repository']['repositoryUri']
print(repository_uri)
#32:00