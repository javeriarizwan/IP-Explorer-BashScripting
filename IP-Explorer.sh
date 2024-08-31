
#!/bin/bash

validate_ipv4() {
    local ip="$1"
    if [[ "$ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        return 0  # Valid IPv4 address format
    else
        return 1  # Invalid IPv4 address format
    fi
}

while true; do
    echo "----------------------------------"
    echo "|   Welcome 'IP' Checker         |"
    echo "----------------------------------"
    echo "Enter your choice:"
    echo "  a) IP Checker"
    echo "  q) Quit"

    read choice
    case "$choice" in
        a)
            echo "Please Enter Ip: "
            read name
            if validate_ipv4 "$name"; then
                res=$(curl http://ip-api.com/json/$name -s)
                status=$(echo $res | grep -o '"status":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                if [ "$status" == "success" ]; then
                    # Existing flow for displaying information
                    echo "                                                            "
                    echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
                    echo "-------IP Information => $name ------------"
                    echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ "
                    echo "                                                            "
                    city=$(echo $res | grep -o '"city":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "-----------------------------"
                    echo "|1| City: $city                "
                    echo "-----------------------------"
                    cntry=$(echo $res | grep -o '"country":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|2| Country: $cntry            "
                    echo "-----------------------------"
                    state=$(echo $res | grep -o '"region":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|3| state: $state              "
                    echo "-----------------------------"
                    countrycode=$(echo $res | grep -o '"countryCode":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|4| Country Code: $countrycode "
                    echo "-----------------------------"
                    regioname=$(echo $res | grep -o '"regionName":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|5| Region Name: $regioname    "
                    echo "-----------------------------"
                    zipcode=$(echo $res | grep -o '"zip":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|6| Zip Code: $zipcode         "
                    echo "-----------------------------"
                    latitude=$(echo $res | grep -o '"lat":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|7| Latitude: $latitude        "
                    echo "-----------------------------"
                    longitude=$(echo $res | grep -o '"lon":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|8| Longitude: $longitude      "
                    echo "-----------------------------"
                    timezone=$(echo $res | grep -o '"timezone":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|9| Time Zone: $timezone       "
                    echo "-----------------------------"
                    organization=$(echo $res | grep -o '"org":[^,]*' | awk -F':' '{print $2}' | tr -d '"')
                    echo "|10| Org: $organization         "
                    echo "-----------------------------"
                else
                    echo "Unable to fetch Information for IP:" $name
                fi
            else
                echo "Please enter correct format of 'IP', correct format is 'number.number.number.number'"
            fi
            ;;
        q)
            echo "Exiting the 'IP' Checker. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 'a' for IP Checker or 'q' to quit."
            ;;
    esac
done