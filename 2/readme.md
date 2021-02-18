# Week 2 Scripting Like a developer


## How to configure Python Tasks
To install AWS Boto3 library: ```pip install Boto3```

To install python linter: ```sudo pip3 install pylint```

## Configure AWS CLI
* To configure AWS locally: ```aws configure```
* Then configure Access key details, deafult region and output format

## Examples

```
import sys
import boto3


try:
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name):
    s3_bucket=boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',
    )

    print(bucket)

bucket_name = sys.argv[1]

if __name__ == '__main__':
    main()

# Enter the following:  python ./s3Bucket.py kscloudskills2
# where kscloudskill is the bucket name
```

## How to configure Powershell Task
Ensure PSScriptAnalyzer module is installed: ```Install-Module -Name PSScriptAnalyzer```

Run this task as the cmd line: ```Invoke-ScriptAnalyzer -path .```

## Examples

```
function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]

    param (
        # Parameter help description
        [Parameter(Mandatory)]
        [string]$rgName,

        [Parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name'     = $rgName
        'Location' = $location
    }

    if ($PSCmdlet.ShouldProcess('location')) {
        New-AzResourceGroup @params
    }   
}
```
