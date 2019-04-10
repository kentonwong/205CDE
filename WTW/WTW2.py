@app.route('/register',methods = ['POST', 'GET'])
def register():
   if request.method == 'POST':
      
      fir_nam= request.form['first_name']
      las_nam= request.form['last_name']
      email_address=request.form['email']
      phone_no=request.form['phone']
      home_address=request.form['address']
      usrn = request.form['Username']
      uspw = request.form['pwd']

      email_list=[]
      email_count=0
      phone_list=[]
      phone_count=0
      usrn_list=[]
      usrn_count=0

      email_mail=[]
      email_mail.append(email_address)



      db_check= pymysql.connect("localhost", "admin", "123456aaa", "ALL POS")
      with db_check.cursor() as cursor:
         cursor.execute( """SELECT COUNT(email) from customer Where email = '"""+str(email_address)+"""'""")
         email_list=(cursor.fetchall())
         cursor.execute( """SELECT COUNT(telephone_no) from customer Where telephone_no = '"""+str(phone_no)+"""'""")
         phone_list=(cursor.fetchall())
         cursor.execute( """SELECT COUNT(username) from customer Where username = '"""+str(usrn)+"""'""")
         usrn_list=(cursor.fetchall())

      db_check.close()
      for row in email_list:
         email_count+=(int(row[0]))

      for row in phone_list:
         phone_count+=(int(row[0]))

      for row in usrn_list:
         usrn_count+=(int(row[0]))
      
      if (email_count==0) and (phone_count==0) and (usrn_count==0):


         db = pymysql.connect("localhost", "admin", "64962193", "WTW-Computer")

         cursor = db.cursor() 

         x= str(fir_nam)


         sql = """INSERT INTO customer (cr_firstName, cr_lastName, cr_Username, cr_Password, cr_Email, cr_address, cr_phoneNO, shopping_point) VALUES ('%s','%s',%s,'%s','%s','%s','%d',0)"""\
         %(str(fir_nam), str(las_nam),str(usrn), str(uspw), str(email_address), str(home_address),int(phone_no))


         try:
            cursor.execute(sql)
            db.commit()
            
         except:

            db.rollback() 

            return redirect(url_for("login_page"))
         db.close()
         msg = Message('Welcome to become member of WTW-Computer', sender = 'wtwomputer.auto@gmail.com', recipients = email_mail[0].split())
         msg.html = render_template("assisment_mail_register.html",fir_nam=str(fir_nam), las_nam=str(las_nam), email_address=str(email_address), phone_no=str(phone_no), home_address=str(home_address), usrn=str(usrn))
   
         mail.send(msg)
         return redirect(url_for("login_page"))

      elif email_count!=0:
         return render_template("assisment_registor_error.html", fir_nam=fir_nam, las_nam=las_nam, email_address=email_address, phone_no=phone_no, home_address=home_address, usrn=usrn,uspw=uspw, error_email="This email has been registered" )
      elif phone_count!=0:
         return render_template("assisment_registor_error.html", fir_nam=fir_nam, las_nam=las_nam, email_address=email_address, phone_no=phone_no, home_address=home_address, usrn=usrn,uspw=uspw, error_phone="This phone number has been registered" )
      elif usrn_count!=0:
         return render_template("assisment_registor_error.html", fir_nam=fir_nam, las_nam=las_nam, email_address=email_address, phone_no=phone_no, home_address=home_address, usrn=usrn,uspw=uspw, error_usrn="This username has been registered" )
