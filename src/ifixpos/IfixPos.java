/*
 * Main class for iFix POS System
 * Launches the login screen as the application entry point
 */
package ifixpos;

import Views.login;

public class IfixPos {

    public static void main(String[] args) {
        login l = new login();
        l.setVisible(true);
    }

}