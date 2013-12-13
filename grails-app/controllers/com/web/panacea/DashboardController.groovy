package com.web.panacea

import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class DashboardController {

    def index() { }
}
