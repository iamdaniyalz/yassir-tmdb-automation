'use strict'


class Login {
    constructor() {
        this.account = "//android.widget.TextView[@text='Account']"
        this.home = "//android.widget.TextView[@text='Home']"
        this.loginButton = "com.kshitijchauhan.haroldadmin.moviedb:id/btLogin"
        this.closeCookies = "//android.widget.Button[@text='Close']"
        this.loginField = "//android.view.View[@content-desc='Login']/android.widget.TextView"
        this.usernameField = "//android.view.View[1]/android.widget.EditText"
        this.passwordField = "//android.view.View[2]/android.widget.EditText"
        this.submit = "//android.view.View[3]/android.widget.Button"
    }
}



module.exports = Login;