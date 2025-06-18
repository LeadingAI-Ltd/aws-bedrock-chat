#!/bin/sh
export PATH=$PATH:$LAMBDA_TASK_ROOT/bin
export PYTHONPATH=$PYTHONPATH:/opt/python:$LAMBDA_RUNTIME_DIR
exec python -m uvicorn --port=$PORT app.main:app
