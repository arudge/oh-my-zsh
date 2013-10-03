#zsh autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

export JAVA_HOME=$(/usr/libexec/java_home -v 1.6.0)
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7.0)
#'/usr/libexec/java_home -v 1.6.0 --exec'

##GRAILS ##############################################################################################################
# grails > 1.2
export GRAILS_TEST_LOG_DIRECTORY='target/test-reports'
#intelliJ
export GRAILS_OPTS="-Xms1g -Xmx2g -XX:PermSize=128m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -server -Duser.timezone=UTC"
export GRADLE_OPTS="-Xms1g -Xmx2g -XX:PermSize=128m -XX:MaxPermSize=1024m"
export JAVA_TOOLS_OPTIONS="-Djava.awt.headless=true"

alias gta='grails test-app -Duser.timezone=UTC'

#External Groovy Config Files
alias lnd='rm ~/.grails/bloomhealth-config.groovy; ln -s /Users/arudge/bloom/webapp_bloomhealth/bloom_config/Dev/bloomhealth-config.groovy /Users/arudge/.grails/bloomhealth-config.groovy && ls -la ~/.grails/bloomhealth-config.groovy'
alias lbd='rm ~/.grails/bhbo-config.groovy; ln -s /Users/arudge/bloom/webapp_bhbo/bloom_config/Dev/bhbo-config.groovy /Users/arudge/.grails/bhbo-config.groovy && ls -la ~/.grails/bhbo-config.groovy'

alias redisstart='redis-server /usr/local/etc/redis.conf'
alias rabbitstart='sudo rabbitmq-server'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias sublzsh='subl ~/.oh-my-zsh'
alias gccp='grails clean && grails compile && grails package'
alias git=hub
alias t=todo.sh
alias l="ls -lrthGsa"
alias d="cd ~/"
alias gct="grails clean && grails test-app --refresh-dependencies"
alias gtf="gradle test -x codenarcMain -x findbugsMain"
alias gr='git remote -v'

#show command history
function hl {
	history|awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -rn | head -20
}