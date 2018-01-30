# DVWA-docker
Dockerfile to allow for easy setup of the DVWA application 


Setup instructions: 

in the same level as the dockerfile, execute: 
docker build -t dvwa .

after the image has been constructed, run: 
docker run -d -p 127.0.0.1:{port of your choice}:80 dvwa

to reach the web app, open browser and navigate to: 
http://localhost:{port of your choice}

the username and password at the login page is : admin/password. (it is a vulnerable site after all!)



To use Kali Linux with dvwa: 
construct the image as before, run 
docker run -d -p {port of your choice}:80 dvwa

ripping out the "127.0.0.1:" part allows anyone to access dvwa as long as they have your public ip address and port number.

To find this address:
run ifconfig, find ethernet adapter, IPV4 address. 

running {ipv4address}:{port of your choice} should allow from anyone (including your kali linux VM!) 


