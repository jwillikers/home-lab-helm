#!/bin/sh
until pg_isready -h localhost -p 5432 -U $POSTGRES_USER
do
  echo "Waiting for postgresql"
  sleep 2;
done
