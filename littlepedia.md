# jLib's Little wiki
Description of the functions of the jLib library.

### jLib class
##### jLib.Print(a_msg)
Outputs a coloured message to the console.
Arguments:
1. *a_msg* - The text you want to output


##### jLib.IncludeClient(a_path)
Includes file on Client-side
Arguments:
1. *a_path* - Path to file, which you want to include


##### jLib.IncludeShared(a_path)
Includes file on Shared (Server-side + Client-side)
Arguments:
1. *a_path* - Path to file, which you want to include


##### jLib.IncludeServer(a_path)
Includes file on Server-side
Arguments:
1. *a_path* - Path to file, which you want to include

##### jLib.Include(a_file, a_path)
Includes file. Automatically identifies the side of a file by its prefix in the name.
Arguments:
1. *a_file* - Name of file, which you want to include
2. *a_path* - Path to file, which you want to include


##### jLib.IncludeFolder(a_file, a_path)
Includes contains of folder.
Arguments:
1. *a_path* - Folder and its path.


### Player class

##### player:GetMoney()
Returns money of player

##### player:GetSalary()
Returns salary of player

##### player:GetJob()
Returns job of player

##### player:GetGunLicense()
Returns whether the player has a gun licence

##### player:GetArrested()
Returns whether a player has been arrested

##### player:GetWanted()
Returns whether the player has a wanted

##### player:GetWantedReason()
Returns Reason of Wanted
