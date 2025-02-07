---
draft: true
# readingtime: 15
slug: reinforcement-learning-introduction
title: Introduction to reinforcement learning

authors:
  - emmanuel
#   - florian
#   - oceanne

categories:
  - Algorithms

date:
  created: 2019-01-18
  updated: 2019-01-18

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

# Introduction to reinforcement learning 

<!-- end-of-excerpt -->
##  Episode 1

 {% youtube "https://www.youtube.com/watch?v=nyjbcRQ-uQ8" %}

 The video is an introduction to reinforcement learning and its importance in machine learning. The focus is on how reinforcement learning algorithms study the behavior of subjects in different environments and learn to optimize that behavior. The video also discusses the relevance of reinforcement learning in game-playing, referencing examples such as DeepMind's AlphaGo and OpenAI's OpenAI5 team of neural networks. The series aims to teach reinforcement learning step-by-step, starting with the basics, and gradually increasing the complexity. The syllabus for parts one and two of the series is also provided.

 1. What is reinforcement learning, and why is it important in machine learning?

 2. Can you provide examples of how reinforcement learning is used in game-playing?

 3. What is the syllabus for the parts one and two of the reinforcement learning series?

##  Episode 2 - Markov Decision Processes (MDPs) - Structuring a Reinforcement Learning Problem

 {% youtube "https://www.youtube.com/watch?v=my207WNoeyA" %}

 The video discusses Markov decision processes (MDPs) as a way to formalize sequential decision making, which is the basis for problems that are solved with reinforcement learning. MDPs involve an agent interacting with an environment over time, where at each time step, the agent gets a representation of the environment state, selects an action, transitions to a new state, and receives a reward. The goal of the agent is to maximize the total amount of rewards it receives over time, not just immediate rewards. MDPs can be represented mathematically with finite sets of states, actions, and rewards, with probabilities depending on the preceding state and action.

 1. What is the goal of an agent in an MDP?

 2. Can you explain how the trajectory of an MDP is created?

 3. How do probabilities work in an MDP?

##  Episode 3 - Expected Return - What Drives a Reinforcement Learning Agent in an MDP

 {% youtube "https://www.youtube.com/watch?v=a-SnJtmBtyA" %}

 This video discusses the concept of return in reinforcement learning, which aggregates cumulative rewards and drives the agent to make decisions. The concept of the expected return is important, as it is the agent's objective to maximize it. The video discusses two types of tasks in reinforcement learning: episodic tasks, which end in a terminal state, and continuing tasks, which do not have a natural endpoint. The definition of the discounted return is introduced, where the future rewards are discounted by a rate between 0 and 1. This definition makes the agent care more about immediate rewards and ensures a finite return even if there are an infinite number of terms.

 1. What is the importance of the expected return in reinforcement learning?

 2. What are the two types of tasks in reinforcement learning and how do they differ?

 3. What is the discount rate in the definition of the discounted return and what is its purpose?

##  Episode 4 - Policies and Value Functions - Good Actions for a Reinforcement Learning Agent

 {% youtube "https://www.youtube.com/watch?v=eMxOGwbdqKY" %}

 The video discusses Markov decision processes, policies, and value functions. A policy is a function that maps a given state to probabilities of selecting each possible action from that state, while a value function estimates how good it is for an agent to be in a given state or to perform a given action in a given state. There are two types of value functions, the state value function, and the action value function. The state value function tells us how good any given state is for an agent while following a policy, while the action value function tells us how good it is for the agent to take any given action from any given state while following a policy.

 1. What is a policy in reinforcement learning?

 2. How is a value function defined with respect to policies?

 3. What are the two types of value functions in reinforcement learning?

##  Episode 5 - What do Reinforcement Learning Algorithms Learn - Optimal Policies

 {% youtube "https://www.youtube.com/watch?v=rP4oEpQbDm4" %}

 In this video, the focus is on learning about optimal policies in reinforcement learning. The concept of value functions and policies is reviewed, and it is explained that the goal of a reinforcement learning algorithm is to find a policy that yields more rewards for the agent than all other policies with respect to return, which is called the optimal policy. The optimal policy has an associated optimal state value function and an optimal action value function, denoted as V sub star and Q sub star respectively. The Bellman optimality equation is introduced as a way to find the optimal Q function, which leads to determining the optimal policy. The next post will explore how the optimal policy is determined.

 1. What is the goal of a reinforcement learning algorithm?

 2. What is the difference between the optimal policy and other policies with respect to return?

 3. How does the Bellman optimality equation help find the optimal Q function?

 
