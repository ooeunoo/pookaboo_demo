import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import json
import csv
from datetime import datetime

# Firebase 프로젝트의 서비스 계정 키 파일 경로
cred = credentials.Certificate('pookaboo.json')

# Firebase 앱 초기화
firebase_admin.initialize_app(cred)

# Firestore 클라이언트 생성
db = firestore.client()

# Firestore에서 'toilet' 컬렉션의 모든 문서 가져오기
toilet_ref = db.collection('toilets').get()

toilet = []
toilet_location = []
toilet_convenience = []
toilet_equipment = []
toilet_time = []

current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

# 가져온 문서를 반복하며 데이터 출력
for index, toilet_doc in enumerate(toilet_ref):
    id = index +1
    # 문서의 데이터 출력
    toilet_dict = toilet_doc.to_dict()
    # Geopoint 필드의 좌표를 추출하여 JSON에 추가
    name = toilet_dict.get('name')           # 화장실 명
    type = toilet_dict.get('type')       # 화장실 타입
    visible = toilet_dict.get('visible') # 맵에 보여지는지
    gender = toilet_dict.get('isGenderSeparation') # 화장실 남녀 분리
    password = toilet_dict.get('hasPassword')      # 화장실 비밀번호
    passwordTip = toilet_dict.get('passwordTip')   # 화장실 비밀번호 팁
    rating = toilet_dict.get('rating')   # 평점
    totalReviews = toilet_dict.get('totalReviews') # 화장실 총 리뷰 갯수
    equipment = toilet_dict.get('equipment') # 화장실 시설
    amenity = toilet_dict.get('amenity')     # 화장실 어메니티
    convenience = toilet_dict.get('convenience')   # 화장실 편의 시설
    location = toilet_dict.get('location')         # 화장실 위치 정보
    time = toilet_dict.get('openingHours')         # 화장실 오픈 시간
    coordinates = toilet_dict.get('coordinates')   # 화장실 위치 좌표

    if coordinates:
        toilet_dict["coordinates"] = {
            "longitude": coordinates.longitude,
            "latitude": coordinates.latitude
        }
    
    toilet_data = {
        "id": id,
        "name": name,
        "type": type,
        "visible": visible ,
        "gender": gender, 
        "password": password ,
        "password_tip": "" if passwordTip == None else passwordTip,
        "rating": rating, # float
        "reviews": totalReviews, # float
        "location_type": location["type"], 
        "address": location["address"],
        "road_address": location["roadAddress"],
        "location_tip":  "" if location["tip"] == None else location["tip"],
        "city": location["region"],
        "longitude": coordinates.longitude,
        "latitude": coordinates.latitude,

        # convenience
        "paper": amenity["toiletPaper"],
        "towel": amenity["handTowel"],
        "soap": amenity["soap"],
        "powder_room": convenience["powderRoom"],
        "hand_dry": convenience["handDry"],
        "vending": convenience["convenienceVendingMachine"],
        "diaper": convenience['diaperChangingTable'],
        "bell": convenience["emergencyBell"],
        
        # time
        "mon": {"open": time.get("mon", {}).get("open", ""), "close": time.get("mon", {}).get("close", "")},
        "tue": {"open": time.get("tue", {}).get("open", ""), "close": time.get("tue", {}).get("close", "")},
        "wed": {"open": time.get("wed", {}).get("open", ""), "close": time.get("wed", {}).get("close", "")},
        "thu": {"open": time.get("thu", {}).get("open", ""), "close": time.get("thu", {}).get("close", "")},
        "fri": {"open": time.get("fri", {}).get("open", ""), "close": time.get("fri", {}).get("close", "")},
        "sat": {"open": time.get("sat", {}).get("open", ""), "close": time.get("sat", {}).get("close", "")},
        "sun": {"open": time.get("sun", {}).get("open", ""), "close": time.get("sun", {}).get("close", "")},

        # equipment
        "urinal": [equipment["common"]["urinal"], equipment["male"]["urinal"], 0],
        "child_urinal": [equipment["common"]["childUrinal"], equipment["male"]["childUrinal"], 0],
        "disable_urinal": [equipment["common"]["disableUrinal"], equipment["male"]["disableUrinal"], 0],
        "seat": [equipment["common"]["seat"], equipment["male"]["seat"], equipment["female"]["seat"]],
        "child_seat": [equipment["common"]["childSeat"], equipment["male"]["childSeat"], equipment["female"]["childSeat"]],
        "disable_seat": [equipment["common"]["disableSeat"], equipment["male"]["disableSeat"], equipment["female"]["disableSeat"]],
        "washbasin": [equipment["common"]["washbasin"], equipment["male"]["washbasin"], equipment["female"]["washbasin"]],

        "modified_at": current_time,
        "created_at": current_time,
    }

    toilet.append(toilet_data)


with open('toilet.csv', 'w', newline='', encoding='utf-8') as csv_file:
    fieldnames = [
        'id', 'name', 'type', 'visible', 'gender', 'password', 'password_tip', 
        'rating', 'reviews', 'location_type', 'address', 'road_address', 'location_tip', 'city', 
        'longitude', 'latitude', 'modified_at', 'created_at', 'paper', 'towel', 
        'soap', 'powder_room', 'hand_dry', 'vending', 'diaper', 'bell', 
        'mon', 'tue', 'wed', 'thu', 'fri', 'sat',  'sun', 'urinal', 'child_urinal', 'disable_urinal', 
        'seat', 'child_seat', 'disable_seat', 'washbasin'
    ]
    writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
    
    writer.writeheader()
    writer.writerows(toilet)
