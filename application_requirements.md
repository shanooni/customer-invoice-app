# Application Requirements

## Application User

1. User new account (unique email)
*   Account verification(verify email address)
* user profile image
* user details (name, email, position, bio, **phone**, address)
* being able to update user details

2. User reset password (without being logged in)
* password link should expire in 24 hours

3. User login (using email and password)
* Token based authentication
* refresh seamlessly

4. Brute force attack mitigation (account lock mechanism)
* Lock account after 6 attempts

5. Role and Permission based application access (ACL)
* protect application resources using roles and permission

6. Two-factor authentication(using users phone)
* send verification code to users phone

7. Application tracking of user activities
* Tracking information
  * IP address
  * Device
  * Browser
  * Date
  * Type of activity performed