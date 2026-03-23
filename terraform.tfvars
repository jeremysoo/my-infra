# OCI Region
region = "ap-singapore-1"

# Tenancy OCID (from OCI Console → Tenancy)
tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaasgkxowusgf3m5j7rmkfgml3izoeowakpylf5w6syg52dwzj6h4ca"

# User OCID (from OCI Console → Users → Your User → API Keys)
user_ocid = "ocid1.user.oc1..aaaaaaaatkxsyxrmq7o36xqn3cn6ig5hz4lhk2zpu63ngytaupeno75qfeta"

# API Key Fingerprint (matches public key uploaded to OCI)
fingerprint = "5b:b5:08:95:d7:8b:61:7a:24:6a:76:0e:b3:38:85:97"

# Path to your private key (PEM format, no passphrase)
private_key_path = "/c/Users/roari/oci_api_key.pem"

# Compartment OCID (where your resources will be created)
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaawtz5rnohfxwdtcgwfy3yfhfdiuqk2l52qjjv3rjnzqvfdfiewilq"

workload_x_cidr              = "10.1.0.0/16"
workload_x_web_subnet        = "10.1.1.0/24"
workload_x_interfacing_subnet= "10.1.2.0/24"

workload_y_cidr              = "10.2.0.0/16"
workload_y_web_subnet        = "10.2.1.0/24"
workload_y_interfacing_subnet= "10.2.2.0/24"

workload_z_cidr              = "10.3.0.0/16"
workload_z_web_subnet        = "10.3.1.0/24"
workload_z_interfacing_subnet= "10.3.2.0/24"
