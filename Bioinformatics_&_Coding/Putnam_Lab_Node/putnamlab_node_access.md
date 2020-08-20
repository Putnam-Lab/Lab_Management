### Accessing the HPC putnamlab node

#### About the putnamlab node

The putnamlab node is part of a different HPC cluster and scheduler than bluewaves but still has access to the ```/data``` bluewaves directory. 

This means: 
- Any programs that you need to run on the putnamlab node should be installed on the new cluster
- The output of any #sbatch commands, such as ```squeue```, will reflect the status of the scheduler used for this new cluster
- To run a job on the putnamlab node, you must be logged onto the new HPC cluster and include ```#SBATCH -p putnamlab``` in the sbatch script header

To log onto the putnamlab node you need to be on the URI network. Network access comes from either connecting to URI Wifi or connecting via VPN while working remotely.

#### Signing up for VPN access

Use the URI ITS Security Services' [form](https://security.uri.edu/forms/vpn) to sign up access. After submitting the form, you should recieve an email from ITS Security Services giving you access via your URI universal login. This email will also contain information on signing up for and downloading the software necessary to connect to the network.

#### Accessing the putnamlab node

Similarly to bluewaves, access to the putnamlab node comes in the form of an ssh public key. Kevin Bryan can grant you access to the new cluster with this key. If you already have access to bluewaves this means that you already have an ssh key. If not, you may need to generate a new key.

Once you've created or found your ssh public key, email it to Kevin Bryan at bryank@uri.edu and he will let you know when you are good to go. Once Kevin confirms that you have access, sign in to the new cluster (while connected to the URI network) and run a test script (below).

##### Creating a new public ssh key

**Windows:** Generate a key with the app, puttygen, and then copy the text from the box at the top of the window.  
**Mac:** From the command line type ```ssh-keygen```. Then, view the contents of the generated file "~/.ssh/id_rsa.pub" using ```less ~/.ssh/id_rsa.pub```.

##### Finding a pre-existing public ssh key

**Windows:** Open the app puttygen and copy the text from the box at the top of the window.  
**Mac:** From the command line type ```less ~/.ssh/id_rsa.pub``` to view the contents of the generated file "~/.ssh/id_rsa.pub". 

#### Logging in

To log in, first connect to the URI network, then open command line and type the following prompt (no password required):

```
ssh user_name@ssh3.hac.uri.edu
```

This will log you in and return a message such as: ``` Last login: Fri Aug 14 09:13:50 2020 from 10.10.70.46```

#### Test script

I used the script below to test if I had access to the slurm scheduler. 

```
#!/bin/bash
#SBATCH --job-name="test"
#SBATCH -t 00:05:00
#SBATCH -p putnamlab

echo "START" $(date)
echo "This is only a test." $(date)
echo "STOP" $(date)
```

If this message appears when you attempt to run a job, email Kevin Bryan for troubleshooting help: ```Batch job submission failed: Invalid account or account/partition combination specified```.

