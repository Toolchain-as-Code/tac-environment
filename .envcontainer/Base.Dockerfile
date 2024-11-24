############################################################
########### Docker Container for Deno Application ##########
##################### BASE ENVIRONMENT #####################
############################################################

########## AUTHOR:  Jan Rother
########## DATE:    2024-12
########## VERSION: 1.0

# |---------------------- Environment ---------------------|
ARG DENO_VERSION=2.1.0

ARG BASE_REPOSITORY=denoland
ARG BASE_IMAGE=deno
ARG BASE_ENVIRONMENT=debian
ARG BASE_RELEASE=${DENO_VERSION}

##### NOTE:
##### Because of a current issue with the Base Image of Deno
##### for the Alpine Linux, which seems to be caused by some
##### incompatibilities with the musl libc, the DevContainer
##### has to be based on Debian Linux for now.

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_REPOSITORY}/${BASE_IMAGE}:${BASE_ENVIRONMENT}-${BASE_RELEASE} AS builder

ARG AUTHOR="Jan Rother"
ARG DATE="2024-12"
ARG VERSION="1.0"

# |----------------------- Meta Data ----------------------|
LABEL org.opencontainers.image.author=$AUTHOR \
      org.opencontainers.image.date=$DATE \
      org.opencontainers.image.version=$VERSION \
      org.opencontainers.image.title="Deno Application" \
      org.opencontainers.image.description="Docker Image for Deno Application based on Deno v${DENO_VERSION}"

# |------------------------ Runtime -----------------------|
# None.


# |----------------------- Finalize -----------------------|
# Done.

############################################################
