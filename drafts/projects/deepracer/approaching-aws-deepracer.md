# Approaching AWS DeepRacer

humanistic AI -- provide linkedin URL and find approach

PROMPT COMMUNITY

Click up
brand24 
 give sentiment on company
 tell you where your brand is online
appolo
jasper.ai
copy.ai   -- create a content matrix to personalize how segmenting audience
 ICP score
 persona mapping
 tweeter - entrepreneurs --> I created a business in 10 days ...
 podcast + ...
notion.ai
riverside
capcut + descrypt (eye)
canvas create magic

Model names:

 ```
Model naming convention
-----------------------
re2018ccw-ppo-5x2actions-max30deg-max1ms-centerline-60min
re2018ccw-time-ppo-64gdbs-10ep-0.0003lr-001ent-099df-huber-20ebpu-5x2actions-max30deg-max1ms-centerline-60min

Evaluation naming convention
re2018ccw-time-3tr-eval

GREEN = (reward) - follow the best trajectory based on the reward function
RED = evaluation

BEST MODEL = (1) highest track completion during evaluation and then (2) highest percentage during training

EVALUATION = always starts from the beginngin (unlike training)
TRAINING = start from failed position
ENTROPY =
 ```

## AWS AMER Summit 2021 - AIM203 - Get rolling with ML on AWS DeepRacer

 {% youtube "https://www.youtube.com/watch?v=uTAIjc3YFac" %}

## AWS AMER Summit 2021 - 300 Shift your ML into overdrive! 

 {% youtube "https://www.youtube.com/watch?v=I09N8TyI8R4" %}


# Tips, Tricks, and Links 

