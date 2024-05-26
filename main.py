import os
import requests
from colorama import Fore
import pyfiglet

banner = pyfiglet.figlet_format("Liste Scan")
print(Fore.LIGHTBLACK_EX + banner)

klasor_yolu = os.path.join(os.getcwd() , "Taranacaklar")
os.chdir(klasor_yolu)

files = os.listdir(klasor_yolu)
for file in files:
    for idx, file in enumerate(files):
        print(f"{idx}: {file}")
file_index = int(input("Açmak istediğiniz dosyanın numarasını girin: "))  

selected_file_path = os.path.join(klasor_yolu, files[file_index])
with open(selected_file_path, 'r') as file:
    content = file.read()
    content = content.strip()
    