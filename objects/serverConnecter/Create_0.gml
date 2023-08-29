/// @description Insert description here
// You can write your code in this editor

global.serverAddress = "localhost"
global.serverPort = 22082
global.multiplayer = false

var client = 0
if client = 0 {
client = network_create_socket(network_socket_tcp)
connected = network_connect(client, global.serverAddress, global.serverPort)

if !(connected > 0)  {
	show_debug_message("connected to " + global.serverAddress)
}
client_buffer = buffer_create(1024, buffer_fixed, 1)
}