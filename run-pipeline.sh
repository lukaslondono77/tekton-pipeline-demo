#!/bin/bash
tkn pipeline start ci-pipeline \
  -p repo-url=https://github.com/lukaslondono77/tekton-pipeline-demo.git \
  -p revision=main \
  -p IMAGE=my-local-image:latest \
  --workspace name=shared-data,volumeClaimTemplateFile=./pvc.yaml \
  --showlog
