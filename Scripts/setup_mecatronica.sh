# Download sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Download Arduino 1.8.1
cd Downloads
wget https://downloads.arduino.cc/arduino-1.8.1-linux64.tar.xz
sudo tar xvfJ arduino-1.8.1-linux64.tar.xz -C /opt
cd /opt/
sudo ln -s arduino-1.8.1/ arduino
cd
cd Desktop/

# .desktop file
cat <<EOF > arduino.desktop
[Desktop Entry]
Name=Arduino
Comment=Arduino IDE
Exec=/opt/arduino/arduino
Path=/opt/arduino/
Icon=/opt/arduino/lib/icons/256x256/apps/arduino.png
Terminal=false
Type=Application
Categories=Utility;Application;Development;
EOF
# Set file permission
chmod +x arduino.desktop
# Copy to default location
sudo cp arduino.desktop /usr/share/applications/arduino.desktop

# Set port permission
sudo usermod -a -G dialout "$USER"
sudo chmod a+rw /dev/ttyUSB0

