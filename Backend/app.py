from flask import Flask, jsonify, render_template, request
from flask_sqlalchemy import SQLAlchemy

app=Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = ''

db = SQLAlchemy(app)

class Request(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	title = db.Column(db.String(100))
	description = db.Column(db.String(200))

@app.route('/')
def index():
	reqs = Requests.query.all()
	return render_template('home.html', reqs=reqs)


@app.route('/add', methods=['POST'])
def add():
	req = Request(title=request.form['todoitem'], )
	return '<h1>{}</h1>'.format(request.form['todoitem'])
	
if __name__ == '__main__':
	app.run(debug=True)
	