import os
import sys
from flask import *
app = Flask(__name__)

@app.route('/index')
def index():
    return render_template('example.html')

@app.route('/')
def index_main():
    os.system("pandoc templates/test.md -o templates/main.html -f markdown -t html   -c /home/xujx/.pandoc/pandoc_css/tplink.css -c /home/xujx/.pandoc/pandoc_css/tplink_sidebar.css -c /home/xujx/.pandoc/pandoc_css/tplink_accondion.css --number-sections --toc   --template=t.html --highlight-style tango --self-contained -s")
	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
    return render_template('main.html')

@app.route('/networking')
def network():
    #os.system("pandoc templates/test.md -o templates/main.html -f markdown -t html -s --highlight-style tango")
	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
    return render_template('networking.html')

@app.route('/test')
def network():
    os.system("pandoc_md.sh templates/test.md")
	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
    return render_template('test.html')

@app.route('/readme')
def readme():
    os.system("pandoc templates/README.md -o templates/README.html -f markdown -t html   -c /home/xujx/.pandoc/pandoc_css/tplink.css -c /home/xujx/.pandoc/pandoc_css/tplink_sidebar.css -c /home/xujx/.pandoc/pandoc_css/tplink_accondion.css --number-sections --toc   --template=t.html --highlight-style tango --self-contained -s")
	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
    return render_template('README.html')

@app.route('/readme1')
def readme1():
    return render_template('README1.html')

if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0')
