# TechTest

Created a vm module making it easier to reuse across multiple environments in line with the DRY principle
- Tested this out out locally by creating a remote storage account and container to store the state file

    
Improvements:
- Deploying to different envs:
    - A separate repo for the vm module  making use of conventional commits and semantic versioning
    - Create an account for each environment
    files 
    - Pipeline
        - I wouldn’t keep the storage account keys or backend values within the code base. it would be stored as environment variables within the pipeline linking it to Azure Key vault
    - Terraform
        - Better state file management- Use the pipeline to deploy resources by selecting the `<env>.tfvars` and dynamically creating a state file for each environment using parameters/vars instead of using the same state file and instead of repeating the module blocks per env
        - Could use workspaces to seperate out envs, versioning state files, and enabling state locking
        -  Have a centralised place for storing state 
        - .tfvars for each environment 
        
- Styling:
    -   Tags e.g. owner, environnment
    -   Better naming conventions for variables instead of `example`
    -   Variable descriptions  and comments to explain what each line of code does
    -   adding more output variables allowing e.g. names, and ids  of resources to be utilised outside of the child module files
    -   adding the option between using a linux or windows virtual machine and the ability to enable/disable features 
    -   Using locals, and built in functions
 
- Monitoring for each account to detect malicious logins and network issues
- back up strategy would involve:
    - **azurerm_backup_policy_vm**
    - also depending on the type of subnet the vm is placed in, NAT gateways, IGW, route tables and routes will need to be created
    - having vm's across multiple availability zones for failover
