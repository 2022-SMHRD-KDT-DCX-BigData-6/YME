import io

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf
import cv2
import time
import matplotlib.cm as cm
from flask import Flask, request
import pymysql as pm
import tensorflow as tf
import numpy as np
import pandas as pd
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
import json
from flask import make_response
from flask import redirect,url_for
from PIL import Image
# from google.colab.patches import cv2_imshow
from tqdm import tqdm
from sklearn.model_selection import train_test_split
# from tensorflow.keras import Sequential
# from tensorflow.keras.layers import Dense, Flatten, Conv2D, MaxPooling2D, Dropout
# from tensorflow.keras.callbacks import TensorBoard
# from tensorflow.keras.layers import RandomFlip,RandomRotation,RandomZoom
# from keras.utils.traceback_utils import include_frame
# from tensorflow.keras import models
# from tensorflow.keras.applications import VGG16

from flask import Flask, request, redirect
import pymysql as pm
#----------------------------------------------------------------------------------------

app= Flask(__name__)
@app.route("/toResearch",methods=['GET'])
def Rspring():
    if request.method == 'GET':
        pre_q1 = request.args.get('q1')
        pre_q2 = request.args.get('q2')
        pre_q3 = request.args.get('q3')
        pre_q4 = request.args.get('q4')
        pre_q5 = request.args.get('q5')
        pre_q6 = request.args.get('q6')
        pre_q7 = request.args.get('q7')
        pre_q8 = request.args.get('q8')
        pre_q9 = request.args.get('q9')
        pre_q10 = request.args.get('q10')
        pre_q11 = request.args.get('q11')
        pre_q12 = request.args.get('q12')
        pre_q13 = request.args.get('q13')
        pre_q14 = request.args.get('q14')
        pre_q15 = request.args.get('q15')
        pre_q16 = request.args.get('q16')
        pre_q17 = request.args.get('q17')
        pre_q18 = request.args.get('q18')
        pre_q19 = request.args.get('q19')
        pre_q20 = request.args.get('q20')
        pre_q21 = request.args.get('q21')
        pre_q22 = request.args.get('q22')
        pre_q23 = request.args.get('q23')
        pre_q24 = request.args.get('q24')
        pre_id=request.args.get('id')
        pre_univ=request.args.get('univ')

        update = request.args.get('update')



        a = int(pre_q1) + int(pre_q9) + int(pre_q17)
        b = int(pre_q2) + int(pre_q10) + int(pre_q18)
        c = int(pre_q3) + int(pre_q11) + int(pre_q19)
        d = int(pre_q4) + int(pre_q12) + int(pre_q20)
        e = int(pre_q5) + int(pre_q13) + int(pre_q21)
        f = int(pre_q6) + int(pre_q14) + int(pre_q22)
        g = int(pre_q7) + int(pre_q15) + int(pre_q23)
        h = int(pre_q8) + int(pre_q16) + int(pre_q24)
        cal_pre=[a,b,c,d,e,f,g,h]
        maxi=max(cal_pre)
        print("============성향 질문지 계산 알고리즘 계산 결과==========>",maxi)

        ten = ""
        if maxi == a:
            ten = "체육레저"
        elif maxi == b:
            ten = "공연"
        elif maxi == c:
            ten = "학술교양"
        elif maxi == d:
            ten = "취미"
        elif maxi == e:
            ten = "문예전시"
        elif maxi == f:
            ten = "봉사"
        elif maxi == g:
            ten = "종교"
        else:
            ten = "창업"

        print("===========알고리즘 계산을 통한 성향 도출==============>",ten)

    db = pm.connect(
        host='project-db-campus.smhrd.com',
        port=3312,
        user='Min',
        password='1234',
        db='Min')
    cursor = db.cursor()


    sql2 = "select mbti from Member where id=%s"

    cursor.execute(sql2,(pre_id))

    data = cursor.fetchall()




    print("=========DB에서 가져온 유저의 MBTI==========>",data)

    list_data=list(data)
    print(list_data)
    list_data.append(ten)
    print(list_data)
    print(list_data[0][0])
    print(list_data[1])

    mbti_1 = list_data[0][0]
    # 뽑아서 e로 시작하면 1 i로 시작하면 0
    extro = mbti_1.find('e')
    if extro == 0:
        mbti_1 = [1]
    else:
        mbti_1 = [0]

    print("==========MBTI분류===============>",mbti_1)

    # 성향 가져오기
    preference_1 = list_data[1]
    if preference_1 == '체육레저':
        preference_1 = [0, 0, 0, 0, 0, 1, 0, 0]
    elif preference_1 == '문예전시':
        preference_1 = [0, 1, 0, 0, 0, 0, 0, 0]
    elif preference_1 == '취미':
        preference_1 = [0, 0, 0, 0, 0, 0, 1, 0]
    elif preference_1 == '공연':
        preference_1 = [1, 0, 0, 0, 0, 0, 0, 0]
    elif preference_1 == '학술교양':
        preference_1 = [0, 0, 0, 0, 0, 0, 0, 1]
    elif preference_1 == '봉사':
        preference_1 = [0, 0, 1, 0, 0, 0, 0, 0]
    elif preference_1 == '종교':
        preference_1 = [0, 0, 0, 1, 0, 0, 0, 0]
    elif preference_1 == '창업':
        preference_1 = [0, 0, 0, 0, 1, 0, 0, 0]

    print("=========알고리즘으로 계산한 성향 원핫 인코딩 결과==============>",preference_1)

    # mbti랑 성향 리스트로 합치기
    testtest = mbti_1 + preference_1

    # 데이터프레임으로 만들기
    test_label = ['mbti(문제)', '성향(문제)_공연', '성향(문제)_문예전시', '성향(문제)_봉사', '성향(문제)_종교', '성향(문제)_창업', '성향(문제)_체육레저',
                  '성향(문제)_취미', '성향(문제)_학술교양']
    testtest = np.array(testtest)
    testtest = testtest.reshape(1, 9)
    pre_testtest = pd.DataFrame(testtest, columns=test_label)

    print("=======가져온 데이터를 데이터 프레임으로 변경============>",pre_testtest)
    print("=======모델 구동=======")
    # 모델 불러오기
    from tensorflow.python.keras.models import load_model
    model = tf.keras.models.load_model("C:\\Users\\aa1\\Downloads\\multi_club_recommend.h5")
    model.summary()

    # 모델에 값 넣어 예측하기
    labels = ['기타', '문화/취미', '봉사', '전시/공연/음악', '종교', '창업', '체육/레저', '총동아리연합회', '학술']
    predict = model.predict(pre_testtest)
    pred = predict[0]
    pred = pred.reshape(1, 9)

    pre_te = pd.DataFrame(pred, columns=labels)
    print(pre_te)

    top3_test = np.argpartition(pre_te, -3)
    top3_test = pd.DataFrame(top3_test, columns=labels)
    print("=========모델사용후 나온 결과의 상위 3개를 데이터 프레임에서 마지막으로 배치========>",top3_test)

    top3_test = top3_test.iloc[0]
    reco1 = top3_test['학술']
    reco2 = top3_test['총동아리연합회']
    reco3 = top3_test['체육/레저']

    print("=========1순위 결과=========>",labels[reco1])
    print("=========2순위 결과=========>",labels[reco2])
    print("=========3순위 결과=========>",labels[reco3])
    a = labels[reco1]
    b = labels[reco2]
    c = labels[reco3]

    list_reco = [1, 2, 3]
    list_reco[0] = a
    list_reco[1] = b
    list_reco[2] = c
    print("=======최종결과를 하나의 리스트로 담기=========>",list_reco)

    if update == "X" :
        sql3 = "insert into Tendency(id,univ,tendency_1,tendency_2,tendency_3) " \
               "values(%s,%s,%s,%s,%s)"
        cursor.execute(sql3, (pre_id, pre_univ, a, b, c))
        db.commit()
        db.close()
    else :
        sql3 = "update Tendency set tendency_1 = %s, tendency_2 = %s, tendency_3 =%s" \
                "where id = %s"
        cursor.execute(sql3, (a,b,c,pre_id))
        db.commit()
        db.close()




    a=a.replace('/', '')
    return redirect("http://localhost:8081/controller/researchResult.do?tendency_1="+a+";id="+pre_id+"")


