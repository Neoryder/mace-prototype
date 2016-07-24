import net.incuventure.Doctor
import net.incuventure.Member
import net.incuventure.Role
import net.incuventure.User
import net.incuventure.UserDoctor
import net.incuventure.UserMember
import net.incuventure.UserRole

class BootStrap {

    def init = { servletContext ->

        if(!Role.findByAuthority('ROLE_admin')){
            Role role00 = new Role("ROLE_admin");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_doctor')){
            Role role00 = new Role("ROLE_doctor");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_member')){
            Role role00 = new Role("ROLE_member");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_staff')){
            Role role00 = new Role("ROLE_staff");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_doctor')){
            Role role00 = new Role("ROLE_doctor");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_diagnostic_provider')){
            Role role00 = new Role("ROLE_diagnostic_provider");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_claims')){
            Role role00 = new Role("ROLE_claims");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_approval')){
            Role role00 = new Role("ROLE_approval");
            role00.save(flush: true, failOnError: true)
        }

        if(!Role.findByAuthority('ROLE_clinic')){
            Role role00 = new Role("ROLE_clinic");
            role00.save(flush: true, failOnError: true)
        }

//
//        if(!Role.findByAuthority('ROLE_claims_maker')){
//            Role role00 = new Role("ROLE_claims_maker");
//            role00.save(flush: true, failOnError: true)
//        }
//
//        if(!Role.findByAuthority('ROLE_claims_checker')){
//            Role role00 = new Role("ROLE_claims_checker");
//            role00.save(flush: true, failOnError: true)
//        }
//
//        if(!Role.findByAuthority('ROLE_claims_approver')){
//            Role role00 = new Role("ROLE_claims_approver");
//            role00.save(flush: true, failOnError: true)
//        }
//
//        if(!Role.findByAuthority('ROLE_approval_maker')){
//            Role role00 = new Role("ROLE_claims_maker");
//            role00.save(flush: true, failOnError: true)
//        }
//
//        if(!Role.findByAuthority('ROLE_approval_checker')){
//            Role role00 = new Role("ROLE_claims_checker");
//            role00.save(flush: true, failOnError: true)
//        }
//
//        if(!Role.findByAuthority('ROLE_approval_approver')){
//            Role role00 = new Role("ROLE_claims_approver");
//            role00.save(flush: true, failOnError: true)
//        }




        if(!User.findByUsername('giancarlo')){
            User user00 = new User();
            user00.username = 'giancarlo'
            user00.password ='giancarlo'
            user00.save(flush: true, failOnError: true)
        }
        if(!UserRole.exists(User.findByUsername('giancarlo')?.id,Role.findByAuthority('ROLE_admin')?.id)){
            UserRole userRole = new UserRole(User.findByUsername('giancarlo'),Role.findByAuthority('ROLE_admin'))
            userRole.save(flush: true, failOnError: true)
        }

        if(!User.findByUsername('doctor')){
            User user00 = new User();
            user00.username = 'doctor'
            user00.password ='doctor'
            user00.save(flush: true, failOnError: true)
        }
        if(!UserRole.exists(User.findByUsername('doctor')?.id,Role.findByAuthority('ROLE_doctor')?.id)){
            UserRole userRole = new UserRole(User.findByUsername('doctor'),Role.findByAuthority('ROLE_doctor'))
            userRole.save(flush: true, failOnError: true)
        }
        if(!Doctor.findByUserNumber("01")){
            Doctor doctor = new Doctor()
            doctor.firstName = "doctorFirstName"
            doctor.lastName = "doctorLastName"
            doctor.userNumber = "01"
            doctor.save(flush: true, failOnError: true)
        }
        if(!UserDoctor.findByUserAndDoctor(User.findByUsername('doctor'),Doctor.findByUserNumber('01'))){
            UserDoctor userDoctor = new UserDoctor(User.findByUsername('doctor'),Doctor.findByUserNumber('01'))
            userDoctor.save(flush: true,failOnError: true)
        }

        if(!User.findByUsername('member')){
            User user00 = new User();
            user00.username = 'member'
            user00.password ='member'
            user00.save(flush: true, failOnError: true)
        }

        if(!UserRole.exists(User.findByUsername('member')?.id,Role.findByAuthority('ROLE_member')?.id)){
            UserRole userRole = new UserRole(User.findByUsername('member'),Role.findByAuthority('ROLE_member'))
            userRole.save(flush: true, failOnError: true)
        }

        if(!Member.findByUserNumber("31453086")){
            Member member = new Member()
            member.firstName = "Giancarlo"
            member.lastName = "Angulo"
            member.gender = "Male"
            member.userNumber = "31453086"
            member.save(flush: true, failOnError: true)
        }

        if(!UserMember.findByUserAndMember(User.findByUsername('member'),Member.findByUserNumber('31453086'))){
            UserMember userMember = new UserMember(User.findByUsername('member'),Member.findByUserNumber('31453086'))
            userMember.save(flush: true,failOnError: true)
        }



    }
    def destroy = {
    }
}
