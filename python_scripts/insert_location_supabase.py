
import os
from supabase import create_client, Client
from dotenv import load_dotenv
import csv

load_dotenv()

SUPA_BASE_URL = os.getenv("SUPA_BASE_URL")
SUPA_BASE_ANON_KEY = os.getenv("SUPA_BASE_ANON_KEY")

url: str = SUPA_BASE_URL
key: str = SUPA_BASE_ANON_KEY
supabase: Client = create_client(url, key)


with open('data/toilet.csv', 'r', newline='', encoding='utf-8') as toilet_data:
    toilets = csv.DictReader(toilet_data)

    # 각 행을 반복하며 데이터 출력
    for row in toilets:
        id = row["id"]
        supabase.table('toilet').insert(
            {
                "id": id,
                "name": row["name"],
                "type": row["type"],
                "visible": True if row["visible"] else False ,
                "gender": row["gender"],
                "password": row["password"],
                "password_tip": row["password_tip"],
                "rating": 0,
                "reviews": 0,
                "location_type": '기타' if row["location_type"] == None else row["location_type"],
                "address": row["address"],
                "road_address": row["road_address"],
                "location_tip": row["location_tip"],
                "city": "서울특별시",
                "coordinates": f'POINT({row["longitude"]} {row["latitude"]})',
                "modified_at": row["modified_at"],
                "created_at": row["created_at"]}).execute()

        supabase.table('toilet_convenience').insert(
            {
                "id": id,
                "toilet_id": id,
                "paper": row["paper"],
                "towel": row["towel"],
                "soap": row["soap"],
                "powder_room": row["powder_room"],
                "hand_dry": row["hand_dry"],
                "vending": row["vending"],
                "diaper": row["diaper"],
                "bell": row["bell"],
            }).execute()


        supabase.table('toilet_equipment').insert(
            {
                "id": id,
                "toilet_id": id,
                "urinal": row["urinal"],
                "child_urinal": row["child_urinal"],
                "disable_urinal": row["disable_urinal"],
                "seat": row["seat"],
                "child_seat": row["child_seat"],
                "disable_seat": row["disable_seat"],
                "washbasin": row["washbasin"],
            }).execute()
        

        supabase.table('toilet_time').insert(
            {
                "id": id,
                "toilet_id": id,
                "mon": row["mon"],
                "tue": row["tue"],
                "wed": row["wed"],
                "thu": row["thu"],
                "fri": row["fri"],
                "sat": row["sat"],
                "sun": row["sun"],
            }).execute()