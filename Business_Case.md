# Business Case: Creation of a Publicly Accessible Google Cloud Storage Bucket

## Company Overview

**Tech Innovators Inc.** is a leading technology company specializing in cloud-based solutions and digital transformation. With offices across North America and Europe, the company is committed to leveraging cutting-edge technology to enhance business operations, improve user experience, and drive innovation. Our team of experts is dedicated to delivering high-quality services and solutions to our diverse clientele, ensuring they stay ahead in a rapidly evolving digital landscape.

## Business Problem

The primary business challenge is to establish an efficient, scalable, and cost-effective solution for hosting static content, such as an `index.html` file, that is easily accessible to users worldwide. The current traditional web servers and static file hosting solutions are resource-intensive and lack scalability, which hampers the company's ability to provide a seamless user experience and manage operational costs effectively.



## Solution Concept

**Objective**: To establish a publicly accessible Google Cloud Storage (GCS) bucket for hosting static content, such as an `index.html` file, enabling easy access for users worldwide.

## Existing Technical Environment

- **Current Setup**: Tech Innovators Inc. utilizes Google Cloud Platform (GCP) for its cloud infrastructure, with multiple projects and resources deployed across various regions.
- **Content Hosting**: Currently, the company uses traditional web servers and static file hosting solutions, which are resource-intensive and lack scalability.

## Business Requirements

1. **Public Accessibility**: Enable public access to static content hosted on GCS, ensuring ease of access for all users without requiring authentication.
2. **Cost-Effective Solution**: Implement a cost-effective solution for hosting static content, minimizing operational costs while maintaining performance and reliability.
3. **Scalability**: Design the solution to be scalable, accommodating future growth and increasing traffic without performance degradation.
4. **Simplicity and Automation**: Leverage infrastructure as code (IaC) with Terraform to automate the deployment, configuration, and management of the GCS bucket.

## Technical Requirements

### GCS Bucket Creation:

- **Bucket Configuration**: Create a Google Cloud Storage bucket with public access permissions.
- **Index File**: Upload an `index.html` file to the bucket, serving as the entry point for public access.

### Terraform Implementation:

- **Script Development**: Develop a Terraform script to define and deploy the GCS bucket and upload the `index.html` file.
- **GitHub Integration**: Push the Terraform script and `index.html` file to a GitHub repository for version control and collaboration.

### Output Configuration:

- **Public URL**: Configure Terraform to output the public URL of the `index.html` file, allowing easy access and verification.

## Proposed Solution

### GCP Infrastructure Details:

- **Bucket Type**: GCP Standard Bucket Type
- **Permissions**: Public read access enabled
- **Index File**: `index.html` with basic welcome content

### Terraform Script Overview:

- **Provider Configuration**: Specify the GCP provider with the appropriate project and region.
- **Bucket Resource**: Define the GCS bucket resource with public access settings.
- **Object Resource**: Upload the `index.html` file to the bucket.
- **Output Configuration**: Display the public URL of the `index.html` file.