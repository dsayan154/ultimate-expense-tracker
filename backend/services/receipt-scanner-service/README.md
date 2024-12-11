# Receipt Scanner Service

## Overview
The Receipt Scanner Service handles OCR and data extraction from receipt images. It processes receipt photos to automatically extract expense details like amount, date, merchant, and items using Google Cloud Document AI.

## Technical Stack
- Firebase Cloud Functions (Python)
- Google Cloud Document AI for receipt parsing
- Firebase Storage for image handling
- Firebase Pub/Sub for event handling

## Deployment
- Functions deployed via Firebase CLI
- Document AI processor configuration
- Image storage in Firebase Storage
- Function triggers:
  * HTTP triggers for receipt upload
  * Storage triggers for image processing
  * Pub/Sub triggers for async processing

## Core Functionalities

### 1. Image Processing
- Receipt image validation
- Image preprocessing and enhancement
- OCR text extraction
- Image storage management

### 2. Data Extraction
- Merchant name detection
- Amount and date extraction
- Item list parsing
- Category suggestion

### 3. Integration
- Direct camera capture processing
- Gallery image processing
- Expense creation from receipt
- Historical receipt storage

## API Endpoints
```
POST /api/v1/receipts/scan
POST /api/v1/receipts/validate
GET /api/v1/receipts/{id}/status
GET /api/v1/receipts/{id}/result
```

## Integration Points
- Expense Service: For creating expenses from receipts
- Analytics Service: For receipt processing statistics
- Storage Service: For receipt image management

## Service Dependencies
- **Expense Service**: For expense creation
- **Analytics Service**: For processing metrics
- **Google Cloud Document AI**: For OCR

## Acceptance Criteria
1. Image Processing
   - Support common image formats
   - Handle various receipt layouts
   - Process images within 3 seconds
   - Proper error handling

2. Data Extraction
   - 95% accuracy for amount/date
   - Merchant name recognition
   - Item list extraction
   - Category suggestions

3. Integration
   - Seamless camera integration
   - Gallery image support
   - Expense auto-creation
   - Receipt history management
