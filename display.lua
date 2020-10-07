rednet.open("top")

io.write("What message do you want to display?")
message = io.read()
rednet.broadcast(message)

io.write("Enter a speed between 1 (slow) and 10 (fast)")
speed = io.read()
rednet.broadcast(speed)
