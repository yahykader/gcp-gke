from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
    if not os.path.exists("data") :
        os.mkdir("data")
    if not os.path.exists("data/counter.txt") :
        with open("data/counter.txt", "w") as f:
            f.write("0")
    with open("data/counter.txt", "r+") as f:
        COUNTER = int(f.read())
        COUNTER += 1
        f.seek(0)
        f.write(str(COUNTER))
        f.truncate()
    return {"Hello": "World", "Counter": COUNTER}
