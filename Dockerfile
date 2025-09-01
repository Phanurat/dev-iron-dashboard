# ใช้ Go 1.23
FROM golang:1.23

# ตั้ง working directory
WORKDIR /app

# คัดลอก source code
COPY go.mod go.sum ./
RUN go mod download

COPY . .

# build binary
# RUN go build -o dashboard dashboard.go

# expose port
EXPOSE 8860

# run app
CMD ["./dashboard"]
