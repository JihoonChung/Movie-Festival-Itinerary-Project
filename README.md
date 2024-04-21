## Enhanced README: Movie Festival Itinerary Project

### 1.0 Introduction

**Objective**: Movie festivals offer a rich array of films, attracting cinema enthusiasts who must carefully select which movies to watch to maximize their experience. This project aims to predict the **Audience Score** of unreleased films based on data from Rotten Tomatoes, which uses both a **Tomatometer Score** and an **Audience Score** to evaluate films. Utilizing these predictions, the project seeks to create an optimal movie festival itinerary that maximizes the utility for moviegoers.

### 2.0 Data Collection and Sources

**Data Sources**: 
- **Rotten Tomato Movie Reviews**: Primary source for Audience Scores.
- **All Movie Dataset**: Provides detailed information on film casts and directors.
- **900 Acclaimed Directors Awards & IMDB Analysis**: Used for gathering numerical values and accolades of the film industry professionals.
- **The Oscar Award Dataset**: Utilized for additional data points related to film awards and recognitions.

**Strategy**: The team expanded the primary dataset with additional data points to enrich the predictive accuracy of the Audience Score.

### 3.0 Methodology

#### 3.1 Prediction Model Development

**Approach**:
- **Regression Models Tested**: Linear Regression, LassoCV, RidgeCV, Decision Tree Regressor, and Random Forest Regressor.
- **Model Selection and Tuning**: Initial models indicated overfitting with complex models like Random Forest. Subsequent fine-tuning through feature engineering, mutual information regression for feature selection, and hyperparameter optimization using Grid Search helped improve the models.
- **Ensemble Techniques**: A stacking ensemble approach with a RidgeCV meta-model proved most effective, incorporating the strengths of individual models to enhance prediction accuracy.

#### 3.2 Optimization Model

**Objective**: Construct an optimal viewing schedule by selecting films that maximize the sum of predicted Audience Scores within the constraints of festival timings and duration.
- **Binary Decision Variables**: These determine the inclusion of a film in a specific time slot.
- **Model Validation**: The success of the optimization model was measured by comparing predicted itineraries against actual scores to validate the effectiveness of the predictions.

### 4.0 Results

**Evaluation**:
- **Prediction Accuracy**: The final model achieved a **R2 score** of 39.9%, indicating moderate predictive power, primarily distinguishing between lower and higher-quality films.
- **Optimization Success**: The optimization model was effective in aligning movie schedules based on predicted scores closely matching those based on actual audience scores.

### 5.0 Discussion

**Challenges & Compromises**:
- **Data Assumptions**: The project assumed the accuracy of historical data, like Facebook likes, which may not reflect current trends accurately.
- **Model Limitations**: The prediction model was less effective in pinpointing precise audience scores but was adequate for identifying films worth watching.
- **Scalability and Computational Efficiency**: These remain areas for further improvement and testing.

### 6.0 Conclusion

**Summary**: The project successfully developed a predictive model that, despite certain limitations, effectively contributes to creating an optimal itinerary for movie festival attendees. The alignment of recommended itineraries based on predicted and actual scores highlights the practical utility of the models developed.

This enhanced README provides a structured and detailed overview of the project, maintaining a balance between technical explanations and readability for a wider audience.
