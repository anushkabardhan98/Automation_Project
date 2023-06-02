sudo apt update
sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl status apache2
sudo tar -czvf anushka-httpd-log-$(date '+%d%m%Y-%H%M%S') /var/log/apache2/
aws s3 cp "anushka-httpd-log-02062023-105031" s3://upgard-anushka
echo "httpd-log $(date) tar $(size)" >> /var/www/Anushka_domain/inventory.html
