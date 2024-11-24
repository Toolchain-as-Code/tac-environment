############################################################
########### Docker Container for Deno Application ##########
################## INTEGRATION ENVIRONMENT #################
############################################################

########## AUTHOR:  Jan Rother
########## DATE:    2024-12
########## VERSION: 1.0

# |---------------------- Environment ---------------------|
ARG BASE_REPOSITORY=docker.io/library
ARG BASE_IMAGE=tac-environment
ARG BASE_ENVIRONMENT=base
ARG BASE_RELEASE=latest

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_REPOSITORY}/${BASE_IMAGE}:${BASE_ENVIRONMENT}-${BASE_RELEASE} AS base

# |----------------------- Packages -----------------------|
# None.

# |--------------------- Customization --------------------|
# None.

# |----------------------- Finalize -----------------------|
# Done.

############################################################
