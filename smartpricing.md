# Notes for the Smart Pricing Project

The Smart Pricing project is to develop pricing strategies for a petrol station 
chain using machine learning and optimization algorithms. This project is under 
supervision of Noah Zhao.

## Topics
### 1. Data Diagnosis

- Data validation and cleaning: keep as much data as possible in this stage.

### 2. Design Pattern
- Folder structure, and naming
- Coding pattern: scientific
- Code organization: notebook, scripts, functions

### 3. Requirement Gathering
- Business understanding and empathy
- Boundary and pain points

### 4. Modeling
- Machine learning + optimization algorithms
- ML part is to estimate the demand function
- Requirements: accuracy, usability (ie, optimizable, fast computation)

- Model building: 
    - get data -> validate data -> build target variable (demand curve) -> define metrics
-> Baseline models -> model comparison -> model tuning -> model training -> feature engineering
-> Model selection -> harden features -> harden model -> test -> deploy

- Deliverables : model tracker, models, model APIs, docs
- Metrics: MAE, RMSE, MSE, MAPE, RMSLE, runtime performance
- Split data: random, random with stratification, time series, growing windows
- Cross validation:LOOCV, K fold, K fold with stratification, time series,
- Model levels: global, local
- Model types: stats model, traditional ML models, DL models.

#### 4.1. Modelling Tactics
- Linear Regression: 
    - address multicollinearity
    - address non-linearity: 1) transform the data, e.g., log, 2) apply segmentation

- Decision Tree:
    - single tree is prone to overfitting:
        - Bagging: random forests
        - Boosting: Gradient Boosting Machine, e.g., xgboost, lightGBM
    - feature engineering are very important
    - parameters make big differences
    
- RNN:
    - address that RNN is not good at memorising inputs from a long time ago: 
    LSTM, GRU, lag features
    - General tricks:
        - Inputs normalisation
        - Dropout
        - Clipping
        - Optimiser
        - etc.
        
- Ensemble techniques:
    - Bagging
    - Boosting
    - Stacking
    - Blending
    
- Model tuning:
    - Parameter tuning sequence:
        1. Learning rate
        2. Model structure parameters: reduce bias
        3. Regularization parameters: reduce variance
    - High bias: training and validation error are both high
        - More features
        - More complicated model
        - Parameter tuning
    - High variance: training and validation error are very different
        - Consider stratification of validation set
        - Simpler model: regularisation
    
    
#### 4.2. Feature ideas
- Derived features (for time series data):
    - numeric:lag, YoY, MA, Diff, %, etc.
    - categorical: clusters, store flag, time-based features from date, 
    promotion flag, OHE, etc.
- More ideas (specific for this project):
    - Public holidays
    - Store operating hours
    - Relative cost to baseline
    - Star-employee stores
    - No. of fuel products
    - Relative lagged prices for other fuel products
    
### 5. Optimization
- Deliverables: demand curve functions, optimization algorithms, optimization
diagnosis functions, optimizer API
- Demand curve: 
    - what-if scenarios, rather than a plot of historical data
    - Monotonic Transformation, to make demand curve more make sense
    
- Key elements: 
    - objective: may change when new constraints introduced
    - decision variables
    - constraint
    - search space
    
- Brute Force:
    - condition: 
        - When Search Space is not big
        - When function is not differentiable
- Types of Optimisation Problems:
    - Constrained vs. unconstrained
    - One variable vs. multiple variables
    - Discrete variable(s) vs. continuous
    - Static vs. dynamic
    - Deterministic vs. stochastic
    - Linear function vs. non-linear
    
- Types of Optimisation Algorithms:
    - Mathematical programming
        - Linear Programming / Convex Programming
        - Nonlinear programming
    - Dynamic programming
    - Branch-and-Bound
    - Constraint programming
    - Meta-heuristics
        - Simulated annealing
        - Tabu search
        - Evolutionary algorithms
        - Swarm intelligence

- Mathematical Representation

- Python packages: SciPy Optimization and Root Finding, PuLP, Pyomo, CVXOPT, 
Google OR Tools.

- Solving Multi-Objective Optimisation Problems:
    - Dominance
    - Weighted Sum
    - ε-Constraint

- Considerations when choosing open source packages (for commercial use):
    - truly open source?
    - good developer community?
    - supported by a trustworthy organisation?
    
- Metaheuristic Algorithms: there isn't a list of heuristic algorithms,
but a general set of methodologies for heuristics.
    - Genetic Algorithm
    - Particle Swarm Optimisation
    - Ant Colonial Algorithm
    - Simulated Annealing
    - Water Waves Optimisation
    - Chemical Reaction Optimisation
    - etc.

- Genetic Algorithm:
    - No assumption about the fitness function
    - Iterative process
        1. Initialise Population
        2. Define a Fitness Function
        3. Selection (Elitism)
        4. Crossover (Recombination)
        5. Mutation (Random change)
        6. repeat 3-5 until the stopping criteria is met
    - Stopping Criteria:
        - Exceeding the max number of generations/iterations
        - Exceeding runtime
        - Achieving the desired fitness value
        - Achieving no improvement for a certain number of iterations
        
### 6. Model Deployment

- Deliverables: Flask API, app

- Types of Model Deployment: API vs. batch 

- Types of API methods: GET(a task), GET(a list of task), POST, PUT, DELETE

- API Response Status

- Tips:
    - In http://xxx.x.x.x:xxxx/smartpricing/api/v1.0/data, 
    the /smartpricing/api/v1.0/data part is called the API endpoint
    - Good API design is noun, version, simple
    
- Deployment minimum:
    - Python
    - Codebase
    - Dependencies (e.g. Packages)
    - A command which tells the procedure to run the code
    - Data*