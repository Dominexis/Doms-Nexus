# Import things
import os
import shutil



# Initialize variables
path = os.path.dirname(os.path.realpath(__file__))



# Delete contents of current resource pack
dest_rp_dir = os.path.join(path, "Dom's Nexus Resource Pack - By Dominexis", "assets")
if os.path.exists(dest_rp_dir):
    shutil.rmtree(dest_rp_dir)



# Get list of resource packs to merge together
with open(os.path.join(path, "RP Merger Input.txt"), "r") as file:
    rp_list = file.read().split("\n")



# Iterate through resource packs
for rp in rp_list:

    # Skip empty lines
    if rp == "":
        continue

    # Throw an error if the resource pack doesn't exist
    rp_dir = os.path.join(path, rp, "assets")
    if not os.path.exists(rp_dir):
        print(rp + " doesn't exist.")
        continue
    
    # Iterate through files in resource pack
    for subdir, dirs, files in os.walk(rp_dir):
        # Extract name of subdirectory
        rp_subdir = subdir[len(rp_dir) + 1:]

        # Prepare destination subdirectory
        dest_rp_subdir = os.path.join(dest_rp_dir, rp_subdir)
        if not os.path.exists(dest_rp_subdir):
            os.makedirs(dest_rp_subdir)

        # Iterate through files
        for file_name in files:
            # Copy file if it doesn't exist in the destination
            if not os.path.exists(os.path.join(dest_rp_subdir, file_name)):
                shutil.copy(os.path.join(rp_dir, rp_subdir, file_name), os.path.join(dest_rp_subdir, file_name))
            else:
                # Merge contents of file if it is an item model
                if rp_subdir == "minecraft\\models\\item":

                    # Read new file
                    with open(os.path.join(rp_dir, rp_subdir, file_name), "r") as file:
                        new_contents = file.read().replace(" ", "").replace("\n", "").replace("\t", "")

                    # Extract overrides from new contents
                    if "\"overrides\":[" in new_contents:
                        new_overrides = new_contents[new_contents.find("\"overrides\":[") + 13: new_contents.find("]", new_contents.find("\"overrides\":["))]

                        # Read existing file
                        with open(os.path.join(dest_rp_subdir, file_name), "r") as file:
                            existing_contents = file.read().replace(" ", "").replace("\n", "").replace("\t", "")

                        # Merge overrides if overrides exist in the existing contents
                        if "\"overrides\":[" in existing_contents:
                            
                            # Extract overrides from existing contents
                            existing_overrides = existing_contents[existing_contents.find("\"overrides\":[") + 14: existing_contents.find("]", existing_contents.find("\"overrides\":[")) - 1].split("},{")
                            for i in range(len(existing_overrides)):
                                existing_overrides[i] = "{" + existing_overrides[i] + "}"

                            # Manage custom model data if it exists in both
                            if "\"custom_model_data\":" in new_overrides and "\"custom_model_data\":" in ",".join(existing_overrides):
                                # Extract smallest custom model data value from new contents
                                new_cmd = int(new_overrides[new_overrides.find("\"custom_model_data\":") + 20: min(new_overrides.find(",", new_overrides.find("\"custom_model_data\":")), new_overrides.find("}", new_overrides.find("\"custom_model_data\":")))])

                                # Iterate through existing overrides
                                inserted = False
                                for i in range(len(existing_overrides)):
                                    if new_cmd <= int(existing_overrides[i][existing_overrides[i].find("\"custom_model_data\":") + 20: min(existing_overrides[i].find(",", existing_overrides[i].find("\"custom_model_data\":")), existing_overrides[i].find("}", existing_overrides[i].find("\"custom_model_data\":")))]):
                                        existing_overrides.insert(i, new_overrides)
                                        inserted = True
                                        break
                                if inserted == False:
                                    existing_overrides.append(new_overrides)

                            # Put new overrides at beginning of existing overrides
                            else:
                                existing_overrides.insert(0, new_overrides)

                            # Put existing overrides back into existing contents
                            existing_contents = existing_contents[:existing_contents.find("\"overrides\":[") + 13] + ",".join(existing_overrides) + existing_contents[existing_contents.find("]", existing_contents.find("\"overrides\":[")):]

                        # Put overrides directly into existing contents if they don't exist
                        else:
                            existing_contents = existing_contents[:-1] + ",\"overrides\":[" + new_overrides + "]}"

                        # Save contents to existing file
                        with open(os.path.join(dest_rp_subdir, file_name), "w") as file:
                            file.write(existing_contents)


                # Overwrite file otherwise
                else:
                    shutil.copy(os.path.join(rp_dir, rp_subdir, file_name), os.path.join(dest_rp_subdir, file_name))

    # Tell that resource pack has been merged
    print(rp + " has been merged.")

# Tell that merging is complete
print("Resource pack merging complete.")
input()