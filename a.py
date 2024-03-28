import socket
from colorama import Fore

while True:
    try:
        target_ip = input(Fore.BLUE  + "Taranacak Olan IP Veya Domain Adresini Girin:")
        start_port = 1
        end_port = 1000

        target_ip = socket.gethostbyname(target_ip)

        print(Fore.YELLOW + "Host taraması başlatılıyor: ", target_ip + "\n")

        for port in range(start_port, end_port + 1):
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(1)

            result = sock.connect_ex((target_ip, port))
            if result == 0:
                print(Fore.GREEN + "Port {}: Açık".format(port))
            else:
                print(Fore.RED + "Port {}: Kapalı".format(port))
            sock.close()

    except KeyboardInterrupt:
        print(Fore.RED + "\nTarama durduruldu.")
        break
    except socket.gaierror:
        print(Fore.RED + "Hostname çözümlenemedi. Lütfen geçerli bir IP adresi girin.")
    except socket.error:
        print(Fore.RED + "Sunucuya bağlanılamadı.")
