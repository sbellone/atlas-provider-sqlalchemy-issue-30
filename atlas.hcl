data "external_schema" "sqlalchemy" {
  program = [
    "atlas-provider-sqlalchemy",
    "--path", "./src/db/models",
    "--dialect", "sqlite"
  ]
}

env "sqlalchemy" {
  src = data.external_schema.sqlalchemy.url
  dev = "sqlite://?mode=memory&_fk=1"
  migration {
    dir = "file://src/atlas/migrations"
  }
  diff {
    skip {
      rename_constraint = true
    }
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}
