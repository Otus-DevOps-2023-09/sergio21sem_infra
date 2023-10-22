# sergio21sem_infra
sergio21sem Infra repository

bastion_IP = 84.201.131.34
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
