from flask import Flask

app = Flask(__name__)

# Initialize a variable to keep track of the state
current_state = "Hello"

@app.route('/')
def serve_page():
    global current_state

    # Toggle between "Hello" and "World" on each visit
    if current_state == "Hello":
        current_state = "World"
    else:
        current_state = "Hello"

    # Create a simple HTML page with the current state
    html = f"<html><body><h1>{current_state}</h1></body></html>"
    
    return html

if __name__ == '__main__':
    app.run()