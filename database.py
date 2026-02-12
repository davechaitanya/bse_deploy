import mysql.connector
import os
from dotenv import load_dotenv

load_dotenv()

def get_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST", "shuttle.proxy.rlwy.net"),
        user=os.getenv("DB_USER", "root"),
        port=16679,
        password=os.getenv("DB_PASSWORD", "WBShppxUqcEKDFRArGeFuZLRmfPMldxn"),
        database=os.getenv("DB_NAME", "railway")
    )
