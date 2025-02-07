# Hyper parameter tuning


## Links

## Terminology

 * Environment = virtual track

 * state = image

 * CNN feature extractor = from image extract reward function input parameters

 * policy (TT) defines how an agent chooses actions based on the current state of the environment.

```
  TT(a|s) = Proba(action|state)
```

 * TT is more exploratory => TT assigns more similar probabilities to different actions

 * TT is less exploratory ==> TT assigns high probability to one or a few actions and low probability to others

 * Entropy (H) - hyperparameter used to fine-tune the balance between exploration and exploitation.
   * high - the agent tries a wider variety of actions --> useful in the early stages of training to learn more about the environment.
   * low - the agent sticks more to actions that have previously yielded higher rewards --> useful in the later stages of training to fine-tune the learned policy.
   * Q: How to reuse a model?

 ```
H ( TT(.|s)) = - sum(all actions, TT(a|s) * log( TT(a|s) )

TT(a|s) = Proba(a|s)
 ```

## Optimal system

 * training time
   * too short = not trained enough
   * too long = overfitting (budget wasted?)

 * GD batch size 64
 * entropy 0.01 (default)  <== defines epsilon !
 * discount factor 0.985 (shorter view than default 0.999)
 * loss function = huber
 * learning rate = 0.0004 (default is 0.0003) so more aggressive!
 * episodes/iteration = 32 (default is 20)
 * number of epoch = 3 (default)
 * 8 workers   <=== how ? DeepRacer for cloud
   * https://www.youtube.com/watch?v=lTg4yCaKEr4

# Hyperparameter tuning

 {% youtube "https://www.youtube.com/watch?v=7NUdvqRhRtM" %}
