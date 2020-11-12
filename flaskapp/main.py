from flask import Flask
from flask_cors import CORS
#from components import (experiment, login, peripheral, rack, device_details, recipe)
app = Flask(__name__)

cors = CORS(app, resources={r"/api/*": {"origins": "*"}})
CORS(app)

'''
app.register_blueprint(experiment.experiment_component)
app.register_blueprint(login.login_component)
app.register_blueprint(peripheral.peripherals_component)
app.register_blueprint(rack.rack_component)
app.register_blueprint(device_details.device_details_component)
app.register_blueprint(recipe.recipe_component)
'''

@app.route('/', methods=['GET', 'POST'])
def index():
    return "Hello Nuclear Geeks"

if __name__ == '__main__':
    app.run(host='localhost', port=5000, debug=True, threaded=True)
