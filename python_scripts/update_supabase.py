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


with open("data/toilet.csv", "r", newline="", encoding="utf-8") as toilet_data:
    toilets = csv.DictReader(toilet_data)

    # Iterate through each row and update specific fields
    for row in toilets:
        id = row["id"]
        supabase.table("toilet").update(
            {
                "ratings": {
                    "cleanliness": 0,
                    "management": 0,
                    "convenience": 0,
                    "safety": 0,
                }
            }
        ).eq("id", id).execute()

        # Update other related tables if needed
        # supabase.table("toilet_convenience").update(
        #     {
        #         "paper": row["paper"],
        #         "towel": row["towel"],
        #         "soap": row["soap"],
        #         "powder_room": row["powder_room"],
        #         "hand_dry": row["hand_dry"],
        #         "vending": row["vending"],
        #         "diaper": row["diaper"],
        #         "bell": row["bell"],
        #     }
        # ).eq("toilet_id", id).execute()

        # supabase.table("toilet_equipment").update(
        #     {
        #         "urinal": row["urinal"],
        #         "child_urinal": row["child_urinal"],
        #         "disable_urinal": row["disable_urinal"],
        #         "seat": row["seat"],
        #         "child_seat": row["child_seat"],
        #         "disable_seat": row["disable_seat"],
        #         "washbasin": row["washbasin"],
        #     }
        # ).eq("toilet_id", id).execute()

        # supabase.table("toilet_time").update(
        #     {
        #         "mon": row["mon"],
        #         "tue": row["tue"],
        #         "wed": row["wed"],
        #         "thu": row["thu"],
        #         "fri": row["fri"],
        #         "sat": row["sat"],
        #         "sun": row["sun"],
        #     }
        # ).eq("toilet_id", id).execute()
