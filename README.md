# sergio21sem_infra
sergio21sem Infra repository

bastion_IP = 51.250.78.165
someinternalhost_IP = 10.128.0.11

## ДЗ по теме: "Знакомство с облачной инфраструктурой и облачными сервисами "
## Подключиться к хосту someinternalhost через bastion можно следующим образом:
```
ssh -J appuser@{bastion_external_ip_addr} appuser@{someinternalhost_internal_ip_addr}
```

в качестве альтернативы, можно воспольсоваться ssh_config:

создаем файл .ssh/config и добавляем в него конфиг следующего вида:

```
##test
Host someinternalhost *internalhost
  Hostname %h
  ProxyJump bastion
  User appuser
Host bastion
  Hostname 62.84.119.145
  User appuser
  ```

далее: ssh someinternalhost

## HW6 Основные сервисы Yandex Cloud
testapp_IP = 158.160.102.90
testapp_port = 9292


[OAuth Token](https://oauth.yandex.ru/authorize?response_type=token&client_id=1a6990aa636648e9b2ef855fa7bec2fb)

## Main Part

### Preps

New branch **terraform-1**


Trying to init
```
terraform init
terraform plan
terraform apply
terraform show
terraform destroy
```
Done!

Adding metadata with ssh key to **"app"** resource.
```
terraform apply
ssh ubuntu@<ip.yandex.app>
```
Done!

Docs:
https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-quickstart#install-terraform
https://cloud.yandex.ru/docs/application-load-balancer/operations/target-group-create
https://terraform-provider.yandexcloud.net/Resources/lb_target_group
https://terraform-provider.yandexcloud.net/Resources/lb_network_load_balancer
https://cloud.yandex.ru/docs/network-load-balancer/operations/load-balancer-create
### Output variables
Make file **otputs.tf** at /terraform
```



###ANSIBLE

после удаления директории reddit, плейбук повторно склонировал репу
TASK [Gathering Facts] *******************************************************************************************************************************************************************************************
ok: [appserver]

TASK [Clone repo] ************************************************************************************************************************************************************************************************
changed: [appserver]

PLAY RECAP *******************************************************************************************************************************************************************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0


HW *
1. inventory_static.json - статический инвентори в формате json ( проверил, отрабатывает)
2.



Ansible
install community.general collection:

ansible-galaxy collection install -r requirements.yml
