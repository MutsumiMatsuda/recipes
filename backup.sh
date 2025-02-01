#!bin/bash
pg_dump -U postgres -d recipes > backup.sql
