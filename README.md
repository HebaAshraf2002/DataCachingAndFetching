# Data Handling-Getting API local data-Shows detailed information about the selected-employee
# Overview
The User Data App fetches user information (e.g., name, email, company, address) from the JSONPlaceholder API. It provides the following features:
- API Fetching: Retrieves live user data from the API.
- Caching: Stores user data locally for offline use using SharedPreferences.
- Interactive UI: Displays user profiles in a scrollable list, with detailed views available for each user.
- Navigation: Implements a bottom navigation bar to switch between live API data and cached user data views.
  
# What the Code Does?
1. Fetch User Data:
   - The app retrieves user data from the JSONPlaceholder API.

2. Parse JSON:
  - The API's JSON response is mapped to Dart objects for easy use.

3. Cache Data:
  - User data is saved locally using SharedPreferences for offline access.

4. Render Data in UI:
  - Users are displayed in a list with names, emails, and company details.

5. User Details:
  - Provides a detailed view of each user, including their username, phone, website, and address.
    
# How the Code Works
1. Models
  The app uses structured data models defined in User_model.dart to map JSON responses into Dart objects:
  - User: Represents a user with attributes like name, username, email, address, etc.
  - Address and Geo: Nested classes that handle address details.
  - Company: Represents the company information for each user.
    
2. API Service
  The UserService class handles API communication using the Dio package.
  - Fetch Users: Sends a GET request to the API and parses the response into a list of User objects.
  - Caching: Saves the fetched data locally using SharedPreferences.
    
3. UI Components
  1. Navbar
  - Provides a bottom navigation bar to switch between the Users Data (live API) and Cached Users views.
  2. UsersProfile
  - Fetches user data from the API and displays it in a ListView.builder.
  - Tapping on a user navigates to the UserDetails screen for more information.
  3. CachedUsers
  - Fetches and displays locally cached user data.
  4. UserDetails
  - Displays detailed information about a user, including name, username, email, phone, website, company, and address.
    
4. Navigation
  The app uses Flutter's Navigator for screen transitions:
  - The bottom navigation bar switches between UsersProfile and CachedUsers.
  - Clicking on a user in UsersProfile navigates to the UserDetails screen.