## AWS docs

 * site - [https://aws.amazon.com/deepracer/](https://aws.amazon.com/deepracer/)
 * code - [https://github.com/aws-deepracer](https://github.com/aws-deepracer)
 * video 
   * youtube - [https://www.youtube.com/@AWSDeepRacerCommunity/videos](https://www.youtube.com/@AWSDeepRacerCommunity/videos)
   * twitch 
     * [https://www.twitch.tv/aws](https://www.twitch.tv/aws)
     * [https://www.twitch.tv/awsdeepracer](https://www.twitch.tv/awsdeepracer)

 * community
   * [https://zacks.one/aws-deepracer-lab/](https://zacks.one/aws-deepracer-lab/)
   * [https://blog.gofynd.com/how-we-broke-into-the-top-1-of-the-aws-deepracer-virtual-circuit-c39a241979f5](https://blog.gofynd.com/how-we-broke-into-the-top-1-of-the-aws-deepracer-virtual-circuit-c39a241979f5)
   * [https://blog.gofynd.com/how-we-broke-into-the-top-1-of-the-aws-deepracer-virtual-circuit-573ba46c275](https://blog.gofynd.com/how-we-broke-into-the-top-1-of-the-aws-deepracer-virtual-circuit-573ba46c275)

 * tips - [https://aws.amazon.com/deepracer/racing-tips/](https://aws.amazon.com/deepracer/racing-tips/)
   * docs - [https://docs.aws.amazon.com/deepracer/latest/developerguide/what-is-deepracer.html](https://docs.aws.amazon.com/deepracer/latest/developerguide/what-is-deepracer.html)
   * build a physical tract - [https://thecattlecrew.net/2019/02/12/how-to-build-a-deepracer-track/](https://thecattlecrew.net/2019/02/12/how-to-build-a-deepracer-track/)
   * skill-builder tutorial - [https://explore.skillbuilder.aws/learn/course/87/play/487/aws-deepracer-driven-by-reinforcement-learning](https://explore.skillbuilder.aws/learn/course/87/play/487/aws-deepracer-driven-by-reinforcement-learning)
   * Labs
     * 200L - Get started - [https://catalog.workshops.aws/deepracer-200l/en-US](https://catalog.workshops.aws/deepracer-200l/en-US)
       * JPMC free credits - [https://catalog.us-east-1.prod.workshops.aws/event/dashboard/en-US/workshop](https://catalog.us-east-1.prod.workshops.aws/event/dashboard/en-US/workshop) + event ID = f6d7-0399ff-5f | 184d-06fcdb-f1
     * 300L - [https://catalog.us-east-1.prod.workshops.aws/workshops/6fc80a18-8c5b-4a59-8d0e-6fda7c02acda/en-US](https://catalog.us-east-1.prod.workshops.aws/workshops/6fc80a18-8c5b-4a59-8d0e-6fda7c02acda/en-US)
       * code - [https://github.com/aws-deepracer/aws-deepracer-workshops](https://github.com/aws-deepracer/aws-deepracer-workshops)
     * 400
       * code - [https://github.com/aws-deepracer/aws-deepracer-workshops/blob/master/dpr401/deepracer_rl.ipynb](https://github.com/aws-deepracer/aws-deepracer-workshops/blob/master/dpr401/deepracer_rl.ipynb)

## Community

 * tutorials
   * [https://zacks.one/aws-deepracer-lab/](https://zacks.one/aws-deepracer-lab/)
 * slack - [http://join.deepracing.io](http://join.deepracing.io)
 * blog - [https://blog.deepracing.io/](https://blog.deepracing.io/)
 * twitter - [https://twitter.com/hashtag/AWSDeepRacer?src=hashtag_click](https://twitter.com/hashtag/AWSDeepRacer?src=hashtag_click)
 * papers 
   * f1tenth - [https://f1tenth.org/research.html](https://f1tenth.org/research.html)


# Overview

 * medium - [https://towardsdatascience.com/an-advanced-guide-to-aws-deepracer-2b462c37eea](https://towardsdatascience.com/an-advanced-guide-to-aws-deepracer-2b462c37eea)

## Cost reduction

 * DR for cloud - [https://aws-deepracer-community.github.io/deepracer-for-cloud/](https://aws-deepracer-community.github.io/deepracer-for-cloud/)
   * reference - [https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html](https://aws-deepracer-community.github.io/deepracer-for-cloud/reference.html)
 * spot - [https://github.com/aws-deepracer-community/deepracer-on-the-spot](https://github.com/aws-deepracer-community/deepracer-on-the-spot)

## Reward functions

 * 2020
   * [https://medium.com/axel-springer-tech/how-to-win-aws-deepracer-ce15454f594a](https://medium.com/axel-springer-tech/how-to-win-aws-deepracer-ce15454f594a)
   * reward = speed! - [https://www.youtube.com/watch?v=keMMa7FCyZ4](https://www.youtube.com/watch?v=keMMa7FCyZ4)
 * input params - [https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-reward-function-input.html](https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-reward-function-input.html)

 ```
# PARAM Dictionary
{
    "all_wheels_on_track": Boolean,        # flag to indicate if the agent is on the track
    "x": float,                            # agent's x-coordinate in meters
    "y": float,                            # agent's y-coordinate in meters
    "closest_objects": [int, int],         # zero-based indices of the two closest objects to the agent's current position of (x, y).
    "closest_waypoints": [int, int],       # indices of the two nearest waypoints.
    "distance_from_center": float,         # distance in meters from the track center 
    "is_crashed": Boolean,                 # Boolean flag to indicate whether the agent has crashed.
    "is_left_of_center": Boolean,          # Flag to indicate if the agent is on the left side to the track center or not. 
    "is_offtrack": Boolean,                # Boolean flag to indicate whether the agent has gone off track.
    "is_reversed": Boolean,                # flag to indicate if the agent is driving clockwise (True) or counter clockwise (False).
    "heading": float,                      # agent's yaw in degrees
    "objects_distance": [float, ],         # list of the objects' distances in meters between 0 and track_length in relation to the starting line.
    "objects_heading": [float, ],          # list of the objects' headings in degrees between -180 and 180.
    "objects_left_of_center": [Boolean, ], # list of Boolean flags indicating whether elements' objects are left of the center (True) or not (False).
    "objects_location": [(float, float),], # list of object locations [(x,y), ...].
    "objects_speed": [float, ],            # list of the objects' speeds in meters per second.
    "progress": float,                     # percentage of track completed
    "speed": float,                        # agent's speed in meters per second (m/s)
    "steering_angle": float,               # agent's steering angle in degrees
    "steps": int,                          # number steps completed
    "track_length": float,                 # track length in meters.
    "track_width": float,                  # width of the track
    "waypoints": [(float, float), ]        # list of (x,y) as milestones along the track center

}
 ```

## Hyperparameter Tuning with Sagemaker

 * discount factor - [https://www.youtube.com/watch?v=CjRfJ2sityU](https://www.youtube.com/watch?v=CjRfJ2sityU)

 ```
* `batch_size`: `34`, `64`, `128`, `256` or `512`. Default is `64`.
* `beta_entropy`: Real number between `0` and `1` (inclusive). Default is `0.01`.
* `discount_factor`: Real number between `0` and `1` (inclusive). Default is `0.999`.
* `e_greedy_value`: Default is `0.05`.
* `epsilon_steps`: Default is `10000`.
* `exploration_type`: `categorical` or `additive_noise`.
* `loss_type`: `huber` or `mean squared error`. Default is `huber`.
* `lr`: Values between `0.00000001` and `0.001` (inclusive). Default is `0.0003`.
* `num_episodes_between_training`: Integer between `5` and `100` (inclusive). Default is `20`.
* `num_epochs`: Values between `3` and `10` (inclusive). Default is `3`.
* `stack_size`: Default is `1`.
* `term_cond_avg_score`: Values between `35000.0` and `100000.0`.
* `term_cond_max_episodes`: Default is `100000`
 ```

 {% youtube "https://www.youtube.com/watch?v=7NUdvqRhRtM" %}



## Log analysis

 * [https://codelikeamother.uk/using-jupyter-notebook-for-analysing-deepracer-s-logs](https://codelikeamother.uk/using-jupyter-notebook-for-analysing-deepracer-s-logs)
 * [https://blog.deepracing.io/2020/03/30/introducing-aws-deepracer-log-analysis/](https://blog.deepracing.io/2020/03/30/introducing-aws-deepracer-log-analysis/)
 * Community
   * Log guru - [https://github.com/aws-deepracer-community/deepracer-log-guru](https://github.com/aws-deepracer-community/deepracer-log-guru)
     * :warning: a desktop application that uses deepracer logs downloaded from S3
     * installation - [https://github.com/aws-deepracer-community/deepracer-log-guru/blob/master/docs/installation.md](https://github.com/aws-deepracer-community/deepracer-log-guru/blob/master/docs/installation.md)
     * getting started - [https://github.com/aws-deepracer-community/deepracer-log-guru/blob/master/docs/getting_started.md](https://github.com/aws-deepracer-community/deepracer-log-guru/blob/master/docs/getting_started.md)

## Best racing line ==> Action space

 * optimized action space - [https://www.linkedin.com/pulse/aws-deepracer-how-calculate-best-racing-line-compute-actions-chen/](https://www.linkedin.com/pulse/aws-deepracer-how-calculate-best-racing-line-compute-actions-chen/)
 * [https://blog.orium.com/the-best-path-a-deepracer-can-learn-2a468a3f6d64](https://blog.orium.com/the-best-path-a-deepracer-can-learn-2a468a3f6d64)

## Terminology

 * playlist - [https://www.youtube.com/playlist?list=PLhr1KZpdzukfQBjBInkkaUuxDMLj_TaHO](https://www.youtube.com/playlist?list=PLhr1KZpdzukfQBjBInkkaUuxDMLj_TaHO)
   * model convergence - [https://www.youtube.com/watch?v=Mbm-Lv5Un3Q](https://www.youtube.com/watch?v=Mbm-Lv5Un3Q)
   * action space - [https://www.youtube.com/watch?v=a6q-safxklY](https://www.youtube.com/watch?v=a6q-safxklY)
