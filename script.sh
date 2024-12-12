#!/bin/bash
HOST=mentorserver
UNAME=mrcetece
PSWD="ece@mrcet"
mkdir -p /home/MentorGraphics/{ams,calibre,nitro,cshrc,Pictures,tanner}/
chmod -R 777 /home/MentorGraphics/{ams,calibre,nitro,cshrc,Pictures,tanner}/
mkdir -p /home/mrcetece/Tanner_EDA/
chmod -R 777 /home/mrcetece/Tanner_EDA/

cd /home/MentorGraphics/cshrc/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/cshrc/
bin
get hep.cshrc
bye
EOF

cd /home/MentorGraphics/ams/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/ams/
bin
mget *
bye
EOF

cd /home/MentorGraphics/nitro/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/nitro/
bin
mget *
bye
EOF

cd /home/MentorGraphics/tanner/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/tanner/
bin
mget *
bye
EOF

cd /home/MentorGraphics/calibre/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/calibre/
bin
mget *
bye
EOF

cd /home/MentorGraphics/Pictures/

ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/MentorGraphics/mentorsoftware/Pictures/
bin
mget *
bye
EOF

cd /home/mrcetece/Tanner_EDA/
ftp -niv $HOST << EOF
user $UNAME $PSWD
cd /home/mrcetece/Tanner_EDA/
bin
mget *
bye
EOF
chmod -R 777 /home/MentorGraphics/ams
chmod -R 777 /home/MentorGraphics/tanner
chmod -R 777 /home/MentorGraphics/nitro
chmod -R 777 /home/MentorGraphics/calibre
chmod -R 777 /home/MentorGraphics/cshrc
chmod -R 777 /home/MentorGraphics/Pictures
chmod -R 777 /home/mrcetece/Tanner_EDA
