# Disable unnecessary Apache modules
sudo a2dismod status
sudo a2dismod autoindex

# Enable mod_security
sudo a2enmod security2

# Enable mod_headers
sudo a2enmod headers

# Set ServerTokens to Prod
sudo sed -i "s/ServerTokens OS/ServerTokens Prod/" /etc/apache2/conf-available/security.conf

# Set ServerSignature to Off
sudo sed -i "s/ServerSignature On/ServerSignature Off/" /etc/apache2/conf-available/security.conf

# Disable register_globals in PHP
sudo sed -i "s/register_globals = On/register_globals = Off/" /etc/php/7.4/apache2/php.ini

# Disable expose_php in PHP
sudo sed -i "s/expose_php = On/expose_php = Off/" /etc/php/7.4/apache2/php.ini

sudo systemctl restart apache2
