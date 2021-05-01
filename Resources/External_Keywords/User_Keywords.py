from os import mkdir

# function without arguments and return value

# def create_folder():
#     mkdir("C:/Users/euagsup/Desktop/Test_Demo")


# function with arguments and without return value

# def create_folder(folder_name, subfolder_name):
#     mkdir("C:/Users/euagsup/Desktop/" +folder_name )
#     mkdir("C:/Users/euagsup/Desktop/" + folder_name + "/" + subfolder_name )

# function with arguments and return value

def create_folder(folder_name, subfolder_name):
    mkdir("C:/Users/euagsup/Desktop/" +folder_name )
    mkdir("C:/Users/euagsup/Desktop/" + folder_name + "/" + subfolder_name )
    return(folder_name + "/" + subfolder_name)
