# metadata
Script to get metadata from EC2

How to use: 
1. Store the script in EC2 instance.
2. Change the mode of the script chmod +x <script.sh>
3. Run the script ./<script.sh>

It will give you the list of metadata you can search for like: 
1. 1st output will look like this you need to type the metadata value under Type Here from the list.

```
	Type what meta-data you are looking for from the list....

	ami-id
	ami-launch-index
	ami-manifest-path
	block-device-mapping/
	events/
	iam/
	hostname
	identity-credentials/
	instance-action
	instance-id
	instance-life-cycle
	instance-type
	local-hostname
	local-ipv4
	mac
	metrics/
	network/
	placement/
	profile
	public-keys/
	reservation-id
	security-groups
	services/
	system

	Type Here
```

2. Give input for example ami-id. As this does not have any 2nd argument you will get the ami-id value as output. 

3. All the values that ends with "/" in the list takes multiple arguments you will have to run the first argument then select the 2nd argument from the output list and give them both together in this format argument1/argument2 

	Example: iam/ will output 

```
	Type Here
	iam

	Info
	Security-credentials 
```

	so you will have to search iam/info to get the result in next script run.

For this purpose script runs in a loop which can be exited by ctrl + c command. 


