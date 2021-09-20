# smartdre - SMARTBOARD drivers

An application for <b>linux</b>, to run drivers/software for old digital boards <b>"SmartBoard"</b> in new <b>Ubuntu</b> based distros. (Bionic and focal based systems). It downloads a <b>docker image</b>, installs dependencies and executes the drivers/software. The aplication run at every startup.

### Working in Boards:

+ SMART Podium 422w 

+ SMART SB480 

+ Smart 800

### Linux compatible systems:

+ Ubuntu Focal and Bionic
+ Linux Mint based on Ubuntu Focal and Bionic 

### Docker image based on:

tag:latest: Stable version with some models

tag 0.6: Guadalinex Edu 2013 (Ubuntu Trusty because there aren't "precise" 32 bits images) STABLE

tag 0.4: Guadalinex Next(Ubuntu Xenial) UNSTABLE

tag 0.3: Ubuntu 12.04 "Precise" 64bits STABLE


<b>Gracias</b> al equipo de Lliurex Team, basé mi dockerfile en el suyo y usé sus archivos.

<b>Thanks to</b> [Lliurex Team](https://portal.edu.gva.es/lliurex/va/) and [mijuanlo](https://github.com/mijuanlo)

![](https://github.com/aosucas499/guadalinex/blob/main/im%C3%A1genes/ubuntu_smartdre.png)

![](https://github.com/aosucas499/guadalinex/blob/main/im%C3%A1genes/mint_smartdre.png)

![](https://github.com/aosucas499/guadalinex/blob/main/im%C3%A1genes/mint_smartdre-icons.png)

## USAGE

    sudo apt-get update -y
    
    sudo apt-get install git -y

    git clone https://github.com/aosucas499/smartdre.git

    cd smartdre

    ./install-smartdre
    
    sudo reboot (Reboot the system - Reiniciar el sistema)

## FILES description

### install-smartdre: Run first. It installs: 
1. Docker. 
2. Driver dependencies needed for the digital board in the host system. ("nwferi-daemon", "nwfermi-module" and "xf86-input-nextwindow").
   Thanks to Geert Lorang (https://github.com/glorang), Daniel Newton (https://launchpad.net/~djpnewton) and [mijuanlo](https://github.com/mijuanlo)
3. Docker image [aosucas499/smartdre](https://hub.docker.com/r/aosucas499/smartdre)
4. File to boot at init session (it copies the file smartdre.desktop to /etc/xdg/autostart)

### smartdre.desktop
File necessary to boot the container when the session starts. Compatible with KDE and GNOME.

### smartdre
It runs the the docker container, taking into account if the container was created or not.

### controlpanel
It runs the controlpanel smartboard, it is necessary for systems without systemtrayicon (Gnome 3.2x)

### orient
It runs the application to orient the board, it is necessary for systems without systemtrayicon (Gnome 3.2x)

