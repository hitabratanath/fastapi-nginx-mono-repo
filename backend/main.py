from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/api/greet")
def greet(name: str = "Guest"):
    return JSONResponse(content={"message": f"Hello, {name}!"})
