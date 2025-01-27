provider "instaclustr" {
    username = "%s"
    api_key = "%s"
    api_hostname = "%s"
}

resource "instaclustr_cluster" "invalid" {
    cluster_name = "testcluster"
    node_size = "t3.small"
    data_centre = "US_WEST_2"
    sla_tier = "NON_PRODUCTION"
    cluster_network = "192.168.0.0/18"
    private_network_cluster = false
    cluster_provider = {
        name = "AWS_VPC"
    }
    rack_allocation = {
        number_of_racks = 3
        nodes_per_rack = 1
    }

    bundle {
        bundle = "APACHE_CASSANDRA"
        version = "3.11.4"
        options = {
            client_encryption = true
        }
    }

    bundle {
        bundle = "SPARK"
        version = "2.3.2"
    }
}
