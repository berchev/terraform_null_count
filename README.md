# terraform_null_count

Content of this repo is a guideline on HOW to use **null** provider and **count** in terraform.

**Note that all this is tested on Ubuntu OS**

## PreRequirements
- You need to have Terraform tool installed

## Repo content
- `main.tf` - Terraform configuration file

## Instructions on how to install **Terraform**
- Download required package from [here](https://www.terraform.io/downloads.html)
- Change to directory where package is download. For example: `cd $HOME/Downloads/` 
- Type on your terminal: `unzip <Downloaded_TF_Package>`
- Type on your terminal: `sudo mv terraform /usr/local/bin/`
- Check whether Terraform is available with:  `terraform --version` command


## Instructions HOW to prepare your PC environment for this **Terraform project**
- Download the repo **berchev/terraform_null_count**: `git clone https://github.com/berchev/terraform_null_count.git`
- Change to terraform_null_count: `cd terraform_null_count`
- Type in your terminal `terraform init` in order to be downloaded required providers
- Type in your terminal `terraform plan` in order to see the changes which terraform is going to be made
- Type in your terminal `terraform apply` execute changes bases on our code(main.tf)

## Expected results
The terraform code will create three resources `georgiman1`, `georgiman2` and `georgiman3`  

Example: 
```
gberchev@BerchevPC terraform_null_count (index_start_from_1) $ terraform show
null_resource.georgiman.0:
  id = 741246176885246247
  triggers.% = 1
  triggers.build_number = georgiman1
null_resource.georgiman.1:
  id = 7171658210858853968
  triggers.% = 1
  triggers.build_number = georgiman2
null_resource.georgiman.2:
  id = 3740730714709065017
  triggers.% = 1
  triggers.build_number = georgiman3

```
## Remove all created with Terraform
- Type in your terminal `terraform destroy` in order to delete all created null resources **georgiman1, georgiman2 and georgiman3**
