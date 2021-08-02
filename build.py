from jinja2 import Environment, FileSystemLoader, select_autoescape
import os
import math

def loadTemplate():
    templates_dir = os.path.join(os.getcwd(), 'templates'),
    env = Environment(loader = FileSystemLoader(templates_dir),
                    autoescape=select_autoescape(['html']))
    template = env.get_template('base.html')
    return template
