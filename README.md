# Домашняя работа "Централизованный сбор логов в кластер Elasticsearch"

Цель работы - реализация очереди для сборщика логов в Elasticsearch с помощью Kafka.

В качестве основы для выполнения данного занятия взята предыдущая работа "Централизованный сбор логов в кластер Elasticsearch" (https://github.com/Esperakus/homework_elastic). К существующим виртуальным машинам той работы добавлена ВМ с Kafka и Kafka Connect.


Схема проекта:

![project](https://github.com/Esperakus/homework_kafka/blob/main/pics/pic3.png)

Для разворачивания проекта необходимо:

1. Заполнить значение переменных cloud_id, folder_id и iam-token в файле **variables.tf**.

2. Инициализировать рабочую среду Terraform:

```
$ terraform init
```
В результате будет установлен провайдер для подключения к облаку Яндекс.

3. Запустить разворачивание:
```
$ terraform apply
```
По окончании разворачивания в выходных данных будут показаны все внешние и внутренни ip адреса. 

```
# Пример вывода terraform apply:

Apply complete! Resources: 22 added, 0 changed, 0 destroyed.

Outputs:

external_ip_address_ansible = [
  "158.160.121.59",
]
external_ip_address_kibana = [
  "158.160.115.67",
]
...
```

Для проверки результатов работы можно зайти в Kibana, удостовериться, что создались индексы nginx и backend и что они содержат документы. Также в Kibana можно сделать запросы в Elasticsearch, например:

```
GET /nginx/_search
{
  "query": {
    "match_all": {}
  }
}
```

Примеры того как выглядят собранные логи в кибане:
![kafka1](https://github.com/Esperakus/homework_kafka/blob/main/pics/pic1.png)
![kafka2](https://github.com/Esperakus/homework_kafka/blob/main/pics/pic2.png)
