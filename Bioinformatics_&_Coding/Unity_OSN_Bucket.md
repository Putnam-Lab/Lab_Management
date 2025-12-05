# Transferring Data to OSN Storage Bucket

In order to transfer data from Unity to the OSN pod, you will have to use the command-line tool Rclone. Rclone is available on Unity whenever you access the cluster, while you have to load a module on Andromeda by using module load rclone/1.66.0.

## Configure your Unity account to have access to OSN

For both clusters, you have to edit the Rclone configuration file that is located here: ~/.config/rclone/rclone.conf. You can create it if you don't have one already. In the Rclone configuration file, you will add the following information about the OSN bucket that was allocated to your lab. 

```
~/.config/rclone/rclone.conf
nano ~/.config/rclone/rclone.conf
```

Enter this text, replace the `OSN RW Bucket Access Key` and `OSN RW Bucket Secret Key` with the keys from Hollie (she has them in an email from `admin@osn.mghpcc.org`):

```
[osn-pod]
type = s3
provider = Ceph
access_key_id = `OSN RW Bucket Access Key`
secret_access_key = `OSN RW Bucket Secret Key`
endpoint = https://uri.osn.mghpcc.org
no_check_bucket = true 
```

## How to see what's in the OSN bucket

1. Hollie may have access to a GUI version?
2. From command line in Unity (once setup above has been completed)

```
rclone ls osn-pod:hollie-putnam-lab-data
rclone lsd osn-pod:hollie-putnam-lab-data  #will print out all the directories
```

## Starting transfers

1. Start tmux session to prevent the transfer crashing if your terminal disconnects

```
tmux new -s rclone-osn
```

2. Copy your folder to OSN

- ***make sure*** to include the name of the directory in the second part of the command, otherwise only the files and not the directory structure will be copied:

```
cd /project/pi_hputnam_uri_edu/raw_sequencing_data/
rclone copy -P <FolderToTransfer> osn-pod:hollie-putnam-lab-data/raw_sequencing_data/<FolderToTransfer>

### Here is the command I used for transferring ALL the files initially from Untiy to OSN:
cd /project/pi_hputnam_uri_edu/
rclone copy -P -vv --transfers=2 --checkers=4 --multi-thread-streams=8 --timeout=5m --low-level-retries=10 raw_sequencing_data osn-pod:hollie-putnam-lab-data/raw_sequencing_data
```

3. Check if the transfer was successful with the following command:

```
rclone ls osn-pod:hollie-putnam-lab-data | grep <FileToTranfer>
```
