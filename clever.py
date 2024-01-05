import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, Clever Cloud!'

if __name__ == '__main__':
    # Menggunakan nilai default 8080 jika PORT tidak ditemukan di variabel lingkungan
    port = int(os.environ.get('PORT', 8080))
    app.run(debug=True, host='0.0.0.0', port=port)
