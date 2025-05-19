# Past Questions Repo System (PQRS)

A system for managing past examination questions with:
- Python Flask backend API
- Flutter mobile frontend

## Features
- Question repository management
- User authentication
- Question upload/download
- Search functionality

## Setup
### Backend
1. Install Python dependencies: `pip install -r requirements.txt`
2. Run Flask app: `python app.py`

### Frontend
1. Install Flutter SDK
2. Run `flutter pub get`
3. Run app: `flutter run`

## Project Structure
```
pqrs/
├── backend/ (Python Flask project)
│   ├── app.py                # Main Flask application
│   ├── models.py             # Database models
│   ├── requirements.txt      # Python dependencies
│   ├── static/               # For static files (CSS, JS, etc.)
│   ├── templates/            # Flask templates
│   └── instance/
│       └── pqrs.db           # SQLite database file
├── frontend/ (Flutter project)
│   └── pqrs_app/
│       ├── android/          # Android-specific files
│       ├── ios/              # iOS-specific files
│       ├── lib/
│       │   ├── main.dart     # Main app entry point
│       │   ├── screens/      # Flutter screens
│       │   └── services/     # API services
│       ├── pubspec.yaml      # Flutter dependencies
│       └── test/             # Flutter tests
├── .gitignore               # Git ignore rules
└── README.md                # Project documentation
```