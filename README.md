# Ansible-project
Aim of this project is to update system software - php, mysql, wordpress. Also to set up web application firewall and logcheck.
### Playbooks:
- apt_update.yml - Update and upgrade system packages and look for operating system updates
- update_php_mysql.yml - Upgrade older php, mysql version to php 8.0, mysql 8.0. Configure them properly.
- wordpress.yml - Update wordpress version to latest version 
- wp-cli.yml - Install wordpress cli in order to update wordpress plugins and theme
- wp_plugin_theme_update.yml - Update wordpress plugins and themes using wp-cli
- logcheck.yml - Set up logcheck and make it send email every 12 hours
- waf.yml - Install and set up WAF and change it's paranoia level 
- waf_report.yml - Create anacron job to create WAF report once a day
