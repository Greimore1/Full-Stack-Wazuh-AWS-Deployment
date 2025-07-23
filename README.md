This project deploys a single-node Wazuh all-in-one stack (Wazuh Manager, Indexer, and Dashboard) on an AWS EC2 instance using Terraform. The goal was to build and destroy a fully functional Wazuh monitoring lab with minimal manual intervention.
 Overview

    Platform: AWS Free Tier (t3.micro)

    Provisioning: Terraform

    OS: Ubuntu 22.04

    Components:

        Wazuh Manager

        Wazuh Indexer (OpenSearch-based)

        Wazuh Dashboard

    Security:

        Hardened securityconfig setup

        Custom IAM role and SG rules

    Use Case:

        Log ingestion and detection lab with room for future cross-platform ingestion (Linux + Windows)

Infrastructure Summary

    provider.tf: AWS provider config.

    data.tf: Fetches availability zones, Ubuntu AMIs, etc.

    ec2.tf: Launches an EC2 instance with user_data script to install and configure Wazuh.

    sg.tf: Defines security group with tight IP-based access control.



 Screenshots

See the numbered screenshots in the images/ directory:

   1. Wazuh Dashboard login

   2. Main Dashboard

   3. Agent status

   4. Event logs

   5. Detection overview
