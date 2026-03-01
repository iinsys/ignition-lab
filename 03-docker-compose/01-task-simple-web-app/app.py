from flask import Flask
import redis
import os

app = Flask(__name__)
# Connect to Redis
redis_host = os.environ.get('REDIS_HOST', 'localhost')
r = redis.Redis(host=redis_host, port=6379, db=0)


@app.route('/')
def hello():
    count = r.incr('hits')
    return f'Hello World! I have been seen {count} times.'

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
