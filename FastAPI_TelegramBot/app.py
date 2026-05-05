from fastapi import FastAPI
from routers import faq, notifications, logs

app = FastAPI(title="Chatbot Backend")

app.include_router(faq.router)
app.include_router(notifications.router)
app.include_router(logs.router)

@app.get("/")
def root():
    return {"message": "Chatbot API running"}
