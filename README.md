# Chatbot for Educational Institutions (FAQ + Notifications)

A chatbot system developed for Tallinna Tehnologia Koledž to automate responses to frequently asked questions and deliver important notifications to students and staff.

## Features
- Automated FAQ responses
- Admin panel for managing questions and answers
- Notification broadcasting to all users
- Logging of user interactions
- Modular architecture (Bot + API + Database + Admin Panel)

## Tech Stack
- Backend: Python FastAPI
- Bot: Telegram Bot API
- Database: PostgreSQL
- Admin Panel: React + Vite
- Deployment: Docker (optional)

## Project Structure
project/
├── backend/
├── bot/
└── admin-panel/

## Installation
1. Clone the repository  
2. Install backend dependencies  
3. Configure environment variables  
4. Run backend and bot  
5. Start admin panel  

## API Endpoints
- `/faq` – FAQ management  
- `/notifications` – notifications  
- `/logs` – logs  

## Future Improvements
- NLP-based question understanding  
- Multilingual support  
- Integration with school information systems  

## License
MIT License

