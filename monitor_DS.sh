#!/bin/bash
df=`df -Pl  | grep "^/dev" | awk '{print $5, $6}' | sed "s/%//"`
echo $df | while read percent fs
do
if [ $percent -ge 90 ]; then


`/opt/lampp/bin/perl DiskSpace_Alert.pl $fs is $percent percent full`
fi
done

Perl Script for sending an email:

# DiskSpace_Alert.pl
#!perl
use MIME::Lite;

#Reference : Mime-Lite

# set up email
$to = â€œmy-mail-id\@domain.comâ€;
$from = â€œDiskmonitor\@ServerName.comâ€;
$subject = â€œDisk_Alertâ€;
$message = â€œDisk Space issue.\nActions Required:\nâ€.â€@ARGVâ€;
# send email
email($to, $from, $subject, $message, $file);

# email function
sub email
{
# get incoming parameters
local ($to, $from, $subject, $message, $file) = @_;
# create a new message
$msg = MIME::Lite->new(
From => $from,
To => $to,
Subject => $subject,
Data => $message);

MIME::Lite->send(â€˜smtpâ€™, â€˜localhostâ€™, Timeout => 60);
$msg->send();
}
Setting up a crontab for monitoring:

Crontab â€“e
* * * * * sh  full/path/to/DSAlert.sh

And weâ€™re done with the Linux/Unix Disk Monitoring alerts.

Instructions for setting up timing for crontab:

+----------------> minute (0 - 59)
|  +-------------> hour (0 - 23)
|  |  +----------> day of month (1 - 31)
|  |  |  +-------> month (1 - 12)
|  |  |  |  +----> day of week (0 - 6) (Sunday=0 or 7)
|  |  |  |  |
*  *  *  *  * 
