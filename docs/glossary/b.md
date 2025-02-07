# B

## B-Spline

 Formally, b-splines [3] are a sophisticated curve-fitting method and a specific type of spline [4] - a mathematical term for a flexible, piecewise-polynomial function that defines a smooth curve through a series of points. Informally, imagine you’ve plotted dots on a graph to represent how your spending has fluctuated over the past 10 months, and now you want a smooth line that best shows trends over those months. To do so we could use a polynomial fit, so let’s see how that might look.

 ![](img/b/b_spline_polynomial.png ){: width="100%"}

 It works! We have a smooth line that shows my wild spending habits over the last 10 months. But if we look closer, specifically after the first data point, why does the line drop so drastically instead of just curving upwards towards the second data point? This issue with polynomial fitting is due to their tendency to exhibit wild oscillations, a problem known as [Runge’s phenomenon].

 How can we fit this line better…let’s try splines! A spline divides the data into segments and fits individual polynomials to each. Let’s see what a spline fit looks like.

 ![](img/b/b_spline_spline.png ){: width="100%"}

 This fit is much smoother, but perhaps it’s a bit too gentle and underfits the data. This is where B-splines can step in to fix things. B-splines, a type of spline that uses control points to pull the curve and guide the polynomials to fit better, offer a more precise solution. Let’s take a look at a B-spline fit on the data.

 ![](img/b/b_spline.png ){: width="100%"}

 Perfect! The B-spline doesn’t oscillate wildly or underfit; instead, it captures the data perfectly. B-splines provide superior smoothness and crucial accuracy for modeling complex functions. They can adapt easily to changes in data patterns without requiring a complete overhaul of the model, making them a versatile and robust tool for data fitting.

 Mathematically, we can define a b-spline as:
