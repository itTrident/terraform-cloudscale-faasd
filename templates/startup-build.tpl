#cloud-config
runcmd:
  - mkdir -p /var/lib/faasd/secrets/
  - echo ${basic_auth_user} > /var/lib/faasd/secrets/basic-auth-user
  - echo ${basic_auth_password} > /var/lib/faasd/secrets/basic-auth-password
  - export FAASD_DOMAIN=${faasd_domain_name}
  - export LETSENCRYPT_EMAIL=${letsencrypt_email}
  - wget https://raw.githubusercontent.com/openfaas/faasd/master/hack/install.sh
  - chmod 777 install.sh
  - ./install.sh
  
