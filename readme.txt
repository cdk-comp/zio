0 23 * * * cd /var/www/zio && bash runopt.sh

crontab -l list

usage:  crontab [-u user] file
        crontab [ -u user ] [ -i ] { -e | -l | -r }
                (default operation is replace, per 1003.2)
        -e      (edit user's crontab)
        -l      (list user's crontab)
        -r      (delete user's crontab)
        -i      (prompt before deleting user's crontab)

check for update
bash zImageOptimizer.sh -c