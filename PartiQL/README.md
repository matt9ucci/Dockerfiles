### Build image

```sh
docker image build --tag partiql .
```

### Run container

```sh
docker run --rm -it partiql
```

### Execute query in container

```sql
PartiQL> SELECT e.id, e.name AS employeeName, e.title AS title FROM hr.employees e WHERE e.title = 'Dev Mgr'
   |
===' 
<<
  {
    'id': 4,
    'employeeName': 'Susan Smith',
    'title': 'Dev Mgr'
  }
>>
---
OK! (8 ms)
```
