**Amazon Cloud Access**

Create a Programmatic Access Key User
You need to a IAM User - > Login -> AWS Console -> Search (IAM) -> Create User (terraform) -> Enable Programmatic Access -> Attach Existing Policy (EC2FullAccess) -> Create & Download Keys.

Now export the AWS Keys into Env. Variables. DO this in root folder as .bashrc is present there

echo "export AWS_ACCESS_KEY_ID="XXXXXXXXXXXX" " >> .bashrc

echo "export AWS_SECRET_ACCESS_KEY="XXXXXXYYYYYYYYYYYYYYYYYYYYYYYYYYY" " >>  .bashrc

source  .bashrc

set | grep -i AWS
