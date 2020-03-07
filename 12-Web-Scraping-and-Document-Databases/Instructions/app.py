from falsk import Flask, render_template, redirect
from flask_pymongo imprt PyMongo
import scape_mars

app = Flask(__name__)

app.config["MONGO_URI"] = ""
mongo = PyMongo(app)

app.route("/")
def index():
    