# Bamazon

## Introduction

This is an online storefront / Command line app that take orders from customers and reduces inventory. It will also let the user to view, track, add and update the product inventory as a manager

#### The Customer View 
***
The customer view allows users to view a list of items available for purchase. The user is then be prompted to enter the product id number and how many items they wish to purchase. If the item is available, the order will be completed and the user will see the total amount of their purchase.

![Customer View](/pictures/bCustomer.png)


To run the customer view use the following command:
** node bamazoncustomer.js


#### The Manager View 
***
This view allows the users to view and edit the inventory of the store. They will be prompted to choose from the following options:

* View products for sale:  

![Manager View](/pictures/bManager11.png)

* View low inventory: 

![Manager View](/pictures/bManager12.png)

* View departments: 

![Manager View](/pictures/bManager13.png)

* Add to inventory: 

![Manager View](/pictures/bManager14.png)

* Add a new product: the app allow the manager to add a completely new product to the store.

![Manager View](/pictures/bManager15.png)


To run the Manager view use the following command:
* node bamazonmanager.js


#### The  Supervisor View 
***
This view allow will show users a summarized view of the store sales and profits. The user will be prompted to choose from the following options:

* View Product Sales by Department
* View Departments
* View Sales
* Create New Department

![Manager View](/pictures/bSupervisor11.png)

![Manager View](/pictures/bSupervisor12.png)

To run the Supervisor view use the following command:
** node bamazonsupervisor.js

### The Languages/Packages Used:

* Javascript
* nodeJS
* MySQL
* npm packages:
  *  mysql
  *  inquirer
  *  cli-table
