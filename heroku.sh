#!bin/bash
heroku config:set AWS_ACCESS_KEY_ID=AKIARSS6U3E6BSR5PXYV
heroku config:set SECRET_ACCESS_KEY=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
heroku config:set AWS_DEFAULT_REGION=ap-northeast-1
heroku config:set AWS_BUCKET=s6recipes
heroku config:set https://s3-ap-northeast-1.amazonaws.com/s6recipes
heroku config:set FILESYSTEM_DRIVER_TYPE_LOCAL=local
heroku config:set FILESYSTEM_DRIVER_TYPE_S3=s3
heroku config:set FILESYSTEM_DRIVER=s3
