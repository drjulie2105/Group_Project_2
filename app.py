from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from flask import Flask, jsonify
from flask import request
from flask_migrate import migrate
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
import psycopg2
import os
import json
import pprint

from flask import Flask, jsonify , render_template
TEMPLATE_DIR = os.path.abspath('templates')
STATIC_DIR = os.path.abspath('static')
app = Flask(__name__, template_folder=TEMPLATE_DIR, static_folder=STATIC_DIR)

con = psycopg2.connect("postgresql://postgres:p3nny@localhost:5432/voting_turnout")

cursor = con.cursor()


@app.route("/")
@app.route("/home.html")
def home():
    return render_template('home.html')

@app.route("/vis_1.html")
def vis_1():
    return render_template('vis_1.html')

@app.route("/vis_2.html")
def vis_2():
    return render_template('vis_2.html')

@app.route("/vis_3.html")
def vis_3():
    return render_template('vis_3.html')

@app.route("/bio_page.html")
def bio_page():
    return render_template('bio_page.html')

@app.route("/heatmap_2000")
def heatmap_2000():
    your_json  ='data\lat_long_2000.geojson'
    filename = os.path.abspath('data/lat_long_2000.geojson')

    with open(filename) as test_file:
        data = json.load(test_file)

    return data

# @app.route("/api/v1.0/Democrat_2000", methods=['post', 'get'])
# def demo00():  
#     cursor.execute("select array_to_json(array_agg(row_to_json(t))) from (select * from democrat_2000 ) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v1.0/Democrat_2004", methods=['post', 'get'])
# def demo04():  
#     cursor.execute("select json_agg(t) FROM (SELECT * from democrat_2004) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v1.0/Democrat_2008", methods=['post', 'get'])
# def demo08():  
#     cursor.execute("select json_agg(t) FROM (SELECT * from democrat_2008) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v1.0/Democrat_2012", methods=['post', 'get'])
# def demo12():  
#     cursor.execute("select json_agg(t) FROM (SELECT * from democrat_2012) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v1.0/Democrat_2016", methods=['post', 'get'])
# def demo16():  
#     cursor.execute("select json_agg(t) FROM (SELECT * from democrat_2016) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v.10/Republican_2000")
# def rep00():
#     cursor.execute("select json_agg(t) FROM (SELECT * from republican_2000) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v.10/Republican_2004")
# def rep04():
#     cursor.execute("select json_agg(t) FROM (SELECT * from republican_2004) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v.10/Republican_2008")
# def rep08():
#     cursor.execute("select json_agg(t) FROM (SELECT * from republican_2008) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v.10/Republican_2012")
# def rep12():
#     cursor.execute("select json_agg(t) FROM (SELECT * from republican_2012) t")
#     result = cursor.fetchall()
#     return jsonify(result)

# @app.route("/api/v.10/Republican_2016")
# def rep16():
#     cursor.execute("select json_agg(t) FROM (SELECT * from republican_2016) t")
#     result = cursor.fetchall()
#     return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)