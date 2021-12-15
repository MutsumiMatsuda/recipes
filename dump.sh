#!bin/bash
rm dump.sql
mysqldump -u root recipes --compatible=postgresql  -t -c --skip-quote-names --skip-extended-insert --skip-add-locks --default-character-set=utf8 | sed "s/\\\'/\'\'/g" >  dump.sql
