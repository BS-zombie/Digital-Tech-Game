/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 1
global.serverAddress = "localhost"
global.serverPort = 22082
global.multiplayer = false

var client = 0
if client = 0 {
client = network_create_socket(network_socket_tcp)
network_set_config(network_config_use_non_blocking_socket, true)
network_set_config(network_config_connect_timeout, 1000)


connected = network_connect(client, global.serverAddress, global.serverPort)

if !(connected > 0)  {
	show_debug_message("connected to " + global.serverAddress)
	global.connected = true
	image_speed = 1
}
client_buffer = buffer_create(1024, buffer_fixed, 1)
}