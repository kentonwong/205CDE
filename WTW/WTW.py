from flask import Flask, render_template, request, url_for, redirect, session
from flask_mail import Mail, Message
import pymysql
import datetime
app = Flask(__name__)

mail=Mail(app)

app.config['MAIL_SERVER']='smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = 'wtwcomputer.auto@gmail.com'
app.config['MAIL_PASSWORD'] = 'wtwcomputer'
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
mail = Mail(app)




@app.route("/")
def main():
    return render_template("WTW.html")

@app.route("/About")
def about():
    return render_template("WTW-aboutUs.html")

@app.route('/login',methods = ['POST', 'GET'])
def login():
      return render_template("WTW-Login.html")


@app.route('/log',methods = ['POST', 'GET'])
def log():
   if request.method == 'POST':
      
      
      login = request.form
      username = request.form["username"]
      password = request.form["password"]
      
      db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")
      with db.cursor() as cursor:
         found=False
         a = """SELECT cr_Password from customer WHERE cr_Username='""" + username+"""'"""
         cursor.execute(a)
         x=(cursor.fetchall())
         len_x =len(str(x))
         y= str(x)

         if password ==  y[3:len_x-5] and ((y[3:len_x-5])!= ""):
            cursor.execute("""SELECT cr_ID from customer WHERE cr_Username='""" + username+"""'""")
            cusid_db=(cursor.fetchall()[0])
            str_cusid_db = str(cusid_db)
            len_cusid_db = len(str(cusid_db))

            return redirect(url_for("cm_profile"))
         else:
            return render_template("WTW-Login-error.html")
      db.close()

@app.route('/cm_profile',methods = ['POST', 'GET'])
def cm_profile():
    username = "god"
    db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")
    with db.cursor() as cursor:

      cursor.execute( """SELECT * from customer Where cr_Username = '"""+username+"""'""")
      customerinfo=(cursor.fetchall())
    db.close()
      
         

    return render_template("WTW-cm-profile.html",customerinfo = customerinfo)



   #################################################################################################

#error login function
@app.route('/logthree', methods= ['POST','GET'])
def log3():
   if request.method == 'POST':
      
      
      login = request.form
      email = request.form["email"]
      password = request.form["password"]
      
      db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")
      with db.cursor() as cursor:
         found=False
         a = """SELECT cr_Password from customer WHERE cr_Email='""" + email+"""'"""
         cursor.execute(a)
         x=(cursor.fetchall())
         len_x =len(str(x))
         y= str(x)

         if password ==  y[3:len_x-5] and ((y[3:len_x-5])!= ""):
            cursor.execute("""SELECT cr_ID, cr_Username from customer WHERE cr_Email='""" + email+"""'""")
            cusid_db=(cursor.fetchall()[0])
            str_cusid_db = str(cusid_db)
            len_cusid_db = len(str(cusid_db))
            session["Userid"] = str_cusid_db[1:len_cusid_db-2]
            return render_template("WTW-profile.html")
            #return redirect(url_for("profile_page"))
         else:
            return render_template("WTW-Login-error.html")
      db.close()


#error login function
@app.route('/logtwo',methods = ['POST', 'GET'])
def log2():
    if request.method == 'POST':
    	email=request.form["email"]
    	password=request.form["password"]

      
    	db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")
    	cursor = db.cursor() 
    	
    	if(cursor.execute("SELECT * FROM customer WHERE 'cr_Email'='" + emaila + "' OR 'cr_Password'='" + passworda + "'")):
    		db.commit
    		return render_template("WTW-profile.html")
    		#return redirect(url_for("cm_profile")
    	else:
    		db.commit
    		return render_template("WTW-Login-error.html")



    		#na=[cursor.execute("SELECT cr_Email FROM customer WHERE 1")]
    		#pd=[cursor.execute("SELECT cr_Password FROM customer WHERE 1")]
    		#found=False
    		#for e in cursor.fetchall():

    			#if emaila == na[e]:
    				#if passw ==pd[e]:
    					#return render_template("WTW-profile.html")
    					#found = True

    		#if found==False:
    			#return render_template("WTW-Login-error.html")











@app.route('/register',methods = ['POST', 'GET'])
def register():
    if request.method == 'POST':
      
      fir_nam=request.form['first_name']
      las_nam=request.form['last_name']
      email_address=request.form['email']
      phone_no=request.form['phone']
      home_address=request.form['address']
      usrn = request.form['Username']
      uspw = request.form['pwd']



      db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")

      cursor = db.cursor() 


      sql = """INSERT INTO customer (cr_firstName,cr_lastName,cr_Username,cr_Password,cr_Email,cr_address,cr_phoneNO,shopping_point) VALUES ('%s','%s','%s','%s','%s','%s','%d',0)"""\
      %(str(fir_nam),str(las_nam),str(usrn),str(uspw),str(email_address),str(home_address),int(phone_no))


      
      cursor.execute(sql)
      db.commit()
            
      
      email_mail=[]
      email_mail.append(email_address)

      db.close()
      msg = Message('Welcome to become member of WTW-Computer', sender = 'wtwomputer.auto@gmail.com', recipients = email_mail[0].split())
      msg.html = render_template("WTW-mail.html",fir_nam=str(fir_nam), las_nam=str(las_nam), email_address=str(email_address), phone_no=str(phone_no), home_address=str(home_address), usrn=str(usrn))
   
      mail.send(msg)
      return redirect(url_for("login_page"))


@app.route('/reg',methods = ['POST', 'GET'])
def reg():
	return render_template("WTW-Registor.html")

#only shoe for customer who didn't login
@app.route('/set_list')
def set_list():

        db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")

        cursor = db.cursor() 
        cursor.execute("SELECT * FROM product_Set")
        sets = cursor.fetchall()
        return render_template('WTW-ComputerSet.html',data=sets)


@app.route('/smartphone')
def smartphone():

        db = pymysql.connect("localhost", "root", "64962193", "WTW_Computer")

        cursor = db.cursor() 
        cursor.execute("SELECT * FROM products")
        sets = cursor.fetchall()
        return render_template('WTW-smart.html',data=sets)

@app.route('/logout')
def logout():
    session.clear()
    return render_template("WTW.html")

if __name__ == "__main__":
	app.debug = True
	app.run(host="0.0.0.0", port=5000)