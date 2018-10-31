# MongoDB_Chef_HW!!!

**By : Erica P da Silva Correia**

#### Description :

Summary
Our Mongo cookbook currently only install mongodb but it is not configured or started. Let's used templates to configure the cookbook
 
Tasks
Add new ChefSpec tests for the following:
 
Create a mongod.conf file in /etc/mongod/mongod.conf
Create a mongod.service file in /etc/systemd/system/mongod.service
MongoDB service should be enabled
MongoDB service should be started
And InSpec tests for the following:
 
MongoDB is running
MongoDB is enabled
MongoDB is listening on 27017 by default
MongoDB is listening on 0.0.0.0 by default
Create a recipe that installs and configures this cookbook correctly to pass all these tests.

-----

#### Tech Used :
**Virtual Box, Chef, Bash, Vagrant**

-----
##### how to download :


1. go to the github page [**https://github.com/EricaDaSilvaCorreia**](https://github.com/EricaDaSilvaCorreia)
2. Click repositories and select the repository [**MongoDB_Chef_HW**](https://github.com/EricaDaSilvaCorreia/MongoDB_Chef_HW)
3. Click 'Clone or Download'
4. Choose between **Open in Desktop**, **Download ZIP**, **Clone with SSH**, **Clone with HTTPs**

-----
##### how to run :


1. Once Cloned or Downloaded, make sure you have Virtual box and Vagrant installed on your machine.
2. If you don't have Virtual Box installed, follow this link:[**Virtual Box**](https://www.virtualbox.org/wiki/Downloads)
If you don't have Vagrant installed, follow this link: [**Chef**](https://downloads.chef.io/chefdk)
If you don't have Vagrant installed, follow this link: [**Download Vagrant**](https://www.vagrantup.com/downloads.html)
3. Once installed, Open your terminal and check if these files have been downloaded has been downloaded.
4. Open this file in your text editor of choice.
5. In your terminal enter **kitchen create**
6. Run tests from your terminal:
   -To run a full test (unit and integration) enter **kitchen test** into your terminal
   -To run only unit tests enter **chef exec rspec spec** into your terminal
   -To run only integration tests enter **kitchen verify** into your terminal

-----


##### Challenges :

Overall, I felt quite lost at the beginning of this assignment. Some parts are very clear and some just aren't. After I did some research I kind of started to get the hang of it. Could use more practice, especially with the unit testing part of it. I get a little confused when writing the tests so I'd say that proved to be a challenge for this homework as well.

-----

##### Take-Aways :

All in all I think today was very interesting. Homework helped me understand thing a little bit more but I could use a bit more practice. Not very happy with how things went with the homework, I hope I'll understand it a bit better soon.

I give it a 5/10.

-----
