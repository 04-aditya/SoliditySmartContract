# Asset Tech Smart Contract 

This here is our take on the first smart contract.

### The Problem:

>To make a solidity smart contact
>That converts Asset Tech code to a digitized Smart Contract

### Working

The code we have worked on, takes input of bank names and assigns respective ids to them\
The same is done for different sectors.\
Once that's done we take input from user for a particular transaction and ask for filling all the required fields.\
We check if the bank name and sector name have already been inputted before hand and their respective ids are generated, and then save the transaction in a digitized smart contract.

Below we'd give you a step by step working of our program
1. Our main aim is to store the transactions betweent two Nodes and any detail therefore in the procedure.
2. In the procedure we are breaking this up into three major parts:
	- Bank
	- Sector
	- Transaction
3. Whenever there is a transaction we would associate it with a bank and a sector, so quite naturally we'd want a unique id for every different Bank and Sector.
4. Bank and Sector are similar in terms of their structure (Code Wise), therefore before entering a new transaction we'd want to make sure that we have a unique id generated for every different bank and Sector.
5. For the same 2 functions have been created BankInput and SectorInput which would take the new bank/sector name as input and generate a unique id for the same.
	![Bank Input](https://i.imgur.com/DsIIJQ2.jpg)
	![Sector Input](https://imgur.com/xRfpsRz.jpg)
6. We have abstracted the function that takes care of creating the unique id if the bank or sector haven't been previously registered.
7. All the transactions henceforth are stored in the array of our structure which we are working later on to push into a digitized excel smart contract.

**Here's the complete layout:**\
![Transaction](https://imgur.com/LuCWkv4.jpg)  ![Trans](https://imgur.com/0T0EAyT.jpg)

## TO-DO List
 - [ ] Writing the digitzed smart contract to a csv\
 - [ ] If possible taking input of all fields from a spreadsheet instead of from a person.

	>For Which a frontend side looks seemingly unavoidable

