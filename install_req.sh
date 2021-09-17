sudo apt update

# Install Node.js LTS (v14.x)

curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt update && sudo apt install -y nodejs mysql-server 

# mariadb-server

# Install Angular CLI

sudo npm install -g @angular/cli

git clone https://github.com/Cyber-Dolphin/dashboard-webapp.git

cd dashboard-webapp

echo "create database samm;" | sudo mysql
                                        
echo "use samm;" | sudo mysql

echo "create user 'samm_user'@'localhost' identified by 'samm_user_Passw0rd!';" | sudo mysql

echo "grant all privileges on * . * to 'samm_user'@'localhost';" | sudo mysql

echo "flush privileges;" | sudo mysql

sudo mysql -u root samm < "samm.sql"

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

sudo npm install

cd /home/vagrant/dashboard-webapp/server

sudo npm install

sudo npm install q

mv node_modules/q node_modules/Q

npm start &

cd /home/vagrant/dashboard-webapp/server2

sudo npm install

npm start &

cd /home/vagrant/dashboard-webapp

ng serve --host 0.0.0.0 --port 4208 --disableHostCheck &

echo "========================END========================"
