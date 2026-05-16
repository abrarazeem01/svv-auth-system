**Extended Requirement Defect Analysis**
**1. Ambiguity Defect (FR2 – User Login)**

Ambiguity occurs when a requirement is open to multiple interpretations. In FR2, the phrase “secure login” is unclear and does not define specific security mechanisms or criteria.

**Problem:**
Vague terminology (secure)
No measurable criteria
Different interpretations by developers
**Impact:**
Inconsistent implementation
Difficult to test and validate
**Improvement:**
Replace vague wording with precise, technical details
**Refined Requirement:**
The system shall authenticate users using a valid username and password combination
The system shall reject invalid login attempts
**2. Inconsistency Defect (FR3 – Session Management)**

Inconsistency arises when one requirement contradicts another or expected system behavior. Here, allowing sessions to remain active after logout conflicts with secure system practices.

**Problem:**
Session remains active after logout
Contradicts logout requirement
**Impact:**
Security vulnerability
Unauthorized access risk
**Improvement:**
Align session behavior across all requirements
**Refined Requirement:**
The system shall immediately terminate the session upon logout
The system shall invalidate all active session tokens
**3. Non-Verifiable Defect (NFR1 – Performance)**

A requirement is non-verifiable when it cannot be tested objectively. The term “fast response” lacks measurable criteria.

**Problem:**
Subjective wording (fast)
No benchmark defined
**Impact:**
Cannot validate system performance
Leads to stakeholder disagreement
**Improvement:**
Define measurable performance limits
**Refined Requirement:**
The system shall respond within 2 seconds under normal load conditions
**4. Incomplete Requirement Defect**

An incomplete requirement does not provide enough information for implementation. For example, a login requirement that does not specify error handling or edge cases.

**Example Problem:**
“System shall allow user login” (missing failure handling, validation rules)
**Issues:**
Missing alternate flows (e.g., wrong password, locked account)
No mention of input validation
**Impact:**
Developers make assumptions
Leads to inconsistent behavior
**Improvement:**
Include all possible scenarios and conditions
**Refined Requirement:**
The system shall allow users to log in using valid credentials
The system shall display an error message for invalid credentials
The system shall lock the account after 5 failed attempts
**5. Redundant Requirement Defect**

Redundancy occurs when the same requirement is repeated unnecessarily, increasing complexity and risk of inconsistency.
**
Example Problem:**
FR2: System shall authenticate users
FR6: System shall verify user identity during login
**Issues:**
Duplicate functionality described differently
Harder to maintain and update
**Impact:**
Confusion during development
Risk of conflicting updates
**Improvement:**
Merge duplicate requirements into one clear statement
**Refined Requirement:**
The system shall authenticate users during login using valid credentials
**6. Incorrect Requirement Defect**

An incorrect requirement describes behavior that is wrong or does not meet system goals.

**Example Problem:**
“System shall store passwords in plain text”

**Issues:**
Violates security standards
Dangerous system design
**Impact:**
High security risk
Non-compliance with best practices
**Improvement:**
Replace with correct and secure behavior
**Refined Requirement:**
The system shall store passwords using secure hashing algorithms
**7. Over-Specification Defect**

Over-specification happens when a requirement includes unnecessary implementation details instead of focusing on what the system should do.

**Example Problem:**
“System shall use SHA-256 hashing with a 32-bit salt for passwords”
**Issues:**
Limits design flexibility
Forces specific technical decisions too early
**Impact:**
Reduces adaptability
Makes future changes difficult
**Improvement:**
Focus on outcome rather than implementation
**Refined Requirement:**
The system shall securely store passwords using industry-standard encryption techniques
