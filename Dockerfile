# ใช้ Go 1.23
FROM golang:1.23

# ตั้ง working directory
WORKDIR /app

# คัดลอก source code
COPY dashboard .
COPY dashboard.db .

# build binary
# RUN go build -o dashboard dashboard.go

RUN chmod +x ./dashboard

# expose port
EXPOSE 7860

# run app
CMD ["./dashboard"]