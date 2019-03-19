#!/bin/bash

gunicorn app:app -w 4 -b 0.0.0.0:5005