##  Episode 6 - Q-Learning Explained - A Reinforcement Learning Technique

 {% youtube "https://www.youtube.com/watch?v=qhRNvCVVJaA" %}

 In this video, the presenter introduces the concept of cue learning in reinforcement learning and how it can be used to learn the optimal policy in a Markov decision process. He then introduces a game called the Lizard Game to illustrate how Q learning works and how the Q values for each state-action pair are iteratively updated using the Bellman equation until the Q function converges to the optimal Q function Q star. The lizard has to navigate through an environment, avoiding birds and eating crickets to gain rewards. The Q values for each state-action pair are stored in a table called the cue table and are initialized to zero. As the lizard plays more episodes of the game, the Q values are updated in the cue table.

 1. What is the objective of Q learning in reinforcement learning?

 2. How are Q values initialized in the cue table and updated over time?

 3. What is the Lizard Game and how is it used to illustrate Q learning?


##  Episode 7 - Exploration vs. Exploitation - Learning the Optimal Reinforcement Learning Policy

 {% youtube "https://www.youtube.com/watch?v=mo96Nqlo1L8" %}

 The video discusses how an agent in cue learning chooses between exploring the environment and exploiting it to select actions. The agent uses an epsilon greedy strategy to balance exploration and exploitation. The exploration rate epsilon is initially set to 1, but it decays as the agent learns more about the environment. The agent generates a random number between 0 and 1 to determine whether to exploit the environment by choosing the action with the highest Q value, or explore it by choosing an action randomly. After the agent takes an action, it observes the next state and reward gained and updates the Q value in the Q table using the Bellman equation and a learning rate.

 1. What is the purpose of the exploration rate epsilon?

 2. How does the agent choose its actions in the Q learning process?

 3. How does the agent update its Q values after taking an action and observing the next state and reward?


##  Episode 8 - OpenAI Gym and Python for Q-learning - Reinforcement Learning Code Project

 {% youtube "https://www.youtube.com/watch?v=QK_PP_2KgGE" %}

 The video is about using reinforcement learning to build and play a game called Frozen Lake. The speaker uses Python and Open AI Gym toolkit to develop an algorithm and train an agent to play the game using cue learning. The game involves navigating a grid-like frozen surface to retrieve a frisbee without falling into any of the holes representing unfrozen areas. The agent receives a reward of 1 if it reaches the goal and 0 otherwise.

 1. What is Open AI Gym toolkit and how does it work with reinforcement learning algorithms?

 2. How does cue learning differ from other types of reinforcement learning algorithms, and why did the speaker choose to use it for training the agent in this video?

 3. Can you describe some other environments available in the Open AI Gym library, and how they could be used for reinforcement learning applications?DI  


##  Episode 9 - Train Q-learning Agent with Python - Reinforcement Learning Code Project

 {% youtube "https://www.youtube.com/watch?v=HGeI30uATws" %}

 The video is about writing code to implement the cue learning algorithm and training an agent to play the Open AI Gems Frozen Lake game. The video goes over the details of the game, initializes the cue table, and sets the algorithm parameters. The video also discusses how to implement the entire cue learning algorithm, which is executed when the code is executed. The video also talks about exploring or exploiting the environment during time steps within an episode and how rewards are updated. Finally, the video recommends a challenge to the viewers to test both decay rates repeatedly and compare the results.

 1. What is the challenge recommended in the video?

 2. What is the cue learning algorithm?

 3. How are rewards updated during time steps within an episode?


##  Episode 10 - Watch Q-learning Agent Play Game with Python - Reinforcement Learning Code Project

 {% youtube "https://www.youtube.com/watch?v=ZaILVnqZFCg" %}

 This video is about writing the code to watch a trained Q learning agent play the game Frozen Lake. The code will allow the agent to play three episodes and the environment will be rendered to the screen so we can see the agent's actions and movement around the game grid. The agent's actions are based on the highest Q value from the Q table of the current state. The slippery ice in the game may cause the agent to move in unintended directions.

 1. How does the agent's actions in the game Frozen Lake relate to the Q learning algorithm?

 2. What is the purpose of the outer loop in the code that allows the agent to play the game?

 3. How does the slippery ice in the game affect the movement of the agent?


##  Episode 11 - Deep Q-Learning - Combining Neural Networks and Reinforcement Learning

##  Episode 12 - Replay Memory Explained - Experience for Deep Q-Network Training

##  Episode 13 - Training a Deep Q-Network - Reinforcement Learning

##  Episode 14 - Training a Deep Q-Network with Fixed Q-targets - Reinforcement Learning

##  Episode 15 - Reinforcement Learning - Course Reflection
