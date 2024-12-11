# Prediction Service

## Overview
The Prediction Service provides intelligent expense suggestions by analyzing various data sources including SMS, location data, historical patterns, and bank statements. It leverages Google Cloud Vertex AI for pattern recognition and suggestions.

## Technical Stack
- Firebase Cloud Functions (Python)
- Google Cloud Vertex AI for predictions
  * AutoML Tables for pattern recognition
  * Prediction endpoints for real-time suggestions
  * Built-in NLP for SMS parsing
- Supabase PostgreSQL for data storage
- Firebase Pub/Sub for event handling

## Deployment
- Functions deployed via Firebase CLI
- Vertex AI endpoint configuration
- Environment variables managed through Firebase Config
- Function triggers:
  * HTTP triggers for suggestion APIs
  * Pub/Sub triggers for async processing
  * Scheduled triggers for data analysis

## Core Functionalities

### 1. Data Source Analysis
- SMS transaction parsing using Vertex AI NLP
- Payment app API integration
- Location context processing
- Weather data correlation
- Bank statement analysis

### 2. Pattern Recognition via Vertex AI
- Recurring expense detection using AutoML Tables
- Spending habit analysis through time-series processing
- Category prediction (>90% accuracy)
- Amount prediction (>85% accuracy)
- Merchant correlation analysis

### 3. Suggestion Generation
- Real-time expense suggestions using prediction endpoints
- Recurring expense reminders based on pattern detection
- Location-based suggestions using contextual data
- Category-based recommendations
- Smart amount suggestions from historical patterns

## API Endpoints

### Suggestion Operations
```
POST /api/v1/predictions/suggest
GET /api/v1/predictions/recurring
POST /api/v1/predictions/analyze-sms
POST /api/v1/predictions/analyze-location
```

## Integration Points
- Expense Service: For expense creation from suggestions
- Analytics Service: For historical pattern analysis
- Location Service: For location context
- SMS Service: For transaction message processing

## Service Dependencies
- **Expense Service**: For expense data
- **Analytics Service**: For pattern analysis
- **Location Service**: For location data
- **SMS Service**: For transaction messages

## Acceptance Criteria

1. Data Source Integration
   - SMS parsing with 95% accuracy
   - Payment app API integration
   - Location data processing
   - Weather data correlation
   - Bank statement analysis

2. Pattern Recognition
   - Recurring expense detection
   - Spending pattern analysis
   - Category prediction accuracy > 90%
   - Amount prediction accuracy > 85%

3. Suggestion Quality
   - Context-aware suggestions
   - Real-time processing
   - Minimal false positives
   - User feedback incorporation

4. Performance
   - Suggestion generation < 1s
   - API response time < 200ms
   - Resource optimization

## Vertex AI Integration Details

### 1. AutoML Tables Usage
- Training on historical expense data
- Feature engineering for better predictions
- Automated model selection and tuning
- Continuous model evaluation

### 2. Prediction Endpoints
- Low-latency REST API endpoints
- Batch prediction support
- A/B testing capability
- Model versioning and rollback

### 3. Performance Optimization
- Caching for frequent predictions
- Batch processing for analysis
- Asynchronous processing for non-critical tasks
- Resource optimization through scaling
