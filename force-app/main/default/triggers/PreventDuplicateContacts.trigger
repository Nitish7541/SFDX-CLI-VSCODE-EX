// Write a trigger on contact to prevent duplicate records based on Contact Email & Contact Phone.

   trigger PreventDuplicateContacts on Contact (before insert, before update) {
    Set<String> emailSet = new Set<String>();
    Set<String> phoneSet = new Set<String>();

    for (Contact con : Trigger.new) {
        if (con.Email != null) {
            if (emailSet.contains(con.Email)) {
                con.Email.addError('Duplicate Email found: ' + con.Email);
            } else {
                emailSet.add(con.Email);
            }
        }

        if (con.Phone != null) {
            if (phoneSet.contains(con.Phone)) {
                con.Phone.addError('Duplicate Phone number found: ' + con.Phone);
            } else {
                phoneSet.add(con.Phone);
            }
        }
    }
}