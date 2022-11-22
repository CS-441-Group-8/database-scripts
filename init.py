import os # os system command to run psql command

def runCommand(connection_string, sql_script):
    execStatus = os.system(f"psql {connection_string} -f {sql_script}")
    if execStatus != 0:
        print(f"Error: {execStatus}")

def main():
    sql_script = "tables.sql"
    # Ask user to enter their database name
    print("\n\u001b[32mDatabase Initializer tool. Leave blank to use default values.\u001b[0m")

    d_port_number = 5432
    d_username = "postgres"
    d_host = "localhost"
    # d_password = ""

    # Print the default values
    print("========== Default Values ===========")
    print(f"\u001b[32mPort Number: \u001b[0m{d_port_number}")
    print(f"\u001b[32mUsername: \u001b[0m'{d_username}'")
    print(f"\u001b[32mHost: \u001b[0m'{d_host}'")
    # print(f"\u001b[32mPassword: \u001b[0m'{d_password}'")
    print("=====================================")

    port_number = input("\u001b[32mEnter port number: \u001b[0m")
    username = input("\u001b[32mEnter username: \u001b[0m")
    host = input("\u001b[32mEnter host name: \u001b[0m")
    password = input("\u001b[32mEnter password: \u001b[0m")

    if port_number == "":
        port_number = d_port_number

    if username == "":
        username = d_username

    if host == "":
        host = d_host

    # Create connection string
    connection_string = f"-p {port_number} -U {username} -h {host} -W "

    runCommand(connection_string, sql_script)


if __name__ == "__main__":
    main()