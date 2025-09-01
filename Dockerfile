# ใช้ base image Linux เบา ๆ
FROM debian:bookworm-slim

# ตั้ง working directory
WORKDIR /app

# copy binary + database
COPY dashboard .
COPY dashboard.db .

# ให้สิทธิ์ run
RUN chmod +x ./dashboard

# expose port
EXPOSE 8860

# รัน binary
CMD ["./dashboard"]
