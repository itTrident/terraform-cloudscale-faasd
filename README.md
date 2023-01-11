# terraform-Cloudscale-faasd

This repo contains a Terraform plan for deploying [faasd](https://github.com/openfaas/faasd) instance on
Cloudscale 

__faasd__, a lightweight & portable faas engine, is [OpenFaaS](https://github.com/openfaas/) reimagined, but without the cost and complexity of Kubernetes. It runs on a single host with very modest requirements, making it fast and easy to manage. Under the hood it uses [containerd](https://containerd.io/) and [Container Networking Interface (CNI)](https://github.com/containernetworking/cni) along with the same core OpenFaaS components from the main project.

## Requirements

| Name | Version |
| ---- | ------- |
| terraform | >=1.0.0 |
| Cloudscale | >=4.1.0 |
| random | >=3.1.2 |

## Providers

|Name | Version |
| --- | ------- |
| Cloudscale | >=4.1.0 |
| random | >=3.1.2 |

## Terraform Resources

| Name | Type |
| ---------| ------------|
| cloudscale_server_group | Resource |
| cloudscale_server | Resource | 
| random_password | Resource |

## Values

| Name | Description | Type | Required|
| ---- | ----------- | ---- | ------- |
| `hostname` | Hostname for Cloudscale instance  | string | yes |
| `zoneslug` | Cloudscale server zone | string | yes |
| `imageslug` | OS  for the Cloudscale instance |  string | yes |
| `flavorslug` | memory for the Cloudscale instance |  string | yes |
| `instance_username` | Username for instance to login |  string | yes |
| `public_key` | SSH key path for authentication | string | yes |
| `domain` | Set the domain name for instance | string | no |
| `email` | Set the email | string | no |
| `basic_auth_user` | The basic auth user name | string | no |
| `basic_auth_password` | The basic auth password, if left empty, a random password is generated | string | no |
| `token` | Cloudscale token for authentication | string | yes |


## Output

| Name | Description |
| ---- | ----------- |
| user_name | The basic auth user name. |
| password | Path of basic auth password. |
| instance_username | The username for faasd instance |
| faasdserver_ip | The public ip of the faasd instance |



## See Also

- [faasd on Amazon Web Services with Terraform](https://github.com/jsiebens/terraform-aws-faasd)
- [faasd on Google Cloud Platform with Terraform](https://github.com/jsiebens/terraform-google-faasd)
- [faasd on Microsoft Azure with Terraform](https://github.com/jsiebens/terraform-azurerm-faasd)
- [faasd on DigitalOcean with Terraform](https://github.com/jsiebens/terraform-digitalocean-faasd)
- [faasd on Equinix Metal with Terraform](https://github.com/jsiebens/terraform-equinix-faasd)
- [faasd on Scaleway with Terraform](https://github.com/jsiebens/terraform-scaleway-faasd)
- [faasd on Exoscale with Terraform](https://github.com/itTrident/terraform-exoscale-faasd)
- [faasd on Linode with Terraform](https://github.com/itTrident/terraform-linode-faasd)
- [faasd on Vultr with Terraform](https://github.com/itTrident/terraform-vultr-faasd)
