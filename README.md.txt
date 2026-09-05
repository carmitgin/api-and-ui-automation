# API Testing & Test Automation Suite (Postman)

## 📌 Overview
Automated API test suite built in **Postman** covering Recommendation and Blacklist services. Validates schema structures, JWT authorization flow, dynamic data creation, and error handling.

## 🧪 Key Test Scenarios
* **Authentication:** JWT Token lifecycle and endpoint protection.
* **Dynamic Workflows:** Dynamic email generation (`$randomInt`) and assertion chaining.
* **Negative Testing:** Unprocessable Entity (`422`), Unauthorized (`401`), and Not Found (`404`) validation.

## 🐞 Identified Issues & Bug Reports
* **BUG-1 (High):** Recommendation creation fails when sending RAW JSON payload.
* **BUG-2 (Medium):** Lack of email format validation in Blacklist module.
* **BUG-3 (High - Auth Security):** Fetching comments without a token bypasses security check and succeeds.

## 🛠 Setup & Execution
1. Import `Team 3 - Comments & Blacklist.postman_collection` into Postman.
2. Import `SVProject - Team 3.postman_environment`.
3. Set your active environment variables and run using **Collection Runner** or **Newman CLI**.