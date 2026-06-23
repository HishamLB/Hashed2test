A test bash script for the game  [hashed2nite](https://github.com/Silverh4wk/hashedh2nite). 

# How to run?

- Keep the game binary in the same directory as the test script
- Run ```chmod +x hashed2test.sh```

Currently it supports a few arguments that you have to pass:

1. "IP_ADDR:PORT"
2. "PORT"
3. "Number of Clients"
4. optional "--logfile" argument that outputs the server logs to a file 

# Example

```./hashed2test.sh "192.168.100.30:6767" "6767" "5" --logfile```
