# EVA2DEVOPS

Microservicio Java (Spring Boot) + CI/CD con GitHub Actions + Docker/Compose.

## Endpoints
- `GET /api/hello` → "Hello DevOps from EVA2DEVOPS!"

## Ejecutar local (Docker)
```bash
docker build -t eva2devops:latest .
docker run -d -p 8080:8080 --name eva2devops eva2devops:latest

curl http://localhost:8080/api/hello
