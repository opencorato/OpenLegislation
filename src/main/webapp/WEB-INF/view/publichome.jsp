<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="open" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="open-layout" tagdir="/WEB-INF/tags/layout" %>

<open-layout:head title="New York State Senate - Open Legislation">
  <script type="application/javascript" src="${ctxPath}/static/js/src/public_app.js"></script>
</open-layout:head>
<open-layout:body appName="open-public">
  <div class="public-home-page" ng-controller="PublicHomeCtrl">
    <section class="hero-container-public">
      <h1>
        <img src="${ctxPath}/static/img/NYSS_seal.png"/>Open Legislation
      </h1>
    </section>
    <div class="pop-out-container">
      <div class="project-desc">Developed in-house at the <a href="http://www.nysenate.gov">New York State Senate</a>, Open Legislation is a public web service
      that provides access to NYS legislative data through a JSON API.
      </div>
    </div>
    <div class="padding-20">
      <h2 class="project-desc-label" id="dataweprovide"><i class="icon-text prefix-icon"></i>Data We Provide</h2>
      <div class="regular-container">
        <div class="project-desc">
          <p>The canonical data provider is the <a class="slogan-link" href="http://public.leginfo.state.ny.us">NY Legislative Bill Drafting Commission.</a>
          The Senate receives raw data streams from LBDC and re-formats the data to allow other applications, such as the
            <a class="slogan-link" href="http://www.nysenate.gov">NYSenate.gov</a> site, to easily consume and integrate the data.
          </p>
          <md-list layout-gt-sm="row" layout-wrap>
            <md-list-item flex="50" class="provide-data-container md-3-line" ng-repeat="provideData in dataWeProvide"
                          ng-click="goToDocsPage(provideData.docsPage)">
              <div class="provide-data-icon" ng-class="provideData.bgclass">
                <i ng-class="provideData.icon" class="white"></i>
              </div>
              <div class="margin-left-20 md-list-item-text">
                <h3 class="no-margin bold provide-data-type">{{provideData.type}}</h3>
                <p style="color:#444">{{provideData.blurb}}</p>
              </div>
            </md-list-item>
          </md-list>
        </div>
      </div>
      <h2 class="project-desc-label" id="signup"><i class="icon-key prefix-icon"></i>Sign up for an API Key</h2>
      <div class="regular-container">
        <div class="project-desc">
          <p>By signing up for a key you can access the API to power your own legislative apps.<br/>Simply provide
          a name and a valid email and we'll send over the credentials.</p>
          <div ng-hide="signedup">
            <form method="post">
              <div layout="row" layout-sm="column" layout-align="center center">
                <md-input-container class="margin-right-20">
                  <label>Name</label>
                  <input type="text" name="name" ng-required ng-trim ng-model="name"/>
                </md-input-container>
                <md-input-container class="margin-right-20">
                  <label>Email</label>
                  <input ng-required ng-trim type="email" name="email" ng-model="email"/>
                </md-input-container>
                <md-button ng-click="signup()" style="width: 160px;" class="bold md-primary md-raised">Get API Key</md-button>
              </div>
              <div class="signup-err" ng-if="errmsg">
                <h4><i class="icon-warning prefix-icon"></i> {{errmsg}}</h4>
              </div>
            </form>
          </div>
          <div ng-show="signedup">
            <h3>Thanks for signing up, please check your email to receive your API key.</h3>
          </div>
          <div ng-show="processing">
            <h3>Your API key is being created, one sec.</h3>
          </div>
        </div>
        <hr/>
      </div>
      <h2 class="project-desc-label" id="opensource"><i class="icon-code prefix-icon"></i>Open Source</h2>
      <div class="regular-container">
        <p class="project-desc">
          OpenLegislation is developed using several open-source packages and frameworks.<br/><br/>
          Source code is <a class="slogan-link" href="http://www.github.com/nysenate/OpenLegislation">published on GitHub</a>.
          Feel free to open any tickets with issues you are having or contact the development team at
          <a class="slogan-link" href="mailto:senatedev@nysenate.gov">senatedev@nysenate.gov.</a>
        </p>
      </div>
      <h2 class="project-desc-label" id="docs"><i class="icon-info prefix-icon"></i>How to use the API</h2>
      <div class="regular-container">
        <iframe width="100%" style="height:90vh;border: 0;overflow: visible" ng-src="{{currDocsPath}}">
        </iframe>
      </div>
    </div>
    <div class="copyright-footer-container">
      <div class="project-desc">
        <img src="http://i.creativecommons.org/l/by-nc-nd/3.0/us/88x31.png"/>
        <p class="text-medium">This content is licensed under Creative Commons BY-NC-ND 3.0.
          The software and services provided under this site are offered under the BSD License and the GPL v3 License.</p>
      </div>
    </div>
  </div>
</open-layout:body>
<open-layout:footer>

</open-layout:footer>