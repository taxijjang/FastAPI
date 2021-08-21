from datetime import datetime

from fastapi import APIRouter
from fastapi import Depends
from sqlalchemy.orm import Session
from starlette.responses import Response

from app.database.conn import db
from app.database.schema import Users

router = APIRouter()


@router.get("/")
async def index():
    """
    ELB 상태 체크용 API
    :return:
    """
    # 원래 저장 방법 조금 번거롭다 schema에 create method 정의
    current_time = datetime.utcnow()
    return Response(f"Notification API (UTC: {current_time.strftime('%Y.%m%d %H:%M:%S')})")
