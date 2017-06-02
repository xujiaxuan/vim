import os
import sys
from flask import Flask, render_template, request, redirect, url_for, send_from_directory
from flask import *

from werkzeug import secure_filename

app = Flask(__name__)

# This is the path to the upload directory
app.config['UPLOAD_FOLDER'] = 'uploads/'
# These are the extension that we are accepting to be uploaded
app.config['ALLOWED_EXTENSIONS'] = set(['txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'])

# For a given file, return whether it's an allowed type or not
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1] in app.config['ALLOWED_EXTENSIONS']
 
# This route will show a form to perform an AJAX request
# jQuery is loaded to execute the request and update the
# value of the operation
@app.route('/')
def index():
    return render_template('index.html')

# Route that will process the file upload
@app.route('/upload', methods=['POST','GET'])
def upload():
    if request.method == 'GET':
   	    return render_template('upload_file.html')
    # Get the name of the uploaded files
    uploaded_files = request.files.getlist("file[]")
    filenames = []
    for file in uploaded_files:
        # Check if the file is one of the allowed types/extensions
        if file and allowed_file(file.filename):
            # Make the filename safe, remove unsupported chars
            filename = secure_filename(file.filename)
            # Move the file form the temporal folder to the upload
            # folder we setup
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            # Save the filename into a list, we'll use it later
            filenames.append(filename)
            # Redirect the user to the uploaded_file route, which
            # will basicaly show on the browser the uploaded file
    # Load an html page with a link to each uploaded file
	print filenames
    return render_template('upload.html', filenames=filenames)

# This route is expecting a parameter containing the name
# of a file. Then it will locate that file on the upload
# directory and show it on the browser, so if the user uploads
# an image, that image is going to be show after the upload
# http://www.sharejs.com
@app.route('/uploads/<filename>')
def uploaded_file(filename):
    return send_from_directory(app.config['UPLOAD_FOLDER'],
                               filename)

@app.route('/list', methods=['GET'])
def list():
    files = []
    for lists in os.listdir("uploads"):
        files.append(lists)
    return render_template('upload_list.html', filenames=files)

#@app.route('/index')
#def index():
#    return render_template('example.html')

#@app.route('/')
#def index_main():
#    os.system("pandoc templates/test.md -o templates/main.html -f markdown -t html   -c /home/xujx/.pandoc/pandoc_css/tplink.css -c /home/xujx/.pandoc/pandoc_css/tplink_sidebar.css -c /home/xujx/.pandoc/pandoc_css/tplink_accondion.css --number-sections --toc   --template=t.html --highlight-style tango --self-contained -s")
#	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
#    return render_template('main.html')

#@app.route('/networking')
#def network():
#    #os.system("pandoc templates/test.md -o templates/main.html -f markdown -t html -s --highlight-style tango")
#	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
#    return render_template('networking.html')
#

#@app.route('/test')
#def network():
#    os.system("pandoc_md.sh templates/test.md")
#	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
#    return render_template('test.html')

@app.route('/edit/<filename>')
def edit(filename):
    if not os.path.isfile('templates/'+filename+".md"):
        print 'templates/'+filename+".md"
        os.mknod('templates/'+filename+".md")
    os.system("pandoc_md.sh "+'templates/'+filename+".md")
    return render_template(filename + '.html')

@app.route('/edittxt/<filename>')
def edittxt(filename):
    if not os.path.isfile('templates/'+filename+".md"):
        print 'templates/'+filename+".md"
        os.mknod('templates/'+filename+".md")
    os.system("pandoc_md.sh "+'templates/'+filename+".md")
    return render_template(filename + '.md')

@app.route('/editall/<filename>')
def editall(filename):
    return render_template("editall.thml", file=filename)


#@app.route('/readme')
#def readme():
#    os.system("pandoc templates/README.md -o templates/README.html -f markdown -t html   -c /home/xujx/.pandoc/pandoc_css/tplink.css -c /home/xujx/.pandoc/pandoc_css/tplink_sidebar.css -c /home/xujx/.pandoc/pandoc_css/tplink_accondion.css --number-sections --toc   --template=t.html --highlight-style tango --self-contained -s")
#	#ref http://blog.csdn.net/duqi_yc/article/details/8962828
#    return render_template('README.html')
#
#@app.route('/readme1')
#def readme1():
#    return render_template('README1.html')

if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0')
