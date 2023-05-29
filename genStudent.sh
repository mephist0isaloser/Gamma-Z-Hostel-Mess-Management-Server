#! /bin/bash
#alias genStudent='
sudo useradd -m -s /bin/bash HAD
sudo passwd HAD
sudo usermod -aG sudo HAD
sudo useradd -m -s /bin/bash GarnetA
sudo passwd GarnetA
sudo useradd -m -s /bin/bash GarnetB
sudo passwd GarnetB
sudo useradd -m -s /bin/bash Opal
sudo passwd Opal
sudo useradd -m -s /bin/bash Agate
sudo passwd Agate
sudo mkdir /home/HAD/GarnetA 
sudo chown GarnetA:GarnetA /home/HAD/GarnetA
sudo mkdir /home/HAD/GarnetB
sudo chown GarnetB:GarnetB /home/HAD/GarnetB
sudo mkdir /home/HAD/Opal
sudo chown Opal:Opal /home/HAD/Opal
sudo mkdir /home/HAD/Agate 
sudo chown Agate:Agate /home/HAD/Agate
sudo mkdir /home/HAD/GarnetA/0
sudo mkdir /home/HAD/GarnetA/1
sudo mkdir /home/HAD/GarnetA/2
sudo mkdir /home/HAD/GarnetA/3
sudo mkdir /home/HAD/GarnetA/4
sudo mkdir /home/HAD/GarnetA/5
sudo mkdir /home/HAD/GarnetA/6
sudo mkdir /home/HAD/GarnetA/7
sudo mkdir /home/HAD/GarnetA/8
sudo mkdir /home/HAD/GarnetA/9
sudo mkdir /home/HAD/GarnetA/10
sudo mkdir /home/HAD/GarnetA/11
sudo mkdir /home/HAD/GarnetB/0
sudo mkdir /home/HAD/GarnetB/1
sudo mkdir /home/HAD/GarnetB/2
sudo mkdir /home/HAD/GarnetB/3
sudo mkdir /home/HAD/GarnetB/4
sudo mkdir /home/HAD/GarnetB/5
sudo mkdir /home/HAD/GarnetB/6
sudo mkdir /home/HAD/GarnetB/7
sudo mkdir /home/HAD/GarnetB/8
sudo mkdir /home/HAD/GarnetB/9
sudo mkdir /home/HAD/GarnetB/10
sudo mkdir /home/HAD/GarnetB/11
sudo mkdir /home/HAD/opal/0
sudo mkdir /home/HAD/opal/1
sudo mkdir /home/HAD/opal/2
sudo mkdir /home/HAD/opal/3
sudo mkdir /home/HAD/opal/4
sudo mkdir /home/HAD/opal/5
sudo mkdir /home/HAD/opal/6
sudo mkdir /home/HAD/opal/7
sudo mkdir /home/HAD/opal/8
sudo mkdir /home/HAD/opal/9
sudo mkdir /home/HAD/opal/10
sudo mkdir /home/HAD/opal/11
sudo mkdir /home/HAD/Agate/0
sudo mkdir /home/HAD/Agate/1
sudo mkdir /home/HAD/Agate/2
sudo mkdir /home/HAD/Agate/3
sudo mkdir /home/HAD/Agate/4
sudo mkdir /home/HAD/Agate/5
sudo mkdir /home/HAD/Agate/6
sudo mkdir /home/HAD/Agate/7
sudo mkdir /home/HAD/Agate/8
echo "enter the path for the student data base:"
read dbase_stu
while IFS=',' read -r Name RollNumber Hostel Room Mess MessPref; do
    # Create the student
    cd /home/HAD/$Hostel/$Room
    sudo mkdir $Name
    sudo useradd -m -s /bin/bash "$Name"
    sudo chown $Name:$Name /home/HAD/$Hostel/$Room/$Name
    sudo touch /home/HAD/$Hostel/$Room/$Name/fees.txt
    sudo touch /home/HAD/$Hostel/$Room/$Name/userdetails.txt
    echo Name:$Name, Roll Number:$RollNumber, Department:-, Year:-, Hostel:$Hostel, Allocated Mess:$Mess, Month:-, Mess Preferences: $MessPref


    cd


done < $dbase_stu
