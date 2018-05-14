#!/bin/bash
Hourly running cron entry was:

0 * * * * perl demo.pl > demo-out_`date "+%Y-%m-%d_%H-%M"`.log

Running the same command on shell prompt was working fine. Execute permissions and path were proper. But it kept on failing to create the proper log!!

I changed the crontab as follows, added \ before % to escape and voila!!

Things worked !!

0 * * * * perl test.pl > test-out_`date "+\%Y-\%m-\%d_\%H-\%M"`.log

A quick lesson.

Good to note some of the date changers in linux for finding yesterdays and tomorrows and so on:
date â€“date=â€1 days agoâ€
date â€“date=â€yesterdayâ€
date â€“date=â€next dayâ€
date â€“date=â€-1 dayâ€
date â€“date=â€™tomorrowâ€™
date â€“date=â€™1 dayâ€™
date â€“date=â€™10 dayâ€™
date â€“date=â€™10 weekâ€™
date â€“date=â€™10 monthâ€™
date date=10 year
date date=next Friday

