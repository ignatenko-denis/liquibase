## Liquibase

[Liquibase and Maven](https://docs.liquibase.com/tools-integrations/maven/commands/home.html)

Prints which changesets need to be applied to the database.
```sh
mvn liquibase:status
```

Before update, run this and check SQL-script in /target/liquibase/migrate.sql
```sh
mvn liquibase:updateSQL
```

Update all. Result: 5 rows in table `databasechangelog`.
```sh
mvn liquibase:update -e -Dorg.slf4j.simpleLogger.defaultLogLevel=DEBUG
```

Before rollback, run this and check SQL-script in /target/liquibase/migrate.sql 
```sh
mvn liquibase:rollbackSQL -Dliquibase.rollbackCount=2
```

Rollback 2 step back. Result: 3 rows in table `databasechangelog`.
```sh
mvn liquibase:rollback -Dliquibase.rollbackCount=2
```

Rollback to tag. Tag will not be in table `databasechangelog`. Result: 2 rows in table `databasechangelog`.
```sh
mvn liquibase:rollback -Dliquibase.rollbackTag=01.000.00
```

Rollback to tag. Tag will not be in table `databasechangelog`. Result: 0 rows in table `databasechangelog`.
```sh
mvn liquibase:rollback -Dliquibase.rollbackTag=00.000.00
```

Update to the tag. Tag will be in table `databasechangelog`. Result: 3 rows in table `databasechangelog`.
```sh
mvn liquibase:update -Dliquibase.toTag=01.000.00 -e -Dorg.slf4j.simpleLogger.defaultLogLevel=DEBUG
```
