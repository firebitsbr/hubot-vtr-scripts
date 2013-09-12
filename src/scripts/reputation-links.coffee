# Description:
#   Generate links for doing IP/URL research
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot yara - Generates default rule template
#   hubot yara "string1" "string2" ... - Generates rule with given strings
#
# Author:
#   Scott J Roberts - @sroberts

module.exports = (robot) ->
  robot.respond /reputation ip (.*)/i, (msg) ->
    target_ip = msg.match[1].toLowerCase()

    reputation_links = """
    - Robtext:    https://ip.robtex.com/#{target_ip}.html
    - CentralOps: http://centralops.net/co/DomainDossier.aspx?addr=#{target_ip}&dom_dns=1&dom_whois=1&net_whois=1
    - IPVoid:     http://www.ipvoid.com/scan/#{target_ip}/
    """

  robot.respond /reputation url (.*)/i, (msg) ->
    target_url = msg.match[1].toLowerCase()

    reputation_links = """
    - Robtext:    https://pop.robtex.com/#{target_url}.html
    - CentralOps: http://centralops.net/co/DomainDossier.aspx?addr=#{target_url}&dom_whois=true&dom_dns=true&net_whois=true
    - URLVoid:    http://www.urlvoid.com/scan/#{target_url}/
    """
