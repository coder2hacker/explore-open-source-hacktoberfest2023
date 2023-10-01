import os

folder_path = os.path.expanduser('~/Desktop/files')

for filename in os.listdir(folder_path):
    old_file_path = os.path.join(folder_path, filename)
    new_file_path = os.path.join(folder_path, filename.lower())

    if old_file_path != new_file_path:
        os.rename(old_file_path, new_file_path)
