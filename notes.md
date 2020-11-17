# AWS Notes

## Table of Contents
* [Introduction to AWS services](#Introduction-to-AWS-services)
* [AWS Cloudwatch Notes](#AWS-Cloudwatch-Notes)

### Introduction to AWS services
#### AWS Global Data Centers
* `AWS Region`: Whenever we are using AWS services typically we deploy our application in AWS geographical area. That geographical area is called `AWS Regions`
* Across world there are different AWS regions available
* When we deploy services, we can choose which regions we need to deploy
* `Data Centers`: Every region contains - 2 or more data centers for high availability of AWS services
* `Availability Zones`: 2 or more data centers are called availability zones
* `Edge Locations`: Used for caching. Our content like media, videos, pictures are cached in the nearest AWS data center locations and delivered to users. It improves performance by lowering the network latency
* AWS have `130+ services` like EC2, S3 etc\
![picture](images/region-availability-zones.jpg)
* Each `Region` will have 2 or more availability zones
* when we are deploying our application we need to keep in different availability zones so that if one of the availability zone goes down then our application still running on another availability zone. So our application will have high availability
* Services and at what level they work\
![picture](images/account-users-services-scope.jpg)
* Following services work at account level
	* Billing
	* IAM - Identity and Access Management
	* Route53
* Region level services
	* S3
	* DynamoDB
* Availability zone level
	* EC2
	* RDS
	* EBS
* General application architecture\
![picture](images/application-architecture.jpg)
* Above application architecture with AWS services\
![picture](images/aws-application-architecture.jpg)
* Application services\
![picture](images/aws-application-services.jpg)
* Security services
	* IAM - Identity and Access Management
	* KMS - Key Management Service
		* To encrypt data
	* ACM - Amazon Certificate Manager
		* For digital certificates to write https APIs and security
	* WAF - Web Application Firewall
		* Application firewalls
	* Inspector
		* Keep in EC2 instances
		* Scans instances for any vulnerabilities. This is used for getting compliance like HIPPA etc\
![picture](images/security-services.jpg)
* Development and Devops services
	* CloudFormation
		* Takes template in `json` or `yaml` format
		* Create infrastructre with all services (check image above) from scratch
	* CodeCommit
		* Similar to GIT where we can check in the code
	* CodeBuild
		* To build application
		* Takes source code (written Java, Python etc) and builds it using build tools like Maven, Gradle etc
		* Produces artifacts (application executables)
	* CodeDeploy
		* For deployment
		* To deploy artifacts in EC2
	* CodePipeline
		* To build CI pipeline with above services
	* CodeStar
		* Project management
		* Issue tracking\
![picture](images/devops-services.jpg)

### AWS Cloudwatch Notes
#### Stream EC2 logs to Cloud watch and create alarm based on log message
![picture](images/cloud-watch/stream-logs-cloud-watch-create-alarm-flow.jpg)