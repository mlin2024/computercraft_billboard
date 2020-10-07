rednet.open("top")
while true do
    io.write("What message do you want to display? (\"shutdown\" to exit)\n")
    message = io.read()
    rednet.broadcast(message)
    if message == "shutdown" then
        return 0
    end
    while true do
        io.write("Enter a speed between 1 (slow) and 10 (fast)\n")
        speed = io.read()
        speeed = tonumber(speed)
        if speeed < 0 or speeed > 10 then
            print("Invalid input.\n")
        else
            rednet.broadcast(speed)
            break
        end
    end
end   
rednet.close()
