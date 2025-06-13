@echo off
SET GOOS=linux&& SET GOARCH=amd64&& go build -ldflags="-s -w" -o main &&del sssa&&upx -9 -o sssa main