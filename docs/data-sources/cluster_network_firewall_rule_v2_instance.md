---
page_title: "instaclustr_cluster_network_firewall_rule_v2_instance Data Source - terraform-provider-instaclustr"
subcategory: ""
description: |-
---

# instaclustr_cluster_network_firewall_rule_v2_instance (Data Source)
Definition of an CIDR based firewall rule to be applied to a cluster.
## Example Usage
```
data "instaclustr_cluster_network_firewall_rule_v2_instance" "example" { 
  id = "<id>" // the value of the `id` attribute defined in the root schema below
}
```
## Glossary
The following terms are used to describe attributes in the schema of this data source:
- **_read-only_** - These are attributes that can only be read and not provided as an input to the data source.<br><br>
- **_required_** - These attributes must be provided for the data source's information to be queried.<br><br>
- **_nested block_** - These attributes use the [Terraform block syntax](https://www.terraform.io/language/attr-as-blocks) when defined as an input in the Terraform code. Attributes with the type **_repeatable nested block_** are the same except that the nested block can be defined multiple times with varying nested attributes. When reading nested block attributes, an index must be provided when accessing the contents of the nested block, example - `my_resource.nested_block_attribute[0].nested_attribute`.
# Schema
## Read-only attributes
### status<br>
<ins>Type</ins>: string, read-only<br>
<br>The status of the cluster network firewall rule.
### deferred_reason<br>
<ins>Type</ins>: string, read-only<br>
<br>The reason (if needed) for the deferred status of the cluster network firewall rule.
### id<br>
<ins>Type</ins>: string (uuid), read-only<br>
<br>ID of the cluster network firewall rule.
### type<br>
<ins>Type</ins>: string, read-only<br>
<ins>Constraints</ins>: allowed values: [ `APACHE_ZOOKEEPER`, `CADENCE`, `CADENCE_GRPC`, `CADENCE_WEB`, `CASSANDRA`, `CASSANDRA_CQL`, `ELASTICSEARCH`, `KAFKA`, `KAFKA_CONNECT`, `KAFKA_REST_PROXY`, `KAFKA_SCHEMA_REGISTRY`, `KARAPACE_REST_PROXY`, `KARAPACE_SCHEMA_REGISTRY`, `OPENSEARCH`, `OPENSEARCH_DASHBOARDS`, `PGBOUNCER`, `POSTGRESQL`, `REDIS`, `SEARCH_DASHBOARDS`, `SECURE_APACHE_ZOOKEEPER`, `SPARK`, `SPARK_JOBSERVER` ]<br><br>The type of firewall rule.
### cluster_id<br>
<ins>Type</ins>: string (uuid), read-only<br>
<br>ID of the cluster for the cluster network firewall rule.
### network<br>
<ins>Type</ins>: string, read-only<br>
<br>The network of the cluster network firewall rule.