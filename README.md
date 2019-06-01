# The Hitchhiker's Guide to Data Science

I put all the notes of online and on-campus data science courses and learning activities here. For me, it's putting all the pieces togather and then easier to do some reflection and comparison. For others, I hope it'll be useful.

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

## Machine Learning and Deep Learning
- [Machine Learning by Stanford Uni on Coursera](https://www.coursera.org/learn/machine-learning) (Currently on Week 7)

**Machine Learning**: A program is said to learn from experience E with respect to tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E. In general, it has two broad classifications: Supervised learning and Unsupervised learning.

**Supervised Learning**: Data has labels. Categorized into "regression" and "classification" problems.

**Unsupervised Learning**: No labels. Categorized into "clustering" and "non-clustering" (e.g., the "Cocktail Party Algorithm") problems.

### Supervised Learning

**Supervised Learning Models**: A hypothesis function H to predict the corresponding value Y of input X (i.e., H : X → Y). The accuracy of the function h is measured by a **cost function** J. 

**Gradient Descent**: A method to estimate the parameters in the hypothesis function h by finding the minimum value of the cost function J, which is taking the derivative of cost function J as a function of the parameter estimates.

**Model/function Types**:
- **Linear Regression**: A linear function to model the relationship between dependent variable Y and one or more independent variables X. Linear regression with multiple variables is also known as **Multivariate Linear Regression**.

\begin{align}
\dot{x} & = \sigma(y-x) \\
\dot{y} & = \rho x - y - xz \\
\dot{z} & = -\beta z + xy
\end{align}

