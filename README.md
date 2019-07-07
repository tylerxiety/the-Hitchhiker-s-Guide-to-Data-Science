# The Hitchhiker's Guide to Data Science

I put all the notes of online and on-campus data science courses and learning activities here. For me, it's putting all the pieces togather and then easier to do some reflection and comparison. For others, I hope it'll be useful.


## Machine Learning and Deep Learning

### Course: 
 [Machine Learning by Stanford Uni on Coursera](https://www.coursera.org/learn/machine-learning) (Currently on Week 7)
 
### Notes:

**Machine Learning**: A program is said to learn from experience E with respect to tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E.

**Supervised Learning**: Needs labelled examples (x,y). Categorized into "regression" and "classification" problems.

**Unsupervised Learning**: Needs only the input (x). Categorized into "clustering" (e.g.,  market segmentation, text summarization)and "non-clustering" (e.g., the "Cocktail Party Algorithm") problems.


### Supervised Learning

- **Supervised Learning Models**: A hypothesis function H to predict the corresponding value Y of input X (i.e., H : X → Y). The accuracy of the function h is measured by a **cost function** J. 

- **Cost Function**: a convex  function of the parameter estimates θ to measure the accuracy of hypothesis function H. Function types are different for regression and classification models.

- **Ways to Optimize θ**:
  - **Gradient Descent**: A method to estimate the parameters θ in the hypothesis function h by finding the minimum value of the cost function J, which is taking the derivative of cost function J(θ).
  - **Normal Equation**: another way of minimizing J by explicitly taking its derivatives with respect to the θ's, and setting them to zero. This allows to find the optimum θ without iteration.
  - **More sophisticated ones**: Conjugate gradient, BFGS, L-BFGS, etc.

- **Techniques for Gradient Descent**:
  - **Feature Scaling**: divide the input values by the range, resulting in a new range of just 1. 
  - **Mean Normalization**: subtract the average value from the values for that input variable, resulting in a new average value for the input variable of just zero.
  - **Learning Rate alpha**: increase alpha if convergance is slow, decrease alpha if cost function J(θ) ever increases.
  - **Automatic Convergence Test**: declare convergence if J(θ) decreases by less than E in one iteration, where E is some small value such as 10^−3. However, it's difficult to choose this threshold value.

- **Comparison of Gradient Descent and Normal Equation**:

  | Gradient Descent | Normal Equation |
  |----------------|:-------------:|
  | Need to choose alpha | No need to choose alpha |
  | Needs many iterations | No need to iterate |
  | Complexity O (k\*n^2) | Complexity O (k\*n^3), need to calculate inverse of X^T\*X |
  | Works well when n is large | Slow if n is very large |

- **Model/Function Types**:
  - **Linear Regression**: a linear function to model the relationship between dependent variable Y and one or more independent variables X.
  -  **Multivariate Linear Regression**: Linear regression with multiple variables. 
  - **Polynomial Regression**: combine multiple features into one (e.g., combine x1 and x2 into a new feature x3 by taking x1\*x2). This can be a quadratic, cubic or square root function.
  - **Classification Model / Binary Logistic Regression**: use a **Logistic Function** (also called **Sigmoid Function**) maps any input X to the (0, 1) interval. The hypothesis function H gives the probability of output Y (e.g., H(x)=0.7 means a probability of 70% that the output is 1, or 30% for output 0). 
  - **Multiclass Classification**: a One-vs-all approach. Train a Binary Logistic Regression classifier H for each class￼ to predict the probability that ￼ ￼y = i￼￼. To make a prediction on a new x, pick the class ￼that maximizes H.
  - **Support Vector Machines (SVM)**

- **Decision Boundary**: the line that separates the area where y = 0 and where y = 1. It is created by hypothesis function.

### Regularization

- **Underfitting / High Bias**: is when hypothesis function H maps poorly to the trend of the data. It is usually caused by a function that is too simple or uses too few features. 
 
- **Overfitting / High Variance**: is when hypothesis function H fits the available data but does not generalize well to predict new data. It is usually caused by a complicated function that creates a lot of unnecessary curves and angles unrelated to the data.
 
- **Options to Address Overfitting**:
  - **Reduce the number of features**:
    - Manually select which features to keep.
    - Use a model selection algorithm.
  - **Regularization**:
    - Keep all the features, but reduce the magnitude of parameters θ 
    - Regularization works well when we have a lot of slightly useful features.
    
### Application Examples

- **Spam Classification with SVM**
  - **Email preprocessing and normalization**:
    - Remove Header
    - Lower-casing
    - Stripping HTML
    - Normalizing URLs
    - Normalizing Email Addresses
    - Normalizing Numbers
    - Normalizing Dollars
    - Word Stemming: Words are reduced to their stemmed form. For example, "discount", "discounts",discounted" and "discounting" are all replaced with "discount". Sometimes, the Stemmer actually strips additional characters from the end, so "include", "includes", "included" and "including" are all replaced with "includ".
    - Removal of non-words: Non-words and punctuation have been removed. All white spaces (tabs, newlines, spaces) have all been trimmed to a single space character.
    
  - **Vocabulary list**: 
    - Choose only the most frequently occuring words as the set of words considered.
    - Map each word in the preprocessed emails into a list of word indices.
  - **Feature Extraction**: produces a feature vector from the word indices. 
  - **Train**
  
  
### Unsupervised Learning

- **Models**:
   - **k-Means Algorithm**: An iterative procedure that starts by guessing the initial centroids, and then refines this guess by repeatedly assigning examples to their closest centroids and then recomputing the centroids based on the assignments.
     - Random initialization: 
       - K < m
       - Randomly pick K training examples
       - Try random initialization a couple of times (2-10, 10-100, ...)
     - Choose the value K:
       - Elbow method: Find the "elbow" of the plot. But not always is the case.
       - Evaluate K means based on a metric.
       
   - **Dimentionality Reduction Model and Examples**:
       - Models:
         - Principal Component Analysis (PCA)
       - Applictions:
         - Data Compression: 
           - Speed up supervised learning
           - Reduce memory/disk needed to store data
         - Better Data Visualization
       - Bad Application: Use PCA to prevent overfitting (instead, use regularization).
   - **Principal Component Analysis (PCA)**:
      - Normalize the data.
      - Compute the covariance matrix of the data.
      - Compute the eigenvectors.
  
  
   - **Anomaly Detection Algorithm** (also called Density Estimation Algorithm):
     - Application examples:
       - Fraud detection
       - Monitoring machines in a data center
       - Manuafacturing (e.g. airvraft engines)   
     - Algorithm:
       1. Choose features x that might be indicative of anomalous examples.
       2. Fit parameters μ and σ square
       3. Given new example x, compute ρ(x) = Π ρ(x, μ, σ square), Anomaly if ρ(x) < ε.        
     - Techniques:
       - Choose/create features taht might take on unusually large or small values in the event of an anomaly.
       - Make features gaussian.
       
  - **Anomaly Detection vs. Supervised Learning**
  | Anomaly Detection | Supervised Learning |
  |----------------|:-------------:|
  | Very small number of positive examples (y = 1), large number of negative examples (y = 0).| Large number of postive and negative examples. |
  | Many different "types" of anomalies, hard to learn what the anomalies look like due to too few examples; future anomalies may be very different from ones in the training set.  | Enough positive examples for algorithm to learn, future positive examples likely to be similar to ones in training set. |

  - **Multivariate Gaussian Distribution Algorithm**
    Instead model ρ(x1), ρ(x2),... separately, model ρ(x) all in one go: ρ(x;μ,ε).
  
  - **Anomaly Detection Algorithm vs. Multivariate Gaussian Algorithm**
   | Anomaly Detection | Multivariate Gaussian |
  |----------------|:-------------:|
  | ρ(x1;μ1,σ1 square)*...* ρ(xn;μn,σn square) | ρ(x;μ,∑) |
  | Manually create features to capture correlations between features. | Automatically captres correlations.|
  |Computationally cheaper, scale better to larger feature size n; perform good if training set size m is small. | computationaly more expensive; must have m > n, or else ∑ is non-invertible.|

  
  
  
### Courses list:

### Machine Learning and Deep Learning
- Machine Learning by Stanford Uni on Coursera (Currently on Week 7)
- Neural Networks and Deep Learning by deeplearning.ai on Coursera (Currently on Week 2)
- Machine Learning (intro and intermediate) on Kaggle
- Deep Learning on Kaggle
- Tensorflow on Udacity
- Data Science & Machine Learning using Python - A Bootcamp on Udemy
- Google Machine Learning Crash Course

### Languages and libraries
**SQL**
- SQL(BigQuery) on Kaggle
- Exploring and Preparing your Data with BigQuery by Google on Coursera
- Querying Data with Transact-SQL by Microsoft on edX

**Python**
- python on datacamp
- python on Kaggle
- Python 3 Programming by Uni Michigan on Coursera (until Week3)
- Using Databases with Python by Uni Michigan on Coursera
- Capstone: Retrieving, Processing, and Visualizing Data with Python by Uni Michigan on Coursera
- Pandas on Kaggle
- Data Visualization (pandas, seaborn, matplotlib, plotly, plotnine/ggplot2) on Kaggle
- Python Visualization Dashboards with Plotly's Dash on Udemy

**R**
- R on datacamp

**Scala**
- Implementing Predictive Analytics with Spark in Azure HDInsight by Microsoft on edX

**Spark**
- Implementing Predictive Analytics with Spark in Azure HDInsight by Microsoft on edX

**Tensorflow**
- Google Machine Learning Crash Course
- Tensorflow on Udacity

### Visualization and BI Tools
- Tableau by Duke Uni on Coursera
- Data-driven Decision Making by PwC on Coursera (Excel)
- Analyzing and Visualizing Data with Power BI by Microsoft on edX
- Azure SQL Database for the SQL Server DBA  on Pluralsight
- SQL Server Fundamentals on Pluralsight

### Cloud
**GCP**
- Serverless Data Analysis with Google BigQuery and Cloud Dataflow by Google on Coursera
- Leveraging Unstructured Data with Cloud Dataproc on Google Cloud Platform by Google on Coursera
- Google Cloud Platform Big Data and Machine Learning Fundamentals by Google on Coursera

**Azure**
- Implementing Predictive Analytics with Spark in Azure HDInsight by Microsoft on edX
- Querying Data with Transact-SQL by Microsoft on edX
- Azure SQL Database for the SQL Server DBA  on Pluralsight

### Big Data
- Introduction to Big Data by UC San Diego on Coursera

### Other technology
- Inspiring and Motivating Individuals by Uni Michigan on Coursera
- Blockchain by Uni Buffalo & The State Uni New York on Coursera (currently on week 3)
