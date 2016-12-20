# Self-KeepAlive

**Keep Azure WebJobs running indefinitely in the free tier**

If you try to run a time-triggered Azure WebJob in the free tier it will stop running after about twenty minutes. This is because the free tier lacks the *Always On* feature offered by the premium (paid for) tiers. 

If you add `self-keepalive.ps1` as an extra WebJob triggered every five minutes it will keep your WebJobs alive in the free tier.

`self-web-keepalive.ps1` issues a simple GET request to the Web App inside which it's running. You could use it in addition to `self-keepalive.ps1` to keep your free web app running continuously.

`keepalive.ps1` issues a simple GET request to a URL.

Full instructions here: https://tomssl.com/2016/12/20/how-to-get-azure-webjobs-to-run-indefinitely-for-free/
