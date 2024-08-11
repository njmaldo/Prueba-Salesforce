public class AccountHandler {
    public static Account insertNewAccount(String AccName) {
        try {
            Account accnew = new Account(Name=AccName);
            Insert accnew;
            return accnew;
        } catch (DmlException e) {
            System.debug('DML exception error : ' + e.getMessage());
            return Null;
        }
    }
}