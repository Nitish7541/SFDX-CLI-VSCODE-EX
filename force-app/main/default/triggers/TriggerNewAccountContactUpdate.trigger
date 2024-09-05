trigger TriggerNewAccountContactUpdate on Account (before insert) {

    if(trigger.isbefore && trigger.isinsert)
    {
        for(account acc:trigger.new)
        {

            if(acc.shippingpostalcode == null)
            acc.shippingpostalcode=acc.billingpostalcode;

            if(acc.shippingstreet == null)
            acc.shippingstreet=acc.billingstreet;

            if(acc.shippingcity == null)
            acc.shippingcity = acc.billingcity;

            if(acc.shippingstate == null)
            {
            acc.shippingstate=acc.billingstate;
            }


            acc.shippingcountry=acc.billingcountry;

        }
    }

}