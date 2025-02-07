---
draft: true
# readingtime: 15
slug: robocar-rally
title: Robocar RAlly

authors:
  - emmanuel
#   - florian
#   - oceanne

categories:
  - Algorithms

date:
  created: 2025-10-07
  updated: 2025-10-07

description: This is the post description

# --- Sponsors only
# link:
#   - tests/pdf_hook.md
#   - tests/youtube_hook.md
#   - Widget: tests/widgets.md
# pin: false
# tags:
#   - FooTag
#   - BarTag
---

# Robocar RAlly

 Focus on behavioral cloning vs RL for deepracer

 <!-- end-of-excerpt -->

## Links

 * [https://aws.amazon.com/blogs/machine-learning/build-an-autonomous-vehicle-on-aws-and-race-it-at-the-reinvent-robocar-rally/](https://aws.amazon.com/blogs/machine-learning/build-an-autonomous-vehicle-on-aws-and-race-it-at-the-reinvent-robocar-rally/)
 * [https://aws.amazon.com/blogs/machine-learning/congratulations-to-the-winners-of-the-reinvent-robocar-rally-2017/](https://aws.amazon.com/blogs/machine-learning/congratulations-to-the-winners-of-the-reinvent-robocar-rally-2017/)
 * [http://robocarhack.com/](http://robocarhack.com/)
 * ...

## Terminology

## Optimal system

 * GD batch size 64
 * entropy 0.01 (default)  <== epsilon !
 * discount factor 0.985 (shorter view than default 0.999)
 * loss function = huber
 * learning rate = 0.0004 (default is 0.0003) so more aggressive!
 * episodes/iteration = 32 (default is 20)
 * number of epoch = 3 (default)
 * 8 workers   <=== how ? DeepRacer for cloud
   * https://www.youtube.com/watch?v=lTg4yCaKEr4
