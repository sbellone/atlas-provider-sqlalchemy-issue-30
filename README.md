Steps to reproduce issue https://github.com/ariga/atlas-provider-sqlalchemy/issues/30:
```
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip install -r requirements.txt
$ PYTHONPATH=. atlas migrate diff --env sqlalchemy
Error: data.external_schema.sqlalchemy: running program /path/to/test-atlas/.venv/bin/atlas-provider-sqlalchemy: /path/to/test-atlas/src/db/models/test.py:7: SAWarning: This declarative base already contains a class with the same class name and module name as test.Test, and will be replaced in the string-lookup table.
  class Test(Base):
InvalidRequestError: Table 'tests' is already defined for this MetaData instance.  Specify 'extend_existing=True' to redefine options and columns on an existing Table object. in src/db/models/test.py
To skip on failed import, run: atlas-provider-sqlalchemy --skip-errors
```

## Additional Information

```
$ python
Python 3.11.2 (main, Apr 28 2025, 14:11:48) [GCC 12.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
```
