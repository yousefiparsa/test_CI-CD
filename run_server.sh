#!/bin/bash

exec gunicorn app:app --workers 4
