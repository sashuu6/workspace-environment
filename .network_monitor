"""
Script Name: network_monitor.py
Purpose: TO check if network and related projects are up
Created on: 11/06/2021 22:30:00
Modified on: 11/06/2021 22:30:00
Revision: 1
GitHub Repository : https://github.com/sashuu6/workspace-environment
"""

import urllib.request
import socket


def __check_site_up(host):
    """ Definition to check url is up

    host: hostname/URL of site
    """
    try:
        urllib.request.urlopen(host)
        return True
    except:
        return False


def main():
    """ Definition main
    """
    # check internet
    internet_access = __check_site_up("http://google.com")
    print(f"Internet Access: {internet_access}")

    # Check if GitHub is down
    github_access = __check_site_up("http://github.com")
    print(f"Github: \t {github_access}")

    print("\nNetwork Information:-")

    # Fetch local IP
    local_ip_address = socket.gethostbyname(socket.gethostname())
    print(f"Local IP: \t {local_ip_address}")

    # Fetch Global IP if internet available
    if internet_access:
        global_ip_address = urllib.request.urlopen(
            "http://ip.42.pl/raw").read().decode("utf-8")
        print(f"Global IP: \t {global_ip_address}")


if __name__ == "__main__":
    main()
