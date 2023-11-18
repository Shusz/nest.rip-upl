# nest.rip uploader   
## What is this project?  
Basically just a simple shell script to take a screenshot using flameshot and automatically upload it to https://nest.rip  

## Dependencies  
```
jq
flameshot
curl
```

### Installation on Arch  
``sudo pacman -S curl flameshot jq``  

### Installation on Ubuntu/Debian or derivatives.  
``sudo apt-get install jq flameshot curl``  

## Setup  
Make the script executable  
```
chmod +x PATH_TO_SCRIPT_HERE
```  

Create a file named ".auth" with your nest.rip auth token in the same directory as the shell script.  
```
echo YOUR_AUTH_TOKEN_HERE >> .auth
```  

## Usage  
Execute the script, if everything works, add it as a shortcut in your window manager.  
