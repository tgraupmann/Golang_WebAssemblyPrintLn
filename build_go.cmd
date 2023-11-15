DEL /Q main.wasm
ECHO main.wasm deleted
DIR
go mod init mymod
SET GOARCH=wasm
SET GOOS=js
CALL go build -o main.wasm
ECHO *** main.wasm created ***
DIR

SET GOARCH=amd64
SET GOOS=windows
CALL go run main.go
