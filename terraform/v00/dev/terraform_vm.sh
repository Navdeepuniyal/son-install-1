#!/bin/bash
terraform plan
terraform apply
terraform output > floatingip
