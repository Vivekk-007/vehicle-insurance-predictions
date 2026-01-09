# Vehicle Insurance Predictions 🚗📊

An end-to-end Machine Learning Operations (MLOps) project for predicting vehicle insurance customer responses using a RandomForest classifier with automated training, deployment, and prediction pipelines.

## 📋 Table of Contents

- [Project Description](#project-description)
- [Features](#features)
- [Folder Structure](#folder-structure)
- [Technologies Used](#technologies-used)
- [Installation & Setup](#installation--setup)
- [Usage](#usage)
- [Configuration](#configuration)
- [Architecture](#architecture)
- [Future Improvements](#future-improvements)
- [Contribution Guidelines](#contribution-guidelines)
- [License](#license)
- [Author](#author)

## 📖 Project Description

**Vehicle Insurance Predictions** is a production-ready MLOps application that predicts whether vehicle insurance customers will respond positively to insurance offers. The project demonstrates a complete machine learning workflow from data ingestion to model deployment, including:

- **Data Pipeline**: MongoDB integration for data collection and storage
- **ML Pipeline**: Data validation, transformation, model training, and evaluation
- **Web Interface**: FastAPI-based REST API with an interactive HTML form
- **Cloud Integration**: AWS S3 for model storage and deployment
- **Automated Monitoring**: Model performance tracking and automatic model switching

### Why This Project?

Insurance companies need to identify high-probability customers for targeted marketing. This project automates the prediction process, reducing manual effort and improving decision-making accuracy.

### Who Should Use It?

- **Data Scientists**: Learn MLOps best practices and production-grade ML workflows
- **ML Engineers**: Understand model deployment and CI/CD integration
- **Organizations**: Deploy predictive models in insurance, fintech, or customer engagement domains

## ✨ Features

- ✅ **End-to-End ML Pipeline** - Data ingestion → Validation → Transformation → Training → Evaluation → Deployment
- ✅ **MongoDB Integration** - Scalable NoSQL database for data storage
- ✅ **AWS S3 Integration** - Cloud-based model versioning and storage
- ✅ **FastAPI Web Application** - RESTful API with interactive prediction interface
- ✅ **Automated Model Evaluation** - Compares new models with production models
- ✅ **SMOTEENN Handling** - Addresses class imbalance in dataset
- ✅ **Environment Configuration** - `.env` file support for secure credential management
- ✅ **Comprehensive Logging** - Detailed logs for debugging and monitoring
- ✅ **Custom Exception Handling** - Project-specific error management
- ✅ **Model Versioning** - Tracks model performance across training runs

## 📁 Folder Structure

```
vehicle-insurance-predictions/
│
├── app.py                              # FastAPI application entry point
├── demo.py                             # Demo script for testing pipeline
├── requirements.txt                    # Python dependencies
├── setup.py                            # Package setup configuration
├── pyproject.toml                      # Project dependencies and metadata
├── .env                                # Environment variables (MongoDB URL, AWS credentials)
├── .gitignore                          # Git ignore rules
├── LICENSE                             # MIT License
├── README.md                           # This file
│
├── config/                             # Configuration files
│   ├── model.yaml                      # Model hyperparameters
│   └── schema.yaml                     # Data schema validation rules
│
├── logs/                               # Execution logs (auto-generated)
│   └── [timestamp].log                 # Timestamped log files
│
├── artifact/                           # Pipeline artifacts (auto-generated)
│   └── [timestamp]/                    # Timestamped artifact folders
│       ├── data_ingestion/             # Ingested raw and split data
│       ├── data_validation/            # Validation reports
│       ├── data_transformation/        # Preprocessor and transformed data
│       └── model_trainer/              # Trained models
│
├── static/                             # Static web assets
│   └── css/
│       └── style.css                   # Web interface styling
│
├── templates/                          # HTML templates
│   └── vehicledata.html                # Prediction form UI
│
├── notebook/                           # Jupyter notebooks
│   ├── data.csv                        # Sample dataset
│   ├── mongoDB_demo.ipynb              # MongoDB integration demo
│   └── exp-notebook.ipynb              # Exploratory data analysis
│
└── src/                                # Source code
    ├── __init__.py
    │
    ├── cloud_storage/
    │   ├── __init__.py
    │   └── aws_storage.py              # AWS S3 operations (upload, download)
    │
    ├── components/                     # Pipeline components
    │   ├── __init__.py
    │   ├── data_ingestion.py           # Fetch data from MongoDB
    │   ├── data_validation.py          # Validate schema and columns
    │   ├── data_transformation.py      # Feature engineering and scaling
    │   ├── model_trainer.py            # RandomForest model training
    │   ├── model_evaluation.py         # Model performance evaluation
    │   └── model_pusher.py             # Push model to S3
    │
    ├── configuration/
    │   ├── __init__.py
    │   ├── mongo_db_connection.py      # MongoDB client setup
    │   └── aws_connection.py           # AWS credentials handler
    │
    ├── constants/
    │   └── __init__.py                 # Project constants and configs
    │
    ├── data_access/
    │   ├── __init__.py
    │   └── proj1_data.py               # MongoDB data access layer
    │
    ├── entity/
    │   ├── __init__.py
    │   ├── config_entity.py            # Configuration dataclasses
    │   ├── artifact_entity.py          # Pipeline artifact dataclasses
    │   ├── estimator.py                # Model wrapper class
    │   └── s3_estimator.py             # S3-based model operations
    │
    ├── exception/
    │   └── __init__.py                 # Custom exception classes
    │
    ├── logger/
    │   └── __init__.py                 # Logging configuration
    │
    ├── pipline/
    │   ├── __init__.py
    │   ├── training_pipeline.py        # Main ML training orchestration
    │   └── prediction_pipeline.py      # Inference pipeline
    │
    └── utils/
        └── [utility functions]         # Helper functions
```

### Key Files Explained

| File | Purpose |
|------|---------|
| `app.py` | FastAPI server - handles web requests and predictions |
| `src/pipline/training_pipeline.py` | Orchestrates the entire ML pipeline |
| `src/pipline/prediction_pipeline.py` | Loads model and makes predictions |
| `src/components/` | Individual pipeline stage implementations |
| `config/schema.yaml` | Defines expected data columns and types |
| `.env` | Stores MongoDB URL and AWS credentials |

## 🛠 Technologies Used

### Programming & Frameworks
- **Python 3.10+** - Core language
- **FastAPI** - Web framework for REST API
- **Uvicorn** - ASGI server for FastAPI
- **Pandas** - Data manipulation and analysis
- **NumPy** - Numerical computing

### Machine Learning
- **Scikit-learn** - ML algorithms and preprocessing
- **SMOTEENN** - Handling class imbalance (via imbalanced-learn)
- **RandomForest** - Classification algorithm

### Databases & Cloud
- **MongoDB Atlas** - NoSQL database for data storage
- **AWS S3** - Cloud storage for models
- **boto3** - AWS SDK for Python

### DevOps & Configuration
- **python-dotenv** - Environment variable management
- **PyYAML** - YAML configuration parsing
- **from-root** - Project root detection

### Utilities
- **Jinja2** - HTML template rendering
- **Plotly** - Interactive data visualization (in notebooks)

## 📦 Installation & Setup

### Prerequisites
- Python 3.10 or higher
- Windows, macOS, or Linux
- Git
- MongoDB Atlas account (free tier available)
- AWS account (free tier available)

### Step 1: Clone the Repository

```bash
git clone https://github.com/Vivekk-007/vehicle-insurance-predictions.git
cd vehicle-insurance-predictions
```

### Step 2: Create Virtual Environment

**Using Python venv (Recommended):**
```bash
python -m venv vehicle
.\vehicle\Scripts\Activate.ps1  # On Windows
source vehicle/bin/activate      # On macOS/Linux
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

Or if using `pyproject.toml`:
```bash
pip install -e .
```

### Step 4: Configure Environment Variables

Create a `.env` file in the project root:

```env
MONGODB_URL=mongodb+srv://username:password@cluster.mongodb.net/?appName=Cluster0
AWS_ACCESS_KEY_ID=your_aws_access_key_id
AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
AWS_DEFAULT_REGION=us-east-1
```

### Step 5: Verify Installation

```bash
python -c "import src; print('Installation successful!')"
```

## 🚀 Usage

### 1. Training the Model

Run the complete ML pipeline:

```bash
python demo.py
```

This will:
- Fetch data from MongoDB
- Validate schema
- Transform features
- Train RandomForest model
- Evaluate performance
- Push model to S3

### 2. Running the Web Application

Start the FastAPI server:

```bash
python app.py
```

Then open your browser and navigate to:
```
http://localhost:5000
```

**Features:**
- Fill in vehicle data on the form
- Click "Predict" to get insurance response prediction
- Click "Train" to retrain the model

### 3. Making Predictions via API

**Prediction Endpoint:**
```bash
POST http://localhost:5000/
```

**Request Body (form data):**
```
Gender: Male
Age: 30
Driving_License: 1
Region_Code: 10
Previously_Insured: 0
Annual_Premium: 50000
Policy_Sales_Channel: 26
Vintage: 200
Vehicle_Age_lt_1_Year: 1
Vehicle_Age_gt_2_Years: 0
Vehicle_Damage_Yes: 1
```

**Response:**
```json
{
  "context": "Response-Yes"
}
```

### 4. Training via API

```bash
GET http://localhost:5000/train
```

Initiates model retraining. Response: `Training successful!!!`

## ⚙️ Configuration

### Environment Variables (`.env`)

```env
# MongoDB Connection
MONGODB_URL=mongodb+srv://username:password@cluster.mongodb.net/?appName=Cluster0

# AWS Credentials
AWS_ACCESS_KEY_ID=AKIA...
AWS_SECRET_ACCESS_KEY=...
AWS_DEFAULT_REGION=us-east-1
```

### Model Hyperparameters (`config/model.yaml`)

```yaml
n_estimators: 300
max_depth: 10
min_samples_split: 7
min_samples_leaf: 6
criterion: entropy
```

### Data Schema (`config/schema.yaml`)

Defines expected columns, data types, and validation rules.

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                        FastAPI Web App                          │
│                      (http://localhost:5000)                    │
└─────────────────────────────────────────────────────────────────┘
                              ↓
        ┌─────────────────────────────────────────┐
        │      Prediction Pipeline                 │
        │  - Load preprocessor & model from S3    │
        │  - Transform input data                 │
        │  - Generate predictions                 │
        └─────────────────────────────────────────┘
                              ↓
        ┌─────────────────────────────────────────┐
        │      Training Pipeline (optional)       │
        │  1. Data Ingestion (MongoDB)            │
        │  2. Data Validation                     │
        │  3. Data Transformation                 │
        │  4. Model Training                      │
        │  5. Model Evaluation                    │
        │  6. Model Pushing (S3)                  │
        └─────────────────────────────────────────┘
                              ↓
        ┌─────────────────────────────────────────┐
        │    External Services                    │
        │  - MongoDB Atlas (Data Storage)         │
        │  - AWS S3 (Model Storage)               │
        └─────────────────────────────────────────┘
```

## 🔄 ML Pipeline Workflow

1. **Data Ingestion**: Fetch raw vehicle insurance data from MongoDB
2. **Data Validation**: Check schema compliance and data quality
3. **Data Transformation**: 
   - Encode categorical variables
   - Scale numerical features
   - Handle class imbalance with SMOTEENN
4. **Model Training**: Train RandomForest on balanced data
5. **Model Evaluation**: Compare with production model
6. **Model Deployment**: Push best model to AWS S3

## 🚀 Future Improvements

- [ ] **Model Ensemble**: Combine multiple algorithms (XGBoost, LightGBM)
- [ ] **Hyperparameter Tuning**: Automated optimization (Optuna, Ray Tune)
- [ ] **Real-time Monitoring**: Implement Prometheus & Grafana dashboards
- [ ] **A/B Testing**: Compare model versions in production
- [ ] **CI/CD Pipeline**: GitHub Actions for automated training & deployment
- [ ] **Model Explainability**: SHAP values for prediction interpretation
- [ ] **Data Drift Detection**: Monitor input data distribution changes
- [ ] **Docker Containerization**: Containerize app for easy deployment
- [ ] **Kubernetes Orchestration**: Deploy on K8s for scalability
- [ ] **Multi-model Support**: Support multiple ML algorithms

## 🤝 Contribution Guidelines

1. **Fork the repository**
   ```bash
   git clone https://github.com/your-username/vehicle-insurance-predictions.git
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes** and test thoroughly

4. **Commit with clear messages**
   ```bash
   git commit -m "Add: Description of changes"
   ```

5. **Push and create a Pull Request**
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Follow the code style**: PEP 8 for Python

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Vivek Kumar**
- 📧 Email: [kumarvivek05093896@gmail.com](mailto:kumarvivek05093896@gmail.com)
- 🔗 GitHub: [@Vivekk-007](https://github.com/Vivekk-007)
- 💼 LinkedIn: [Connect with me](https://www.linkedin.com/in/vivek-kumar-63587a384/)

---

## 📞 Support & Questions

For questions, issues, or suggestions:
1. Check existing [Issues](https://github.com/Vivekk-007/vehicle-insurance-predictions/issues)
2. Create a new issue with detailed description
3. Email: kumarvivek05093896@gmail.com

---

**⭐ If you find this project helpful, please consider giving it a star!**

Made with ❤️ by [Vivek Kumar](https://github.com/Vivekk-007)
