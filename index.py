import bottle
from bottle import route, run, static_file, abort, post, request, template
import os

ROOT_FOLDER = os.getcwd()

@route('/')
def index():
	return template('template', '')

@route('/css/<filename:re:.*\.css>')
def send_css(filename):
    return static_file(filename, root=os.path.join(ROOT_FOLDER, './views/css'), mimetype='text/css')

@route('/js/<filename:re:.*\.js>')
def send_js(filename):
    return static_file(filename, root=os.path.join(ROOT_FOLDER, './views/js'))

@route('/img/<filename:re:.*\.*>')
def send_web_image(filename):
    return static_file(filename, root=os.path.join(ROOT_FOLDER, './views/img'))

run(host='localhost', port=8080)