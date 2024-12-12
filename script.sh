METHOD-I(Folder with Recursive):
===============================
===============================
#!/bin/bash

# FTP server details
FTP_SERVER="ftp.example.com"
FTP_USER="your_username"
FTP_PASS="your_password"
REMOTE_DIR="/path/to/remote/folder"
LOCAL_DIR="/path/to/local/destination"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1 --no-parent \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"

Example:1(With parent)
======================
======================

#!/bin/bash

# FTP server details
FTP_SERVER="mentorserver"
FTP_USER="mrcetece"
FTP_PASS="ece@mrcet"
REMOTE_DIR="/home/mrceteceTanner_EDA/"
LOCAL_DIR="/home/mrcetece/Tanner_EDA/"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1  \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"
chmod 777 -R /home/mrcetece/Tanner_EDA/


Example:1-1(With parent/read user input into a variable in Bash)
===============================================================
===============================================================
#!/bin/bash

# FTP server details
FTP_SERVER="mentorserver"
FTP_USER="mrcetece"
#FTP_PASS="ece@mrcet"
read -p "Enter Password for $FTP_SERVER: " FTP_PASS
REMOTE_DIR="/Tanner_EDA/"
LOCAL_DIR="/home/mrcetece/Tanner_EDA/"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1 --no-parent \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"
chmod 777 -R /home/mrcetece/Tanner_EDA/


Example:1-2(With parent/read user input into a variable securly in Bash)
=======================================================================
=======================================================================
#!/bin/bash

# FTP server details
FTP_SERVER="mentorserver"
FTP_USER="mrcetece"
#FTP_PASS="ece@mrcet"
read -sp "Enter Password for $FTP_SERVER: " FTP_PASS
REMOTE_DIR="/Tanner_EDA/"
LOCAL_DIR="/home/mrcetece/Tanner_EDA/"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1 --no-parent \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"
chmod 777 -R /home/mrcetece/Tanner_EDA/


Example:2(Without parent)
========================
========================

#!/bin/bash

# FTP server details
FTP_SERVER="mentorserver"
FTP_USER="mrcetece"
FTP_PASS="ece@mrcet"
REMOTE_DIR="/Tanner_EDA/"
LOCAL_DIR="/home/mrcetece/Tanner_EDA/"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1 --no-parent \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"
chmod 777 -R /home/mrcetece/Tanner_EDA/



METHOD-II(Only All files):
===========================
===========================
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
