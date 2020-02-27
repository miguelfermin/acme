package main

import (
	"app/server"
	"fmt"
	"os"
)

func main() {
	apiKey := os.Getenv("ACME_SERVER_API_KEY")
	addr := os.Getenv("ACME_SERVER_TCP_ADDRESS")
	driverName := os.Getenv("ACME_SERVER_SQL_DRIVER_NAME")
	dataSourceName := os.Getenv("ACME_SERVER_SQL_DATA_SOURCE_NAME")

	fmt.Println("template-app running on addr:", addr)
	fmt.Println("template-app db driverName:  ", driverName)
	fmt.Println("template-app db dataSource:  ", dataSourceName)
	fmt.Println("template-app apiKey:         ", apiKey)

	server.Init(addr, apiKey, driverName, dataSourceName)
}