```
...
```

 More at:

  * [https://daniel-bethell.co.uk/posts/kan/](https://daniel-bethell.co.uk/posts/kan/)

 See also [B], [Kolmogorov-Arnold Network]


## Baby-X Digital Human

 ~ a digital human developed by [Soul Machines]

 Baby-X is based on and informed by significant research in key fields that have been integrated into a cohesive research and development effort. These include:

  * Advanced CGI
  * Biologically Inspired Cognitive Architectures
  * Neuroscience
  * Cognitive Science
  * Developmental Psychology
  * Cognitive Linguistics
  * Affective Computing

 Together they enable Baby-X to manifest and apply various models of the brain to enable scaled interactions and responses, creating a bridge to the human world.

 ![](img/b/baby_x_digital_brain.webp ){: width="100%"}

 {% youtube "https://www.youtube.com/watch?v=PHQhCiVLRpE" %}

 {% youtube "https://www.youtube.com/watch?v=yzFW4-dvFDA" %}

 More at:

  * site - [https://www.soulmachines.com/resources/research/baby-x/](https://www.soulmachines.com/resources/research/baby-x/)

 See also [B], ...


## BabyAGI Model

 A task-driven autonomous agent

 In this research, we propose a novel task-driven autonomous agent that leverages OpenAI’s GPT-4 language model, [Pinecone vector search], and [LangChain] to perform a wide range of tasks across diverse domains. Our system is capable of completing tasks, generating new tasks based on completed results, and prioritizing tasks in real-time. We discuss potential future improvements, including the integration of a security/safety agent, expanding functionality, generating interim milestones, and incorporating real-time priority updates. The significance of this research lies in demonstrating the potential of AI-powered language models to autonomously perform tasks within various constraints and contexts.

 ![](img/b/babyagi_model.png ){: width="100%"}

 More at:

  * code - [https://github.com/yoheinakajima/babyagi](https://github.com/yoheinakajima/babyagi)
  * docs - [https://babyagi.org/](https://babyagi.org/)
  * paper - [https://yoheinakajima.com/task-driven-autonomous-agent-utilizing-gpt-4-pinecone-and-langchain-for-diverse-applications/](https://yoheinakajima.com/task-driven-autonomous-agent-utilizing-gpt-4-pinecone-and-langchain-for-diverse-applications/)
  * tweet - [https://twitter.com/yoheinakajima/status/1640934493489070080](https://twitter.com/yoheinakajima/status/1640934493489070080)
  * langchain - [https://python.langchain.com/en/latest/use_cases/autonomous_agents.html](https://python.langchain.com/en/latest/use_cases/autonomous_agents.html)

 See also [B], ...


## Backpropagation

 ~ The way for machine to learn from their mistakes! (or to get better!)

 = imagine you are given all the ingredients to prepare an apple pie, but you are not given the recipe. You goal is to try to bake one. So, you try and fail! Then you adjust the recipe and try again! Until you get an apple pie. Then you try again to improve it.... you try and try again, until it cannot be improved with the ingredient you were given anymore. The final recipe is the model. The ingredients are the input features. The learning process is backpropagation (look at the results and update upstream operations as a result!)

 = a brute force approach, where you pick random weight and you iterate on them until they arrive at a stable solution. This is a `widely used algorithm for training feedforward neural networks and other ANN`. Approach discovered in 1986 that re-stimulated AI. Help a model learn from its mistakes by leveraging the chain rule of derivatives. The backpropagation algorithm consists in modifying the weight and bias of each cell in each layer based on their impact on the estimated output, or loss function (diff between estimated output and real output).

 {% youtube "https://www.youtube.com/watch?v=Ilg3gGewQ5U" %}

 {% youtube "https://www.youtube.com/watch?v=tIeHLnjs5U8" %}

 Backpropagation can find the

  1. weights + biases (?)
  1. [image kernel] filters in a [CNN]
 Beware:
  * If you only use 2 in training sample, you may have a model where all images are recognized as 2, which is not correct. ==> the weights need to be computed with all the samples (i,e, an epoch or a mini-batch)!
  * If your ANN is multi-layered, deep, and use activation functions, backpropagation may not be able to compute all the weights, an issue that is known as the vanishing gradient problem.
  * In a variational autoencoder, you cannot run backpropagation because of the sampling between the encoder and decoder. The solution here is to us the "VAE reparametrization trick"

 See also [B], [Activation Function], [Derivative Chain Rule], [Feedforward Neural Network], [Loss Function], [Neural Network], [Vanishing Gradient Problem], [Variational Autoencoder Reparametrization Trick]


## Backpropagation Through Time

 [Backpropagation] is also used with [Recurrent Neural Netowkr (RNN)][RNN]

 {% youtube "https://www.youtube.com/watch?v=0XdPIqi0qpg" %}

 See also [B], ...


## Backtesting

 ~ [cross-validation] on historical data

 Try a strategy on a past period to see what would have been the output of my model. For example, to be used in finance applications.

 {% youtube "https://www.youtube.com/watch?v=V2qAHYmDqpY" %}

 See also [B], ...


## Bag Of Words (BOW)

 The basic idea of BoW is to take a piece of text and count the frequency of the words in that text. It is important to note that the BoW concept treats each word individually and the order in which the words occur does not matter.

 A technique for [natural language processing] that extracts the words (features) used in a sentence, document, website, etc. and classifies them by frequency of use. This technique can also be applied to [image processing]. In NLP deprecated was by [Recurrent Neural Network (RNN)][RNN], which take into consideration the word order.

 More at:

  * spam detector - [https://medium.com/coinmonks/spam-detector-using-naive-bayes-c22cc740e257](https://medium.com/coinmonks/spam-detector-using-naive-bayes-c22cc740e257)

 See also [B], [Naive Bayes Classifier], [Word2Vec]


## Bagging

 ~ [Bootstrap sampling] + aggregation

 ~ Bagging is a way to create [weak learners]. If weak learners are classifiers, the [strong learner] is built with voting. If regressors, then averaging.

 Bagging, also known as Bootstrap Aggregating. Build random sets by drawing random points from the dataset (with replacement). Train a different model on each of the sets. These models are the [weak learners]. The [strong learner] is then formed as a combination of the weak models, and the [prediction] is done by voting (if it is a classification model) or averaging the predictions (if it is a regression model). It is used to improve [accuracy] and make the model more generalize by reducing the [variance], i.e., avoiding [overfitting]. In this, we take multiple subsets of the training dataset. For each subset, we take a model with the same learning algorithms like [Decision tree], [Logistic regression], etc., to predict the output for the same set of test data. Once we predict each model, we use a model averaging technique to get the final prediction output. One of the famous techniques used in Bagging is [Random Forest]. In the [Random forest], we use multiple [decision trees].

 {% youtube "https://www.youtube.com/watch?v=RtrBtAKwcxQ" %}

 See also [B], [Boosting], [Ensemble Method]


## Baidu Company

 Baidu, Inc. (meaning "hundred times") is a Chinese multinational technology company specializing in Internet-related services, products, and artificial intelligence (AI), headquartered in Beijing's Haidian District. It is one of the largest AI and Internet companies in the world. 

 Models:
  * [Ernie Bot]

 See also [B], [Company]


## Balanced Fitting

 Good generalization for other data.

 ![](img/b/balanced_fitting_comparison.png ){: width="100%"}

 See also [B], [Bias], [Overfitting], [Underfitting], [Variance]


## Bard Model

 A lightweight version of [Lambda Model], meant to counter MSFT Bing + [ChatGPT]

 {% youtube "https://www.youtube.com/watch?v=5X1O5AS4nTc" %}

 More at:

  * [https://bard.google.com/](https://bard.google.com/)
  * Gotcha! - [https://www.reuters.com/technology/google-unveils-magic-wand-draft-documents-ai-race-tightens-2023-03-14/](https://www.reuters.com/technology/google-unveils-magic-wand-draft-documents-ai-race-tightens-2023-03-14/)

 See also [B], ...


## Batch 

 A batch represents all the samples in a dataset. When the training dataset is large, it needs to be broken into chunks called [mini-batches].

```
 ![](img/b/epoch_batch_iteration.png ){: width="100%"}
```

 See also [B], [Batch Size], [Epoch], [Iteration]


## Batch Gradient Descent Algorithm

 ~ Use all the training samples for one forward pass and then adjust weights ==> good for small training set. If too much computation --> [SGD] or [Mini-Batch gradient Descent]

 ~ standard gradient descent. In Batch Gradient Descent, all the training data is taken into consideration to take a single step. We take the average of the gradients of all the training examples and then use that mean gradient to update our parameters. So that’s just one step of gradient descent in one epoch. Batch Gradient Descent is great for convex or relatively smooth error manifolds. In this case, we move somewhat directly towards an optimum solution.

 ![](img/b/batch_gradient_descent.png ){: width=20%}

 ![](img/b/batch_gradient_descent_comparison.png ){: width=20%}

 See also [B], [Gradient Descent Algorithm], [Mini-Batch Gradient Descent Algorithm]


## Batch Normalization

 ~ collapse inputs to be between 0 and 1

 1. Speeds up training (use same learning rate for all features/dimensions)
 1. Decrease the importance of weight initialization (allows sub-optimal starts)
 1. Acts (a little) as a regularizer (the mean and variance for every neuron activations is function of the randomized batch)
    * Dropout layer ==> randomness, batch normalization ==> some randomness

 Batch normalization layers can potentially resolve the vanishing gradient problem. Indeed, this problem arises when a large input space is mapped to a small one, causing the derivatives to disappear. In Image 1, this is most clearly seen at when `|x|` is big. Batch normalization reduces this problem by simply normalizing the input so `|x|` doesn’t reach the outer edges of the sigmoid function. As seen in diagram, it normalizes the input so that most of it falls in the green region, where the derivative isn’t too small.

 ![](img/b/batch_normalization.png ){: width=30%}

 {% youtube "https://www.youtube.com/watch?v=DtEq44FTPM4" %}

 {% pdf "https://arxiv.org/pdf/1502.03167" %}

 {% pdf "https://arxiv.org/pdf/1805.11604" %}

 {% pdf "https://arxiv.org/pdf/1905.05928" %} 

 More at:

  * wikipedia - [https://en.wikipedia.org/wiki/Batch_normalization](https://en.wikipedia.org/wiki/Batch_normalization)
  * covariance shift (2015)
    * paper - [https://arxiv.org/abs/1502.03167](https://arxiv.org/abs/1502.03167)
  * help optimization? (2018) 
    * paper - [https://arxiv.org/abs/1805.11604](https://arxiv.org/abs/1805.11604)
  * BN and dropout layer 
    * paper - [https://arxiv.org/abs/1905.05928](https://arxiv.org/abs/1905.05928)
  * articles
    * [https://medium.com/analytics-vidhya/internal-covariate-shift-an-overview-of-how-to-speed-up-neural-network-training-3e2a3dcdd5cc(https://medium.com/analytics-vidhya/internal-covariate-shift-an-overview-of-how-to-speed-up-neural-network-training-3e2a3dcdd5cc)

 See also [B], [Dropout layer], [Exploding Gradient Problem], [Sigmoid Activation Function], [Vanishing Gradient Problem]


## Batch Normalization Layer

 ~ A layer where the normalization function takes effect.

 This layer is normally before the [activation layer]

 Although normalization requires more calculation per epoch, to achieve the same performance, you will need fewer epochs!

 {% youtube "https://www.youtube.com/watch?v=yXOMHOpbon8" %}

 See also [B], ...


## Batch Of Experience

 A set of experience, mostly likely sampled randomly from the replay memory.

 See also [B], [Deep Q-Network], [Experience], [Replay Memory] 


## Batch Size

 The number of samples (rows) in a batch. Configured to optimize the utilization of the [GPU]

 The larger the batch size, the faster the training is.
 If the batch is too large, the model degrades does not generatlize well.
 ==> maximize the resource/GPU utilization

```
# of batches  *  batch size  =  1 epoch
```

 {% youtube "https://www.youtube.com/watch?v=U4WB9p6ODjM" %}

 More at:

  * [https://towardsdatascience.com/how-to-increase-training-performance-through-memory-optimization-1000d30351c8](https://towardsdatascience.com/how-to-increase-training-performance-through-memory-optimization-1000d30351c8)

 See also [B], [Batch]


## Batch Training

 The parameters of a machine learning model are usually updated multiple times during each [epoch]. In most cases, the training data is divided into batches, and the model is updated after processing each [batch] of data. This is known as batch training or mini-batch training.

 For example, suppose we have a dataset with 1000 examples, and we choose a batch size of 100. During each epoch, the model will process 10 batches, with each batch consisting of 100 examples. After processing each batch, the model will update its parameters based on the error it made on that batch, using an optimization algorithm such as [stochastic gradient descent (SGD)][SGD] or [Adaptive Moment Estimation (Adam)][Adam].

 Batch training has several advantages over updating the model after processing the entire [dataset] (known as batch training or full-batch training), including faster convergence, better memory efficiency, and the ability to handle large datasets that may not fit into memory. However, it also introduces some additional noise in the parameter updates due to the smaller sample size, which can be mitigated by adjusting the learning rate and other [hyperparameters].


## Bayes' Theorem

 Bayes' theorem is used to find the reverse probabilities `p(A|B)` if we know the conditional probability of an event, i.e p(A) and p(B), and `p(B|A)`

```
# Probability of having feature A and B
# is equal to
# Probability of having B knowing A
# multiplied by
# probability of feature A

p(A,B) = p(B|A) * p(A)
         = p(A|B) * p(B)

# therefore
           p(B|A) * p(A)
p(A|B) = ----------------
               p(B)

Where P(A) and P(B) are the probabilities of events A and B.
P(A|B) is the probability of event A given B
P(B|A) is the probability of event B given A.
```

 See also [B], [Bayesian Inference], [Naive Bayes]


## Bayesian Inference

 Used by [RL agent] in stochastic [environments]

 Bayesian inference is a method of statistical inference in which Bayes' theorem is used to update the probability for a hypothesis as more evidence or information becomes available. Some key points about Bayesian inference:

  * It is based on Bayes' theorem, which describes the probability of an event based on prior knowledge of conditions that might be related to the event.
It allows you to combine prior beliefs with observed data to get posterior beliefs. The prior beliefs are your initial probabilities for a hypothesis before seeing any evidence.
  * As new evidence is gathered, the prior probability is updated to become the posterior probability. This allows you to adjust your beliefs about a hypothesis as you gather more information.
  * It involves computing the posterior probability distribution - the probability of a hypothesis given the observed data.
Bayesian inference uses Bayes' rule to compute and update probabilities after obtaining new data. This allows you to update your beliefs sequentially as you gather more information.
  * A major advantage is that it accounts for uncertainty and allows explicit use of prior information.
Bayes' theorem provides a principled way to update beliefs in light of new evidence. This allows Bayesian inference to combine new data with prior knowledge in a coherent way.

 In summary, Bayesian inference uses Bayes' theorem to update probabilities after observing data. It incorporates prior beliefs, models uncertainty, and allows for sequential analysis, making it very useful for data analysis and modeling.

```
Here's a simple example of how a person could use Bayesian inference in a real-world situation:

Suppose you take a medical test to screen for a rare disease. The test has a 98% accuracy rate - meaning if you have the disease, there is a 98% chance of a positive result, and if you don't have the disease, there is a 98% chance of a negative result.

The disease affects 1 in 10,000 people in the general population. You take the test and receive a positive result. You want to figure out the probability that you actually have the disease, given the evidence of the positive test result.

Using Bayesian inference:

Let D be the event that you have the disease
Let T+ be the event of a positive test
We start with the initial prior probability of having the disease P(D) = 1/10,000 = 0.0001

The probability of a positive test given that you do have the disease: P(T+|D) = 0.98
And the probability of a positive test given you don't have the disease: P(T+|~D) = 0.02

Using Bayes' theorem:

P(D|T+) = P(T+|D) x P(D) / P(T+)

P(T+) can be calculated using the law of total probability:
P(T+) = P(T+|D) x P(D) + P(T+|~D) x P(~D)
= 0.98 x 0.0001 + 0.02 x 0.9999
= 0.0298

Plugging this all in gives:
P(D|T+) = 0.98 x 0.0001 / 0.0298 = 0.0033

So the probability you have the disease after getting a positive test is only about 0.33% or 1 in 300 people, much lower than the 1 in 10,000 prior probability. This shows how a positive test result updates our beliefs using Bayesian inference.
```

 See also [B], [Belief Distribution], [Prior Belief]


## Bayesian Inference

 How confident are you in the result? A method of statistical learning - using a small amount of historical data and combining it with new data
```
          P(B|A) x P (A)
P(A|B) = ----------------
            P(B)
```

 See also [B], [Bayes' Theorem], [Bayesian Network]


## Bayesian Network

 Bayesian networks are graphical models that use [Bayesian inference] to represent variables and their conditional dependencies. The goal of Bayesian networks is to model likely causation (conditional dependence), by representing these conditional dependencies as connections between nodes in a directed acyclic graph (DAG). The graph’s nodes are just the model’s variables, whether observable quantities, latent variables, unknown parameters or subjective hypotheses. Once graphed, researchers can then fairly simply calculate the probability tables for each node and find the joint probability effect of even independent, random variables on the model’s final outcome.

 ![](img/b/bayesian_network.png ){: width="100%"}

 See also [B], ...

 
## Bayesian Optimization Sampling Method

 Use ML to optimize your model. Given N samples, what would be the best next step to for my sample (given that I am looking for a local maxima) . This optimization method is an INFORMED method where the search DOES use previous results to pick the next input values to try.  `The concept is to limit evals of the objective function * which is time consuming/expensive * by spending more time choosing the next values to try.` (Think dichotomy, + awareness of correlation between parameters, etc? ==> `from which next sample will I learn the most?`)

 Beware:

  * To use when
   * getting a sample is expensive ==> smart sampling required!
   * observations are noisy (?)
   * function is black box, with no closed form or gradient (?)
  * you are looking for a minima and do not care about the distribution (?)

 More

  * [https://scikit-optimize.github.io/notebooks/hyperparameter-optimization.html](https://scikit-optimize.github.io/notebooks/hyperparameter-optimization.html)
  * [https://towardsdatascience.com/an-introductory-example-of-bayesian-optimization-in-python-with-hyperopt-aae40fff4ff0](https://towardsdatascience.com/an-introductory-example-of-bayesian-optimization-in-python-with-hyperopt-aae40fff4ff0)

 See also [B], [Active Learning], [Grid Search], [Hyperparameter], [Random Search], [Surrogate Model]


## Bayes Search

 Searching for a value using the [bayesian optimization sampling method].

 Bayes Search uses the Bayesian optimization technique to model the search space to arrive at optimized parameter values as soon as possible. It uses the structure of search space to optimize the search time. Bayes Search approach uses the past evaluation results to sample new candidates that are most likely to give better results (shown in the figure below).

 ![](img/b/bayes_search.webp ){: width="100%"}

 More at:

  * [https://towardsdatascience.com/a-practical-introduction-to-grid-search-random-search-and-bayes-search-d5580b1d941d](https://towardsdatascience.com/a-practical-introduction-to-grid-search-random-search-and-bayes-search-d5580b1d941d)

 See also [B], [Hyperparameter Optimization]


## Beam Search

 See also [B], ...


## Behavioural Cloning

 ~ Trying to duplicate the behavior of an expect. Early approaches to imitation learning seek to learn a policy as a machine learning model that maps environment observations to (optimal) actions taken by the expert using supervised learning. The method is called Behavioral Cloning (BC), but it has a drawback: BC has loose, or no, guarantees that the model will generalize to unseen environmental observations. A key issue is that when the agent ends up in an situation that is unlike any of the expert trajectories, BC is prone to failures.

 ![](img/b/behavioural_cloning.png ){: width="100%"}

 For example, in the figure above, the car agent doesn’t know what to do if it goes away from the expert trajectory and it crashes. To avoid making a mistake, BC requires expert data on all possible trajectories in the environment, making it a heavily data-inefficient approach.

 See also [B], [Imitation Learning]


## Belief Distribution

A belief distribution, also known as a probability distribution, is a mathematical function that describes all the possible values a random variable can take and the probability associated with each value.

In Bayesian inference, belief distributions represent the probabilities assigned to different hypotheses or parameter values before (prior distribution) and after (posterior distribution) observing evidence.

Some key points about belief distributions:

 * They summarize current beliefs about plausible values a quantity can take by assigning probabilities.
 * The area under the belief distribution sums to 1, representing all possible outcomes.
 * Common belief distributions include the normal, binomial, Poisson, etc. Each models different processes and assumptions.
 * The [prior belief] distribution captures initial beliefs about a quantity before evidence is considered. It may be based on previous data, a physical model, or just a subjective guess.
 * The [posterior belief] distribution is the result of updating the prior with new evidence using Bayes' theorem. It represents updated knowledge.
 * Belief updating refers to transforming a prior distribution into a posterior distribution when new data is observed.
 * Bayes' theorem describes how to update beliefs mathematically by combining prior knowledge with likelihood functions from new data.

 So in summary, a belief distribution models uncertainty by assigning probabilities over a range of values. Bayesian inference updates beliefs from the prior to posterior distribution as evidence is gathered.

```
# Example:
Here is a simple example to illustrate belief distributions:

Suppose there is a bag with 20 marbles. You believe 5 of them are red and the rest are blue, but you're not completely certain. Your belief can be represented by a probability distribution:

Prior belief distribution:

Red marbles: 5, with probability 0.25
Blue marbles: 15, with probability 0.75
This shows your initial belief before observing any evidence. The probability sums to 1 over all possibilities.

Now suppose you draw a sample of 5 marbles randomly, and get:
Red: 3
Blue: 2

You can now update your belief using Bayes' theorem:
P(Red|Data) = P(Data|Red)*P(Red) / P(Data)

The posterior probability of red is now 0.4 after seeing the data. The full posterior distribution is:

Posterior belief distribution:

Red marbles: 8, with probability 0.4
Blue marbles: 12, with probability 0.6
Your belief has shifted towards more red marbles based on the observed data. The posterior distribution represents your updated knowledge about the marble bag after combining your prior belief with the evidence.
```


## Belief-Desire-Intention (BDI) Framework

 The belief-desire-intention (BDI) framework for intelligent agents is the foundation for [Procedural Reasoning System] or PRS. A person's beliefs are what they hold to be true about how the world is right now, while their desires and intentions are what they are doing to work toward those goals. In addition, unlike purely reactive systems like the subsumption architecture, each of these three components is within the PRS agent.

 * Beliefs consist of what the agent believes to be true about the current state of the world
 * Desires consist of the agent's goals
 * Intentions consist of the agent's current plans for achieving those goals.

 Furthermore, each of these three components is typically explicitly represented somewhere within the memory of the PRS agent at runtime, which is in contrast to purely reactive systems, such as the subsumption architecture.

 More at:

  * [https://indiaai.gov.in/article/understanding-procedural-reasoning-systems-in-ai](https://indiaai.gov.in/article/understanding-procedural-reasoning-systems-in-ai)


## Bellman Equation

 They are a class of reinforcement Learning algorithms that are used particularly for deterministic [environments]. Beware:
  * if we have large state spaces, it becomes extremely difficult and close to impossible to solve this system of equations explicitly.
 First the target Q-value equation (which is used to compute the loss function? Yes!)

 ![](img/b/bellman_equation_target_qvalue.png ){: width=100%}

 Notice that we first must compute the " max Q * (s',a') " with s' and a' are the state and action that occur in the following [timestep]. This value is found 

   * in the Q-table when using one
   * or by passing s' to the DQN and taking the maximum of its output, i.e q(s',a_?). <== <!> That's 2 forward passes(one for s or s_t and one for s' or s_t+1) before an type of gradient update

 The loss function used for DQN training is calculated 

  * by subtracting the Q-Value for a given state-action pair given by the policy network (DQN) FROM the optimal Q-value for the same state-action pair. 
  * or by subtracting the Q value given by the policy network for the state action pair from our original experience tuple FROM the target optimal key value for the same state action pair 

  :warning: updates are such that the output Q_values will be as close as possible to the target_q_values given by the bellman equation. This will approximate te optimal Q function which will give us the optimal policy. 

 ![](img/b/bellman_equation_loss_function.png ){: width="100%"}

 More at:

  * loss - [https://deeplizard.com/learn/video/0bt0SjbS3xc](https://deeplizard.com/learn/video/0bt0SjbS3xc)

 See also [B], [Deep Q-Network], [Q-Value Function], [State Space]


## Benchmark


  * [General AI Assitant (GAIA)][GAIA]

 NLP Benchmarks:

  * [Beyond The Imitation Game (BIG Bench)]
  * Coref -  Links pronouns to antecedents. Also capable to take the perspective of a speak, e.g. I, you, my sister, etc refers to different people function of who said it.
  * [GLUE] -
  * [Named Entity Recognition (NER)] - identify places, people, dates, etc
  * Language Parser : Identify which group of words go together (as phrase) and which words are the subject or object of a verb.
  * [Multi-Turn Question Set (MT-Bench)] - Rate conversational AI using human preference modeled by a [LLM-as-a-judge]
  * SNLI - relation between 2 statements (contradict, neutral, or entailment)
  * [SQuAD] - Question and answering
  * [SuperGLUE] -
  * SRL - Semantic understanding (machine translation, information extraction, text summarization, question answering)
  * SST-5 - Sentiment analysis - https://paperswithcode.com/sota/sentiment-analysis-on-sst-5-fine-grained
  * [TruthfulQA] - avoid generating false answers learned from imitating human texts (conspiracies, rumors, etc)

 Bias

  * [Bias Benchmark for Question Answering (BBQ)] - Measure learn social biases of a NLP model

 Knowledge:

  * [Massive Multitask Language Understanding (MMLU)] - Broad set of questions testing undergraduate-level knowledge
  * [Google-Proof Questions And Answers (GPQA)] - PhD level questions

 Graph Neural Network (GNN) Benchmarks:

  * [Relational Deep Learning Benchmark (RelBench)] - GNN on relational databases

 Psychoanalysis

  * [FANToM] - stress-testing machine theory of mind in interactions
  * [EQ-Bench] - emotional intelligence benchmark

 All of those are included in the [HELM Benchmark]

 Scientific

  * [Matbench Discovery] - 

 See also [N], [Coreference], [Entity Extraction], [Language Parsing], [Model Benchmark], [Question Answering], [Semantic Understanding], [Sentiment Analysis], [SNLI]


## Berkeley University

 Models

  * [Koala](https://bair.berkeley.edu/blog/2023/04/03/koala/)
  * ...

 Research

  * BLAIR Blog - [https://bair.berkeley.edu/blog/](https://bair.berkeley.edu/blog/)
  * [Berkeley](https://ml.berkeley.edu/research) [@berkeley_ai](https://twitter.com/berkeley_ai)


## Bernoulli Distribution

 the discrete probability distribution of a random variable which takes the value 1 with probability P and the value 0 with probability Q=1-P. Less formally, it can be thought of as a model for the set of possible outcomes of any single experiment that asks a yes–no question. Such questions lead to outcomes that are boolean-valued: a single bit whose value is success/yes/true/one with probability p and failure/no/false/zero with probability Q. It can be used to represent a (possibly biased) coin toss where 1 and 0 would represent "heads" and "tails", respectively, and P would be the probability of the coin landing on heads (or vice versa where 1 would represent tails and P would be the probability of tails). In particular, unfair coins would have P =/= 1/2. The Bernoulli distribution is a special case of the binomial distribution where a single trial is conducted (so n would be 1 for such a binomial distribution). It is also a special case of the two-point distribution, for which the possible outcomes need not be 0 and 1.

 More at:

  * [https://en.wikipedia.org/wiki/Bernoulli_distribution](https://en.wikipedia.org/wiki/Bernoulli_distribution)


## BERT Classification

 ![](img/b/bert_classification.png ){: width="100%"}

  * E = word embeddings ?     <=== Maybe wrong use of embedding, rather token, i.e. tokenized?
   * Embedding is an integer from a tokenizer? No!
   * Sparse vector (of tokenised sentence) fed to [word2vec] (or similar) ? No!
  * R = representation ( token after transformation by encoder stack )
   * Representation is a matrix/tensor (of square dimension 768?)
   * "What is the cost?" and "Is it expensive?" have almost the same SEP_representation !

 See also [B], [Bidirectional Encoder Representations from Transformer Model]


## Beta Distribution

 A popular [distribution] that models a probability of a probability

 * value is between 0 and 1
 * mean is close to sample proportion
 * std to be ...

 2 parameters

  * alpha - number of successes/wins/true
  * beta - number of failures/losses/false

 ![](img/b/beta_distribution.png ){: width=30%}

 {% youtube "https://www.youtube.com/watch?v=juF3r12nM5A" %}

 {% youtube "https://www.youtube.com/watch?v=1k8lF3BriXM" %}


## Best Match 25 (BM25) Retrieval Model

 A widely used text [retrieval model] based on probabilistic [information retrieval] theory. It ranks documents based on term frequencies and inverse document frequencies, considering both the relevance and rarity of terms within a corpus.

 See also [B], ...


## BHuman Company

 Produce a single viedo of yourself and personalize it for thousands of recipients.

 More at:

  * [https://www.bhuman.ai/](https://www.bhuman.ai/)

 See also [B], [Company]


## Beyond the Imitation Game Benchmark (BIG Bench)

 Focus on task that are not easy to solve

 {% youtube "https://www.youtube.com/watch?v=ZpImxa0tK2Y" %}

 {% youtube "https://www.youtube.com/watch?v=ydfJ16RWJL8" %}

 {% pdf "https://arxiv.org/pdf/2206.04615" %}

 {% pdf "https://arxiv.org/pdf/2210.09261" %}

 More at:

  * paper -
  * task code - [https://github.com/google/BIG-bench](https://github.com/google/BIG-bench)

 See also [B], ...


## Bias

 ~ a predisposition in favor or against something that is often considered to be unfair

 * [Statistical Bias] = The gap between the prediction and the actual value. Where is bias coming from? Issues with the data sampling?
 * [Artificial Neuron Bias] = When using bias in the connect of activation function, it is an integer that represent a threshold the weighted input should exceed to trigger the neuron. There is a bias at each node of the ANN. The node weighted input is = sum(aL . wL) + bias
 * [Dataset Bias] and
 * [Algorithmic Bias] which can lead to [AI Bias]
 * [Inductive Bias] or Learning bias related to the assumption we make in our model
 * [Social Bias] = when a model knowledge is extracted from humans, such as from the internet (Stereotypes)

  1. statistics ==> The gap between the prediction and the actual value. Where is bias coming from? Issues with the data sampling?
  1. data sample ==> data that is used for learning is biased, ex: all nurse are female ==> implies unwanted correlation in data
  1. algorithmic bias ==> algorithm is trained using biased data
  1. neural network learning ==> When using bias in the connect of activation function, it is an integer that represent a threshold the weighted input should exceed to trigger the neuron. There is a bias at each node of the ANN. The node weighted input is = sum(aL . wL) + bias.

  {% youtube "https://www.youtube.com/watch?v=mG-cTS3fnnw" %}

 See also [B], [Activation Function], [Balanced Fitting], [Bias Benchmark For Question Answering], [Bias-Variance Trade-off], [Fair AI], [Overfitting], [Underfitting], [Variance]


## Bias Benchmark For Question Answering (BBQ)

 It is well documented that NLP models learn social biases, but little work has been done on how these biases manifest in model outputs for applied tasks like question answering (QA). We introduce the Bias Benchmark for QA (BBQ), a dataset of question-sets constructed by the authors that highlight attested social biases against people belonging to protected classes along nine social dimensions relevant for U.S. English-speaking contexts. Our task evaluate model responses at two levels: (i) given an under-informative context, we test how strongly responses reflect social biases, and (ii) given an adequately informative context, we test whether the model’s biases override a correct answer choice. We find that models often rely on stereotypes when the context is under-informative, meaning the model’s outputs consistently reproduce harmful biases in this setting. Though models are more accurate when the context provides an informative answer, they still rely on stereotypes and average up to 3.4 percentage points higher accuracy when the correct answer aligns with a social bias than when it conflicts, with this difference widening to over 5 points on examples targeting gender for most models tested.

 ![](img/b/bias_benchmark_for_question_answering.png ){: width="100%"}

 {% pdf "https://aclanthology.org/2022.findings-acl.165.pdf" %}

 More at:

  * site - [https://aclanthology.org/2022.findings-acl.165/](https://aclanthology.org/2022.findings-acl.165/)


## Bias Neuron

 The value of a bias neuron is always equal to 1. The input and [hidden layers] always have a bias neuron (while the output layer does not, since not useful). What is different is the weight between the bias neuron and all the neurons in the following layer. The weight is the value of the bias (since bias = value * 1). 


 In the case of the simplest neural network, with 1 input neuron + 1 input bias neuron --> single output neuron, the value of that output neuron is given by a line v = input * weight + weight_bias * 1, in other words, a line!

 ![](img/b/bias_neuron_1.png ){: width="100%}

 ![](img/b/bias_neuron_line.png ){: width="100%}


## Bias-Variance Trade-off

 ~ bias means that the model has a systematic error that prevent it from reaching perfection regardless of input data (e.g. Accuracy cannot be higher than 70% when we use a linear regression, when the underlying distribution is  quadratic!)
 
 ~ variance means the model performs differently between datasets (input data) (e.g. Accuracy is at 95% on training data, but 42% on test data <-- [overfitting] )

 Ideally, a model will have both low bias and variance, but efforts to decrease one will frequently increase the other. This is known as the bias-variance trade-off.

 Let us consider that we have a very accurate model, this model has a low error in predictions and it’s not from the target (which is represented by bull’s eye). This model has low bias and variance. Now, if the predictions are scattered here and there then that is the symbol of high variance, also if the predictions are far from the target then that is the symbol of high bias.
 Sometimes we need to choose between low [variance] and low [bias]. There is an approach that prefers some [bias] over high [variance], this approach is called [Regularization]. It works well for most of the [classification] / [regression] problems.

 Note that the bias-variance tradeoff is closely related to the concept of [inductive bias]

 ![](img/b/bias_variance_tradeoff.jpeg ){: width="100%}

 ![](img/b/bias_variance_tradeoff_model_complexity.jpeg ){: width="100%}

 {% youtube "https://www.youtube.com/watch?v=EuBBz3bI-aA" %}

 More at:

  * [https://www.geeksforgeeks.org/lasso-vs-ridge-vs-elastic-net-ml/](https://www.geeksforgeeks.org/lasso-vs-ridge-vs-elastic-net-ml/)

 See also [B], ...


## Bidirectional Encoder Representation from Transformer (BERT) Model Family

 A NLP model that was built by [Google] in 2017. It is an Open-Source project by Google AI researchers with a great power of understanding the context of sentence (language) showing high performance in various nlp tasks such as [classification][BERT classification] such as [sentiment analysis], [question answering], [named entity recognition], [machine Translation] and many more.

  * Use the [transformer architecture]
  * BIDIRECTIONAL = use words before and after the [MASK] to predict the Masked word. This is different from unidirectional (used by GPT) such as predicting what the next word is.
  * Can be extended, i.e. FinBERT for financial docs, SpanBERT for Spanish

 Trained using

  * [Masked Language Modeling (MLM)][MLM]     <== pre-train work embedding and contextual understanding using [MASK]
  * and [next sentence prediction (NSP)][NSP].  <== pre-train the [CLS] token (used to perform sequence/sentence-wide task)
    * Note that the representation of the [CLS] token include both the sentences, the one before and the one after the [SEP] token (separation token) (?)

 Superseded by the [RoBERTa model]

 ![](img/b/bert_embeddings.png ){: width=35%}

 {% pdf "https://arxiv.org/pdf/1810.04805" %}

 {% youtube "https://www.youtube.com/watch?v=wjZofJX0v4M" %}

 More at:

  * paper - [https://arxiv.org/abs/1810.04805](https://arxiv.org/abs/1810.04805)
  * derivative models
    * spanBERT - [https://skimai.com/roberta-language-model-for-spanish/](https://skimai.com/roberta-language-model-for-spanish/)
      * [https://arxiv.org/abs/1907.10529](https://arxiv.org/abs/1907.10529)
    * RoBERTa - [https://arxiv.org/abs/1907.11692](https://arxiv.org/abs/1907.11692)
    * Sentence-BERT (SBERT) - create sentence embeddings
  * articles
    * embeddings (token + segment + position) - [https://medium.com/@_init_/why-bert-has-3-embedding-layers-and-their-implementation-details-9c261108e28a](https://medium.com/@_init_/why-bert-has-3-embedding-layers-and-their-implementation-details-9c261108e28a)
    * [https://medium.com/@mromerocalvo/6dcf5360b07f](https://medium.com/@mromerocalvo/6dcf5360b07f)
    * [https://medium.com/dissecting-bert/dissecting-bert-part2-335ff2ed9c73](https://medium.com/dissecting-bert/dissecting-bert-part2-335ff2ed9c73)
    * [https://towardsdatascience.com/transformers-explained-visually-part-3-multi-head-attention-deep-dive-1c1ff1024853](https://towardsdatascience.com/transformers-explained-visually-part-3-multi-head-attention-deep-dive-1c1ff1024853)

 See also [B], [Attention Score], [Attention-Based Model], [Tokenizer]


## Bidirectional RNN (BRNN)

 Bidirectional recurrent neural networks (BRNN) connect two hidden layers running in opposite directions to a single output, allowing them to receive information from both past and future states. This generative deep learning technique is more common in supervised learning approaches, rather than unsupervised or semi-supervised because how difficult it is to calculate a reliable probabilistic model.

 ![](img/b/bidirectional_recurrent_neural_network.png ){: width=30%}

 See also [B], [Recurrent Neural Network]


## Big Data

> "Move the processing where the data is!"

 Big data primarily refers to data sets that are too large or complex to be dealt with by traditional data-processing application software.
 Big data analysis challenges include capturing data, data storage, data analysis, search, sharing, transfer, visualization, querying, updating, information privacy, and data source. Big data was originally associated with three key concepts: volume, variety, and velocity.

 ![](img/b/big_data_1986_to_2007.png ){: width="100%"}

 More at:

  * [https://en.wikipedia.org/wiki/Big_data](https://en.wikipedia.org/wiki/Big_data)

 See also [B], [Deep Learning], [Machine Learning], [MapReduce Process]


## Bigram

 In a bigram model, each word is predicted based on the word directly preceding it. So, the model looks at pairs of words that frequently occur together in the training data. For instance, if the previous word is "sunny," the model might predict that words like "day" or "weather" are likely to follow, based on its learned bigrams like "sunny day" or "sunny weather."

 The essence of a bigram model is this: it uses the immediate past word to predict the next one. It's a simple yet effective way to capture the context in language processing.

 See also [B], [N-Gram]


## Bilingual Evaluation Understudy (BLEU) Score

 This is an algorithm for evaluating the quality of text which has been [machine-translated][machine translation] from one natural language to another. Quality is considered to be the correspondence between a machine's output and that of a human: "the closer a machine translation is to a professional human translation, the better it is" – this is the central idea behind BLEU.

 BLEU was one of the first metrics to claim a high correlation with human judgements of quality, and remains one of the most popular automated and inexpensive metrics. Scores are calculated for individual translated segments—generally sentences—by comparing them with a set of good quality reference translations. Those scores are then averaged over the whole corpus to reach an estimate of the translation's overall quality. Intelligibility or grammatical correctness are not taken into account. 

 BLEU's output is always a number between 0 and 1. This value indicates how similar the candidate text is to the reference texts, with values closer to 1 representing more similar texts. Few human translations will attain a score of 1, since this would indicate that the candidate is identical to one of the reference translations. For this reason, it is not necessary to attain a score of 1. Because there are more opportunities to match, adding additional reference translations will increase the BLEU score.

 In general:

  * BLEU focuses on precision: how much the words (and/or n-grams) in the candidate model outputs appear in the human reference.
  * [ROUGE] focuses on recall: how much the words (and/or n-grams) in the human references appear in the candidate model outputs.

 These results are complementing, as is often the case in the precision-recall tradeoff.

 {% youtube "https://www.youtube.com/watch?v=M05L1DhFqcw" %}

 More at:

  * [https://medium.com/nlplanet/two-minutes-nlp-learn-the-bleu-metric-by-examples-df015ca73a86](https://medium.com/nlplanet/two-minutes-nlp-learn-the-bleu-metric-by-examples-df015ca73a86)

 See also [B], [NLP Metrics]


## Bill Gates Person

 {% youtube "https://www.youtube.com/watch?v=bHb_eG46v2c" %}

 More at:

  * [https://www.gatesnotes.com/The-Age-of-AI-Has-Begun](https://www.gatesnotes.com/The-Age-of-AI-Has-Begun)


## Bin

 See [Bucket]


## Binary Classification

 ~ answer Yes or No, This or That, Boy or Girl

 `Answer a question with Yes or No with a confidence level`. Ex: is this shape a square? The simplest case of classification algorithm. In the case of the support-vector-machine, binary classification can be done with the creation of a hyperplane as a decision boundary in a real, transformed, or latent space.

 See also [B], [Binary Cross-Entropy Loss Function], [Classification], [Multi-class Classification], [Support Vector Machine]


## Binary Cross-Entropy (BCE) Loss Function

 If you are training a [binary classifier], a [multi-label classification], or a [regression], chances are you are using binary cross-entropy / log loss as your [loss function].

```
cross-entropy loss = c = sum(0, n, Pi * log (1/Qi)

# And in the case of binary classification problem where we have only two classes, we name it as binary cross-entropy loss and above formula becomes:
binary cross-entropy loss = c = sum(0, 1, Pi * log (1/Qi) = Po * log(1/Qo) + (1-Po) * log(1/Q1)
```

 {% youtube "https://www.youtube.com/watch?v=DPSXVJF5jIs" %}

 {% youtube "https://www.youtube.com/watch?v=i78buAHKXpI" %}

 More at :

  * [https://towardsdatascience.com/understanding-binary-cross-entropy-log-loss-a-visual-explanation-a3ac6025181a](https://towardsdatascience.com/understanding-binary-cross-entropy-log-loss-a-visual-explanation-a3ac6025181a)

 See also [B], [Cross-Entropy Loss Function], [Entropy]


## Bing Search Engine

 Search engine developed by [Microsoft] that integrates with [ChatGPT][ChatGPT Model[

 See also [B], ...


## Binomial Distribution

 {% youtube "https://www.youtube.com/watch?v=sVBOSwT5K8I" %}

 See also [B], [Distribution]


## Biological Neuron

 Biological neuron are much more powerful than a artificial neuron, aka perceptron.

 {% youtube "https://www.youtube.com/watch?v=hmtQPrH-gC4" %}

 See also [B], [Artificial Neuron], [Brain], [Dendrite], [Synapse]


## BLIP Model

 Create a a caption for an image using an encoder-decoder model (unlike the CLIP model, does not use the same embedding space?).

 See also [B], [CLIP Model], [Image Reconstruction], [Multimodal Translation], [Text Reconstruction]


## Black Box Model

 A neural network is a black box model as even if you saw the weights you would have difficulties understanding how it comes to a decision. In fact it may come to the right answer using the wrong reasons. The opposite of a [White Box Model] in relation to [Explainable AI]

 See also [B], ...


## Block-Sparse Attention

 ~ Computed attention is an [approximate attention]

 See also [B], [FlashAttention]


## BloombergGPT Model

 Based on Bloom, but what makes it special is the data set it is trained on, public and private (FinPile)

 {% youtube "https://www.youtube.com/watch?v=FxMDrHnKWnk" %}

 {% pdf "https://arxiv.org/pdf/2303.17564" %}

 More at:

  * paper - [https://arxiv.org/abs/2303.17564](https://arxiv.org/abs/2303.17564)
  * blog - [https://www.bloomberg.com/company/press/bloomberggpt-50-billion-parameter-llm-tuned-finance/](https://www.bloomberg.com/company/press/bloomberggpt-50-billion-parameter-llm-tuned-finance/)
  * article(s)
    * [https://openaimaster.com/how-to-use-bloomberg-gpt/](https://openaimaster.com/how-to-use-bloomberg-gpt/)

 See also [B], [Chinchilla Scaling Law]


## Boltzmann Machine

 ~ developed in 1985, an improvement on [Hopfield networks] , associative memory network

 ~ can be generative by memorizing the distribution of the data

 an unsupervised DL model in which every node is connected to every other node. That is, unlike the ANNs, CNNs, RNNs and SOMs, the Boltzmann Machines are undirected (or the connections are bidirectional). Boltzmann Machine is not a deterministic DL model but a stochastic or generative DL model. It is rather a representation of a certain system. There are two types of nodes in the Boltzmann Machine — Visible nodes — those nodes which we can and do measure, and the Hidden nodes – those nodes which we cannot or do not measure. Although the node types are different, the Boltzmann machine considers them as the same and everything works as one single system. The training data is fed into the Boltzmann Machine and the weights of the system are adjusted accordingly. Boltzmann machines help us understand abnormalities by learning about the working of the system in normal conditions.

 ![](img/b/boltzmann_machine.jpeg ){: width="100%"}

 {% youtube "https://www.youtube.com/watch?v=_bqa_I5hNAo" %}

 More at:

  * [https://www.geeksforgeeks.org/types-of-boltzmann-machines/](https://www.geeksforgeeks.org/types-of-boltzmann-machines/)

 See also [B], [Deep Belief Network], [Restricted Boltzmann Machine], [Unsupervised Deep Learning Model], [Unsupervised Learning]


## Boosting

 Boosting = [Bagging], but not with equal weights. Think of shareholder voting that is proportional to number of shares.

 Sequentially combine weak predictors (such as [decision trees]) to get a strong predictor! Start by training a random model, which is the first [weak learner]. Evaluate it on the entire dataset. Shrink the points that have good predictions, and enlarge the points that have poor predictions. Train a second [weak learner] on this modified dataset. We continue in this fashion until we build several models. The way to combine them into a [strong learner] is the same way as with [bagging], namely, by voting or by averaging the predictions of the [weak learner]. More specifically, if the learners are classifiers, the [strong learner] predicts the most common class predicted by the [weak learners] (thus the term voting), and if there are ties, by choosing randomly among them. If the learners are regressors, the strong learner predicts the average of the predictions given by the [weak learners].

 Boosting is primarily used to reduce the [bias] and [variance] in a [supervised learning] technique. It refers to the family of an algorithm that converts [weak learners] (base learner) to [strong learners]. The [weak learner] is the classifiers that are correct only up to a small extent with the actual classification, while the strong learners are the classifiers that are well correlated with the actual classification.

 Few famous techniques of Boosting are:

  * [AdaBoost]
  * [Gradient boosting]
  * [Extreme Gradient Boosting (XGBoost)][Xgboost].

 See also [B], [Boosting Step Size]


## Boosting Step Size

 See also [B], [Boosting], [Hyperparameter]


## Bootstrap Sampling Method

 A large number of samples are drawn randomly with replacement from the original dataset, and the model is trained and tested on these samples. This method is used to estimate the variability of a model's performance and the uncertainty of its predictions. The main concept behind bootstrap sampling is train the same model multiple times on multiple samples taken with replacement from the target population. Bootstrapping is the most popular resampling method today. It uses sampling with replacement to estimate the sampling distribution for a desired estimator. The main purpose for this particular method is to evaluate the variance of an estimator. It does have many other applications, including:

  * Estimating confidence intervals and standard errors for the estimator (e.g. the standard error for the mean),
  * Estimating precision for an estimator θ,
  * Dealing with non-normally distributed data,
  * Calculating sample sizes for experiments.

 Bootstrapping has been shown to be an excellent method to estimate many distributions for statistics, sometimes giving better results than traditional normal approximation. It also works well with small samples. It doesn’t perform very well when the model isn’t smooth, is not a good choice for dependent data, missing data, censoring, or data with outliers.

 Bootstrap + Aggregation = [Bagging]

 More at:

  * [https://www.datasciencecentral.com/resampling-methods-comparison/](https://www.datasciencecentral.com/resampling-methods-comparison/)

 See also [B], [Resampling Method]


## Boston Dynamics Company

 Boston Dynamics is an American engineering and robotics design [company] founded in 1992 as a spin-off from the Massachusetts Institute of Technology. Headquartered in Waltham, Massachusetts, Boston Dynamics has been owned by the Hyundai Motor Group since December 2020, but having only completed the acquisition in June 2021.

 Boston Dynamics develops of a series of dynamic highly-mobile robots, including BigDog, Spot, Atlas, and Handle. Since 2019, Spot has been made commercially available, making it the first commercially available robot from Boston Dynamics, while the company has stated its intent to commercialize other robots as well, including Handle.

 Robots:

  * [Atlas]
  * [Spot]
  * [Stretch]

 {% youtube "https://www.youtube.com/watch?v=L9U3B8wnM7w" %}

 More at:

  * [https://www.bostondynamics.com/](https://www.bostondynamics.com/)
  * [https://www.youtube.com/@BostonDynamics](https://www.youtube.com/@BostonDynamics)
  * [https://en.wikipedia.org/wiki/Boston_Dynamics](https://en.wikipedia.org/wiki/Boston_Dynamics)

 See also [B], ...


## Bounding Box

 See also [B], [Object Detection]


## Box Cox Transformation

 A [Feature Distribution Transformation]

 {% youtube "https://www.youtube.com/watch?v=zYeTyEWt7Cw" %}

 More at: 

  * [https://www.statisticshowto.com/probability-and-statistics/normal-distributions/box-cox-transformation/](https://www.statisticshowto.com/probability-and-statistics/normal-distributions/box-cox-transformation/)

 See also [B], ...


## Brain

 See also [B], [Biological Neuron]


## Brain Computer Interface (BCI)

 Connect your [brain] to a computer using a cable and by drilling a hole in your skull!

 Used by [Neuralink]

 See also [B], [Deep Brain], ...


## Bucket

 ~ aka bin

 See also [B], ...


## Bucketing

 ~ aka binning

 Converting a single [feature] into multiple binary features called [buckets] or bins, typically based on a value range. The chopped feature is typically a continuous feature.

 For example, instead of representing temperature as a single continuous floating-point feature, you could chop ranges of temperatures into discrete buckets, such as:

  * <= 10 degrees Celsius would be the "cold" bucket.
  * 11 - 24 degrees Celsius would be the "temperate" bucket.
  * \>= 25 degrees Celsius would be the "warm" bucket.

 The model will treat every value in the same bucket identically. For example, the values 13 and 22 are both in the temperate bucket, so the model treats the two values identically.

 If you represent temperature as a continuous feature, then the model treats temperature as a single feature. If you represent temperature as three buckets, then the model treats each bucket as a separate feature. That is, a model can learn separate relationships of each bucket to the [label]. For example, a [linear regression] model can learn separate [weights] for each bucket.

 Increasing the number of buckets makes your model more complicated by increasing the number of relationships that your model must learn. For example, the cold, temperate, and warm buckets are essentially three separate features for your model to train on. If you decide to add two more buckets--for example, freezing and hot--your model would now have to train on five separate features.

 How do you know how many buckets to create, or what the ranges for each bucket should be? The answers typically require a fair amount of experimentation.

 See also [B], [Synthetic Feature]


## Buffered Online Learning

 Of the two types (online / offline), [online learning algorithms] are more general in that you can easily construct an offline algorithm from a strictly online one plus a stored [dataset], but the opposite is not true for a strictly [offline learning algorithm]. However, this does not necessarily make them superior - often compromises are made in terms of sample efficiency, CPU cost or accuracy when using an online algorithm. Approaches such as [mini-batches] in neural network training can be viewed as attempts to find a middle ground between online and offline algorithms.

 [Experience replay], a common RL technique, used in [Deep Q-Networks] amongst others, is another in-between approach. Although you could store all the experience necessary to fully train an agent in theory, typically you store a rolling history and sample from it. It's possible to argue semantics about this, but I view the approach as being a kind of "buffered online", as it requires low-level components that can work online (e.g. neural networks for [DQN]).

 More at:

  * [https://ai.stackexchange.com/questions/10474/what-is-the-relation-between-online-or-offline-learning-and-on-policy-or-off](https://ai.stackexchange.com/questions/10474/what-is-the-relation-between-online-or-offline-learning-and-on-policy-or-off)

 See also [B], ...


## Byte-Pair Encoding (BPE) Tokenization

 ~ the [tokenization] algorithm used by [OpenAI]. You provide a training corpus and a vocabulary size. The algorithm will then find the optimum tokens.

 :warning: Great tokenizer but heavy biased on English and space separated token (beware German, Chinese, etc.!) --> [RWKV World Tokenizer]

 Byte-Pair Encoding (BPE) was initially developed as an algorithm to compress texts, and then used by [OpenAI] for [tokenization] when pretraining the [GPT model]. It’s used by a lot of [Transformer] models, including GPT, [GPT-2], RoBERTa, BART, and DeBERTa.

 {% youtube "https://www.youtube.com/watch?v=HEikzVL-lZU" %}

 More at:

  * Hugging Face course - [https://huggingface.co/learn/nlp-course/chapter6/5](https://huggingface.co/learn/nlp-course/chapter6/5)

 See also [B], ...
