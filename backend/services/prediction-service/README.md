# Prediction Service

## Overview
The Prediction Service provides intelligent expense suggestions by analyzing various data sources including SMS, location data, historical patterns, and bank statements. It leverages Google Cloud Vertex AI for pattern recognition and suggestions.

## Technical Stack
- Firebase Cloud Functions (Python)
- Google Cloud Vertex AI for predictions
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
- SMS transaction parsing
- Payment app API integration
- Location context processing
- Weather data correlation
- Bank statement analysis

### 2. Pattern Recognition
- Recurring expense detection
- Spending habit analysis
- Category prediction
- Amount prediction
- Merchant correlation

### 3. Suggestion Generation
- Real-time expense suggestions
- Recurring expense reminders
- Location-based suggestions
- Category-based recommendations
- Smart amount suggestions

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
