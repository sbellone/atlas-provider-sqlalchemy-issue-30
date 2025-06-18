from sqlalchemy import Text, UUID, Uuid
from sqlalchemy.orm import Mapped, mapped_column

from src.db.base import Base


class Test(Base):
    __tablename__ = "tests"

    uuid: Mapped[UUID] = mapped_column(Uuid(as_uuid=True), primary_key=True)
    test: Mapped[str] = mapped_column(Text, nullable=False)
