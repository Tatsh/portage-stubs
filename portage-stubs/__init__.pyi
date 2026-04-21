from collections.abc import Mapping
from typing import Any, TypedDict, type_check_only

from .dbapi.porttree import portagetree
from .package.ebuild.config import config
from .package.ebuild.doebuild import doebuild

__all__ = ('config', 'db', 'doebuild', 'root', 'settings')


@type_check_only
class DBRootDict(TypedDict):
    bintree: Any
    porttree: portagetree
    virtuals: Any


db: Mapping[str, DBRootDict]
root: str
settings: config
