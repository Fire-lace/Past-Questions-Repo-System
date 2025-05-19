from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join('instance', 'pqrs.db')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Question(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    course = db.Column(db.String(50), nullable=False)
    year = db.Column(db.Integer, nullable=False)

@app.route('/questions', methods=['GET'])
def get_questions():
    questions = Question.query.all()
    return jsonify([{'id': q.id, 'title': q.title, 'course': q.course, 'year': q.year} for q in questions])

@app.route('/questions', methods=['POST'])
def add_question():
    data = request.json
    question = Question(title=data['title'], course=data['course'], year=data['year'])
    db.session.add(question)
    db.session.commit()
    return jsonify({'message': 'Question added successfully'}), 201

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)