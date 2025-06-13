@echo off
SET GOOS=linux&& SET GOARCH=amd64&& go build -ldflags="-s -w" -o main &&del dashboard&&upx -9 -o dashboard main