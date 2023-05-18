package com.rachel.service.configuration.property;

import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;



@ConfigurationProperties(prefix = "system")
public class SystemConfig {

    private PasswordKeyConfig pwdKey;
    private List<String> securityIgnoreUrls;
    private WxConfig wx;
    private QnConfig qn;

    /**
     * Gets pwd key.
     *
     * @return the pwd key
     */
    public PasswordKeyConfig getPwdKey() {
        return pwdKey;
    }

    /**
     * Sets pwd key.
     *
     * @param pwdKey the pwd key
     */
    public void setPwdKey(PasswordKeyConfig pwdKey) {
        this.pwdKey = pwdKey;
    }

    /**
     * Gets security ignore urls.
     *
     * @return the security ignore urls
     */
    public List<String> getSecurityIgnoreUrls() {
        return securityIgnoreUrls;
    }

    /**
     * Sets security ignore urls.
     *
     * @param securityIgnoreUrls the security ignore urls
     */
    public void setSecurityIgnoreUrls(List<String> securityIgnoreUrls) {
        this.securityIgnoreUrls = securityIgnoreUrls;
    }

    /**
     * Gets wx.
     *
     * @return the wx
     */
    public WxConfig getWx() {
        return wx;
    }

    /**
     * Sets wx.
     *
     * @param wx the wx
     */
    public void setWx(WxConfig wx) {
        this.wx = wx;
    }

    /**
     * Gets qn.
     *
     * @return the qn
     */
    public QnConfig getQn() {
        return qn;
    }

    /**
     * Sets qn.
     *
     * @param qn the qn
     */
    public void setQn(QnConfig qn) {
        this.qn = qn;
    }

}
