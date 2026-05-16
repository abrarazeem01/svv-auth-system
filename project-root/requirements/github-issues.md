**GitHub Issues Log**
**Issue #1 – Ambiguous Login Requirement**

**Labels: requirement, ambiguity, SRS, medium-priority**

The first issue was related to ambiguity in the login requirement. The system specification used the term “secure login”, which was not clearly defined and lacked measurable authentication criteria. This led to multiple interpretations during implementation, where different developers assumed different security mechanisms.

The requirement was unclear and subjective
No defined validation rules for login behavior
Created inconsistency in understanding among stakeholders

**Resolution:**
The requirement was updated to clearly define authentication using valid username and password credentials. Invalid login attempts are now explicitly rejected with proper error handling.

**Issue #2 – Session Inconsistency**

**Labels: bug, session-management, security, high-priority**

The second issue was a session management inconsistency where user sessions remained active even after logout. This behavior created a security flaw because terminated users could still potentially access system resources through active sessions.

Session lifecycle was not properly handled
Logout did not invalidate session tokens
Created potential unauthorized access risk

**Resolution:**
The system was corrected so that all session tokens are immediately invalidated upon logout. Active sessions are now securely terminated to prevent reuse.

****Issue #3 – Permission Verification Missing**
**
**Labels: security, authorization, bug, high-priority**

The third issue involved missing permission checks in certain parts of the system. Some protected resources could be accessed without proper role validation, which violated the authorization model defined in the SRS.

Permission validation was not consistently enforced
Some endpoints lacked role-based access control
Unauthorized access was possible in specific scenarios

**Resolution:**
A centralized permission validation mechanism was implemented. All resource access now requires role verification before execution.

**Issue #4 – Non-Verifiable Performance Requirement**

****Labels: nfr, performance, requirement-quality, medium-priority**

The system included a non-functional requirement stating “fast response,” which was not measurable or testable. This made it impossible to verify whether performance expectations were met.

Requirement used subjective terminology
No measurable performance threshold defined
Difficult to validate during testing

**Resolution:**
The requirement was revised to define a measurable benchmark: the system must respond within 2 seconds under normal operating conditions.

**Issue #5 – Password Storage Vulnerability**
**
**Labels: security, critical, authentication, data-protection****

This issue identified a critical security risk where passwords were assumed to be stored in plain text. This is unsafe and violates standard security practices.

Plain text password storage risk
High vulnerability to data breaches
Non-compliance with security standards

**Resolution:**
Passwords are now securely stored using hashing algorithms such as bcrypt, ensuring encrypted and irreversible storage.
**
**Issue #6 – Missing Error Handling for Login Failures**
**
Labels: enhancement, authentication, medium-priority, user-experience

The system lacked proper handling for repeated failed login attempts. There was no mechanism for account lockout or structured error responses.

No limit on failed login attempts
No account protection mechanism
Poor user feedback for errors

Resolution:
An account lockout policy was implemented after 5 failed attempts. Clear error messages were also added for better user feedback.
