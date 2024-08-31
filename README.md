**Overview**
IP Explorer is a Bash script designed to provide detailed information about a given IPv4 address. It validates the input IP address format and then fetches comprehensive details such as location, timezone, and organization from the ip-api.com API.
**
Features**
**IP Validation:** Ensures the input follows the correct IPv4 format.
**Public IP Information:** Retrieves and displays information such as city, country, region, zip code, latitude, longitude, timezone, and the organization associated with the IP address.
**User-Friendly Interface:** Offers a simple menu to either check an IP address or quit the application.
**Prerequisites**
**Bash:** The script runs in a Bash shell environment.
**curl:** Required to make API requests to ip-api.com. Ensure curl is installed and accessible from your terminal.
**Usage**
**Run the Script:**

Open your terminal and navigate to the directory containing the IP-Explorer.sh script.
Make the script executable if it isn’t already:

**Execute the script:**

**Menu Options:**

After running the script, you'll see a menu with the following options:
a) IP Checker: Enter an IP address to retrieve its information.
q) Quit: Exit the script.
**IP Validation:**

The script will prompt you to enter an IP address. It validates the input format to ensure it is a valid IPv4 address.
If the IP address format is correct, it will fetch and display detailed information about the IP address.
If the format is incorrect, you'll receive a prompt to enter the correct format.

**Exiting**
To exit the script, choose the q option from the menu.
**Notes**
The IP information is fetched from the ip-api.com API. Ensure that your system has an active internet connection for the script to work correctly.
