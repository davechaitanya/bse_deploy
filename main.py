from fastapi import FastAPI, HTTPException
from database import get_connection

app = FastAPI(title="BSE Financial API")

@app.get("/")
def home():
    return {"message": "BSE Financial API is running 🚀"}

# 1️⃣ Get all quarters for a company
@app.get("/financials/{scrip_code}")
def get_financials(scrip_code: str):
    try:
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)

        query = """
        SELECT * FROM quarterly_financials
        WHERE scrip_code = %s
        ORDER BY quarter_end_date DESC
        """

        cursor.execute(query, (scrip_code,))
        results = cursor.fetchall()

        cursor.close()
        conn.close()

        if not results:
            raise HTTPException(status_code=404, detail="No data found")

        return results

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


# 2️⃣ Get specific quarter
@app.get("/financials/{scrip_code}/{quarter}")
def get_quarter(scrip_code: str, quarter: str):
    try:
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)

        query = """
        SELECT * FROM quarterly_financials
        WHERE scrip_code = %s AND quarter = %s
        """

        cursor.execute(query, (scrip_code, quarter))
        result = cursor.fetchall()

        cursor.close()
        conn.close()

        if not result:
            raise HTTPException(status_code=404, detail="No data found")

        return result

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
