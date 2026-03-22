
pwd
ls


The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
MacBookPro:FIPU-OS anteorlovic$ mkdir OS_1
MacBookPro:FIPU-OS anteorlovic$ touch OS_1/zadaca.txt
MacBookPro:FIPU-OS anteorlovic$ cd OS_1
MacBookPro:OS_1 anteorlovic$ mkdir vjezba1 && cd vjezba1
MacBookPro:vjezba1 anteorlovic$ touch readme.md
MacBookPro:vjezba1 anteorlovic$ ls
readme.md
MacBookPro:vjezba1 anteorlovic$ cd ..
MacBookPro:OS_1 anteorlovic$ mkdir vjezba2 && touch vjezba2/file.txt
MacBookPro:OS_1 anteorlovic$ cp vjezba2/file.txt vjezba2/file_copy.txt
MacBookPro:OS_1 anteorlovic$ ls vjezba2
file.txt        file_copy.txt
MacBookPro:OS_1 anteorlovic$ rm vjezba2/file.txt && cd .
MacBookPro:OS_1 anteorlovic$ rmdir vjezba2
rmdir: vjezba2: Directory not empty
MacBookPro:OS_1 anteorlovic$ Ne možete ga izbrisati zato što direktorij nije prazan — unutra se još nalazi datoteka file_copy.txt.
bash: Ne: command not found
MacBookPro:OS_1 anteorlovic$ mkdir -p vjezba3/backup
MacBookPro:OS_1 anteorlovic$ touch vjezba3/notes.txt vjezba3/todo.txt vjezba3/script.sh
MacBookPro:OS_1 anteorlovic$ cp vjezba3/* vjezba3/backup
cp: vjezba3/backup is a directory (not copied).
MacBookPro:OS_1 anteorlovic$ cp vjezba3/*.txt vjezba3/*.sh vjezba3/backup
MacBookPro:OS_1 anteorlovic$ rm vjezba3/script.sh && ls vjezba3
backup          notes.txt       todo.txt
MacBookPro:OS_1 anteorlovic$ mkdir vjezba3/backup/$USER
MacBookPro:OS_1 anteorlovic$ mv vjezba3/backup/*.txt vjezba3/backup/*.sh vjezba3/backup/$USER
MacBookPro:OS_1 anteorlovic$ mkdir -p vjezba4/subfolder
MacBookPro:OS_1 anteorlovic$ touch vjezba4/$HOSTNAME
MacBookPro:OS_1 anteorlovic$ mv vjezba4/$HOSTNAME vjezba4/$USER
MacBookPro:OS_1 anteorlovic$ mv vjezba4/$USER vjezba4/subfolder
MacBookPro:OS_1 anteorlovic$ rm "$(pwd)/vjezba4/subfolder/$USER"
MacBookPro:OS_1 anteorlovic$ mkdir vjezba5 && touch vjezba5/$RANDOM.num
MacBookPro:OS_1 anteorlovic$ ls vjezba5
3686.num
MacBookPro:OS_1 anteorlovic$ cp vjezba5/*.num vjezba5/backup.num
MacBookPro:OS_1 anteorlovic$ mkdir backup
MacBookPro:OS_1 anteorlovic$ mv vjezba5/backup.num backup

zadaca 6

MacBookPro:~ anteorlovic$ mkdir /Users/anteorlovic/Documents/FIPU-OS/OS_1/vjezba6
MacBookPro:~ anteorlovic$ cd /Users/anteorlovic/Documents/vjezba6 && touch OS_script.md notes.txt && mkdir scripts
MacBookPro:vjezba6 anteorlovic$ mv /Users/anteorlovic/Documents/vjezba6/OS_script.md /Users/$USER/Documents/vjezba6/scripts
MacBookPro:vjezba6 anteorlovic$ mv /Users/anteorlovic/Documents/vjezba6/notes.txt /Users/$USER/Documents/vjezba6/todo.txt
MacBookPro:vjezba6 anteorlovic$ cd /Users/anteorlovic/Documents/vjezba6/scripts && rm ../todo.txt
MacBookPro:scripts anteorlovic$ 