# --------------------------------------------------------------------------------------
# Spring Fycharm 연결(id 값 받아오기)


@app.route("/toAnimal", methods=['POST', 'GET'])
def Aspring():
    userid = request.form['sessionUserid']
    print("======회원 아이디 받기======>"+userid)


    image = request.files['image']
    if image.filename != '':

        print("======이미지 불러오기======")
        image_np = np.fromstring(image.read(), np.uint8)
        image_cv2 = cv2.imdecode(image_np, cv2.IMREAD_COLOR)
        cv2.imshow("image_cv2", image_cv2)
        #print(image_cv2)

        #  모델 불러오기
        from keras.models import load_model
        model = load_model('model/fine_tunes250.h5')
        model.summary()
        faceCasecade = cv2.CascadeClassifier("images/haarcascade_frontalface_default (1).xml")
        # test / pickture / 51.j

        # img = cv2.imread('pickture/' + str(i) + '.jpg')
        img = cv2.resize(image_cv2, dsize=(224, 224), interpolation=cv2.INTER_AREA)  #
        # imgGray --> 이미지 흑백처리
        imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        # print(imgGray)
        #
        faces = faceCasecade.detectMultiScale(imgGray, 1.1, 4)
        print("======이미지 전처리======")
        cv2.imshow("imgGray", imgGray)
        # faces 4개 변수 반환 x,y,w,h(위치값)
        for (x, y, w, h) in faces:
            cv2.rectangle(img, (x, y), (x + w, y + h), (255, 0, 0), 2)
            imgCrop = img[y:y + h, x:x + w]
            imgresize = cv2.resize(imgCrop, (224, 224))
            imgGray = cv2.cvtColor(imgresize, cv2.COLOR_BGR2GRAY)

        # plt.imshow(imgGray,cmap='gray')
        # plt.colorbar()
        # plt.show()
        # print(imgGray)

        labels = ['강아지', '고양이', '꼬부기', '늑대', '말', '물고기', '쥐']
        prediction = model.predict(imgGray.reshape((1, 224, 224, 1)))
        pre = prediction
        pre = np.argmax(prediction)
        예측 = labels[pre]
        print("추론결과는 {} 입니다.".format(예측))

        db = pm.connect(
            host='project-db-campus.smhrd.com',
            port=3312,
            user='Min',
            password='1234',
            db='Min')
        cursor = db.cursor()

        # sql = "insert into M_character(id, ani_name) values(%s, %s)"
        sql = "select count(*) from M_character where id = %s"

        cursor.execute(sql, userid)
        data = cursor.fetchone()

        print("======db에 예측 결과 저장======")

        if 0 in data:
            sql2 = "insert into M_character(id,ani_name) values(%s,%s)"
            cursor.execute(sql2,(userid,예측))
        else:
            
            sql2 = "update M_character set ani_name = %s where id = %s"
            cursor.execute(sql2, (예측,userid))

        db.commit()
        db.close()

    print("======예측 결과 전달======")
    return redirect("http://localhost:8081/controller/view_result_profile_animal.do?ani_name="+예측+"")


if __name__ == '__main__':
    app.run(debug=False, host="127.0.0.1", port=80)
# --------------------------------------------------------------------------------------


