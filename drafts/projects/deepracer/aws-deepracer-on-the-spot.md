# AWS DeepRacer On The Spot


## Links

 * DR For Cloud (DRFC) - [https://aws-deepracer-community.github.io/deepracer-for-cloud/](https://aws-deepracer-community.github.io/deepracer-for-cloud/)
   * reference - [https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html](https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html)
 * DeepRacer On The Spot (DOTS) - [https://github.com/aws-deepracer-community/deepracer-on-the-spot](https://github.com/aws-deepracer-community/deepracer-on-the-spot)
   * ip address - [https://whatismyip.host](https://whatismyip.host)

## Terminology

 Robomaker Worker = A simulator using the model. On the AWS console, you only have 1 worker, while in DOTS, you can have up to 3!

## Installation

 ```
# Log in AWS
# Ascertain your are in us-east-1
# Start a cloudShell

git clone https://github.com/aws-deepracer-community/deepracer-on-the-spot.git
cd deepracer-on-the-spot
ls

# *** ONE TIME SETUP ***
# BASE-STACK-NAME = cloudformation stack you are creating ex: "emmanuel-base"
# YOUR-IP = IPv4 used to accesss ec2 instance. Use https://whatismyip.host to find your IP
#           This IP is used to create a security groupi with this IP as ingress to reach web interface?
#           Eg: http://44.200.101.62:8100/menu.html
./create-base-resources.sh BASE-STACK-NAME YOUR-IP
# Ex: ./create-base-resources.sh emmanuel-base 99.151.11.108
 ```

## Configure a model

 Steps application for each model training
 ```
# *** SETUP PER MODEL ***
# Customization
cd custom-files

# hyperparameters.json     - set hyperparameters for training
# hyperparameters_sac.json - Example SAC config (not active configuration)
# model.metadata.json      - define model sensors, action space, trainnig algo, action space type
# model.metadata_sac.json  - Example SAC config (not active configuration)
# README.md
# reward_function.py       - python reward function 
# run.env                  - Deep 
# system.env      

 ```

## Train the model

 ```
# PICK ONE!
# On EC2
./create-standard-instance.sh BASE-STACK-NAME TRAINING-STACK-NAME TIME-TO-LIVE
# Ex: ./create-standard-instance.sh emmanuel-base emmanuel-first-training 120

# Using spot
./create-spot-instance.sh BASE-STACK-NAME TRAINING-STACK-NAME TIME-TO-LIVE
# Ex: ./create-spot-instance.sh emmanuel-base emmanuel-first-training 120
 ```

## Check training status

 Go to 
 * HTTP web interface - [http://44.200.101.62:8100/menu.html](http://44.200.101.62:8100/menu.html)
 * HTTP video - [http://44.200.101.62:8080/](http://44.200.101.62:8080/)
   * video stream - [http://44.200.101.62:8080/stream_viewer?topic=/racecar/deepracer/kvs_stream&quality=10&width=400&height=300](http://44.200.101.62:8080/stream_viewer?topic=/racecar/deepracer/kvs_stream&quality=10&width=400&height=300)


## Deepracer for cloud configuration

 DeepRacer on spot is a wrapper around DeepRacer for cloud. Here we discuss how to configure DeepRacer for cloud.

 * config reference - [https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html](https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html)
 * track names 
   * track shape + name to file - [https://github.com/aws-deepracer-community/deepracer-race-data/tree/main/raw_data/tracks](https://github.com/aws-deepracer-community/deepracer-race-data/tree/main/raw_data/tracks)
   * numpy files - [https://github.com/aws-deepracer-community/deepracer-race-data/tree/main/raw_data/tracks/npy](https://github.com/aws-deepracer-community/deepracer-race-data/tree/main/raw_data/tracks/npy)

 ```
# Param for this model's training.
# You can set the race type (time trial, object avoidance, head to head), track, model name, etc.
# For a new model, change its name each time!
$ cat run.env 
DR_RUN_ID=0
DR_WORLD_NAME=reInvent2019_track      # Track to used (without npy extension)
# DR_WORLD_NAME=2022_april_open_ccw   # Track to used (without npy extension)
DR_RACE_TYPE=TIME_TRIAL               # Race type
DR_CAR_NAME=FastCar
DR_CAR_BODY_SHELL_TYPE=deepracer
DR_CAR_COLOR=Black
DR_DISPLAY_NAME=$DR_CAR_NAME
DR_RACER_NAME=$DR_CAR_NAME
DR_ENABLE_DOMAIN_RANDOMIZATION=False
DR_EVAL_NUMBER_OF_TRIALS=3
DR_EVAL_IS_CONTINUOUS=True
DR_EVAL_OFF_TRACK_PENALTY=5.0
DR_EVAL_COLLISION_PENALTY=5.0
DR_EVAL_SAVE_MP4=False
DR_EVAL_OPP_S3_MODEL_PREFIX=rl-deepracer-sagemaker
DR_EVAL_OPP_CAR_BODY_SHELL_TYPE=deepracer
DR_EVAL_OPP_CAR_NAME=FasterCar
DR_EVAL_OPP_DISPLAY_NAME=$DR_EVAL_OPP_CAR_NAME
DR_EVAL_OPP_RACER_NAME=$DR_EVAL_OPP_CAR_NAME
DR_EVAL_DEBUG_REWARD=False
#DR_EVAL_RTF=1.0
DR_TRAIN_CHANGE_START_POSITION=True
DR_TRAIN_ALTERNATE_DRIVING_DIRECTION=False
DR_TRAIN_START_POSITION_OFFSET=0.0
DR_TRAIN_ROUND_ROBIN_ADVANCE_DIST=0.05
DR_TRAIN_MULTI_CONFIG=False
DR_TRAIN_MIN_EVAL_TRIALS=5
#DR_TRAIN_RTF=1.0
DR_LOCAL_S3_MODEL_PREFIX=first-model             # Bucket name for given model
DR_LOCAL_S3_PRETRAINED=False                     # Set to False to train from scratch
DR_LOCAL_S3_PRETRAINED_PREFIX=model-pretrained
DR_LOCAL_S3_PRETRAINED_CHECKPOINT=last
DR_LOCAL_S3_CUSTOM_FILES_PREFIX=custom_files
DR_LOCAL_S3_TRAINING_PARAMS_FILE=training_params.yaml
DR_LOCAL_S3_EVAL_PARAMS_FILE=evaluation_params.yaml
DR_LOCAL_S3_MODEL_METADATA_KEY=$DR_LOCAL_S3_CUSTOM_FILES_PREFIX/model_metadata.json
DR_LOCAL_S3_HYPERPARAMETERS_KEY=$DR_LOCAL_S3_CUSTOM_FILES_PREFIX/hyperparameters.json
DR_LOCAL_S3_REWARD_KEY=$DR_LOCAL_S3_CUSTOM_FILES_PREFIX/reward_function.py
DR_LOCAL_S3_METRICS_PREFIX=$DR_LOCAL_S3_MODEL_PREFIX/metrics
DR_UPLOAD_S3_PREFIX=upload
DR_OA_NUMBER_OF_OBSTACLES=6
DR_OA_MIN_DISTANCE_BETWEEN_OBSTACLES=2.0
DR_OA_RANDOMIZE_OBSTACLE_LOCATIONS=False
DR_OA_IS_OBSTACLE_BOT_CAR=False
DR_OA_OBJECT_POSITIONS=
DR_H2B_IS_LANE_CHANGE=False
DR_H2B_LOWER_LANE_CHANGE_TIME=3.0
DR_H2B_UPPER_LANE_CHANGE_TIME=5.0
DR_H2B_LANE_CHANGE_DISTANCE=1.0
DR_H2B_NUMBER_OF_BOT_CARS=3
DR_H2B_MIN_DISTANCE_BETWEEN_BOT_CARS=2.0
DR_H2B_RANDOMIZE_BOT_CAR_LOCATIONS=False
DR_H2B_BOT_CAR_SPEED=0.2

[cloudshell-user@ip-10-2-17-46 custom-files]$ cat system.env
DR_CLOUD=aws
DR_AWS_APP_REGION=$DEEPRACER_REGION
DR_UPLOAD_S3_PROFILE=default
DR_UPLOAD_S3_BUCKET=$DEEPRACER_S3_URI
DR_UPLOAD_S3_ROLE=to-be-defined
DR_LOCAL_S3_BUCKET=$DEEPRACER_S3_URI
DR_LOCAL_S3_PROFILE=default
DR_GUI_ENABLE=False
DR_KINESIS_STREAM_NAME=
DR_KINESIS_STREAM_ENABLE=True
DR_SAGEMAKER_IMAGE=5.1.0-gpu
DR_ROBOMAKER_IMAGE=5.1.0-cpu-avx2
DR_ANALYSIS_IMAGE=cpu
DR_COACH_IMAGE=5.1.0
DR_WORKERS=2                           # Number of parallel simulations (Robomaker workers)!
DR_ROBOMAKER_MOUNT_LOGS=False
DR_CLOUD_WATCH_ENABLE=False
DR_DOCKER_STYLE=swarm
DR_HOST_X=False
DR_WEBVIEWER_PORT=8100
# DR_DISPLAY=:99
# DR_REMOTE_MINIO_URL=http://mynas:9000
# CUDA_VISIBLE_DEVICES=0
 ```

## Videos

### Overview

 {% youtube "https://www.youtube.com/watch?v=GP7IZ6X5QPU" %}

### Setup and first rnu

 {% youtube "https://www.youtube.com/watch?v=b4GHWZcIB18" %}

### Edit files

 {% youtube "https://www.youtube.com/watch?v=EAFR7FSN4Bo" %}

### Update track

 {% youtube "https://www.youtube.com/watch?v=XgdRSAeAzHk" %}

### Increment training

 {% youtube "https://www.youtube.com/watch?v=9y5wx7fQUgc" %}

### Move model to console

 {% youtube "https://www.youtube.com/watch?v=Fk0XCoE8M6U" %}
