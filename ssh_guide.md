# SSH Configuration
These steps will help you configure SSH. CSE Servers are used as example here, but it is much the same for any host (eg. Raspberry Pi).

## Setting up SSH login without password

### 1. Make the config directory
```shell
mkdir ~/.ssh
cd ~/.ssh
```
SSH Config is stored in the `~/.ssh/` directory.
First we will make sure it exists, and then change to that directory.

### 2. Generate SSH key pairs
```shell
ssh-keygen -f ~/.ssh/cse_id_rsa -t rsa -b 4096 -C “z5555555@cse.unsw.edu.au”
```
`cse_id_rsa` will hold the private key, keep it secret, keep it safe.  
`cse_id_rsa.pub` will hold the public key. It is okay for anyone to know.  
The `-f` flag specifies an identity file to save the key in.  
The `-t` flag specifies the type of encryption, and `-b` sets the number of bits in the key.  
`-C` is a comment, typically an email to keep track if you have multiple keys.  

### 3. Copy public key to the host
```shell
ssh-copy-id -i ~/.ssh/cse_id_rsa.pub z5555555@cse.unsw.edu.au
```
This will add your public key to `~/.ssh/authorized_keys` on the host (the CSE server).

### 4. Add private key to the SSH agent
#### Linux:
```shell
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/cse_id_rsa
```

#### macOS:
```shell
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/cse_id_rsa
```


## SSH Configuration
### SSH Alias
Paste the following code in `~/.ssh/config`. Be sure to change the User, and if you prefer you can choose a different CSE server (eg. wagner, weill, williams).
```shell
Host cse
    User z5555555
    HostName weber.cse.unsw.edu.au
    IdentityFile ~/.ssh/cse_id_rsa
```
This sets `cse` as the alias for this profile, which means you can start an SSH session with `ssh cse`. If you see a message like "The authenticity of host can't be established", that is normal and you can type `yes` to continue.

### X-Forwarding and Compression
You can optionally add these as well. `ForwardX11Trusted` is equivalent to passing `-Y`, and allows some graphical programs [to be used](https://www.seas.upenn.edu/cets/answers/x11-forwarding.html) over SSH.  
Compression and the alternate ciphers can give better [latency and performance](http://xmodulo.com/how-to-speed-up-x11-forwarding-in-ssh.html).
```shell
    ForwardX11Trusted yes
    ForwardAgent yes
    ForwardX11 yes
    XAuthLocation /opt/X11/bin/xauth  # macOS only
    Compression yes
    CompressionLevel 4
    Ciphers arcfour128,blowfish-cbc
    
```

### For macOS users
Add the following if you are on macOS Sierra 10.12.2 or later.  
If you add other hosts in the future, add their `IdentityFile` at the bottom.  
After doing this you shouldn't need to enter a password when connecting.  
More details [here](https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain).  
```shell
Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/cse_id_rsa
    #IdentityFile ~/.ssh/rpi_id_rsa

```


## Squelch login message
To silence login message:  
1. Start SSH connection with host (`ssh cse`)
3. Run `touch ~/.hushlogin`
