import net.incuventure.Role
import net.incuventure.User

class BootStrap {

    def init = { servletContext ->


       if(!User.findByUsername('giancarlo')){
            User user00 = new User();
            user00.username = 'giancarlo'
            user00.password ='giancarlo'
            user00.firstName = "giancarlo"
            user00.middleName = "calimbas"
            user00.lastName = "angulo"
            user00.status = "active"
            user00.save(flush: true, failOnError: true)
        }


        if(!Role.findByAuthority('ROLE_admin')){
            Role role00 = new Role("ROLE_admin");
            role00.save(flush: true, failOnError: true)
        }


    }
    def destroy = {
    }
}
