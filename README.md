# CowKino - Cattle E-Commerce Platform

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![PHP](https://img.shields.io/badge/PHP-7.4%2B-777BB4.svg)

## Overview

**CowKino** is a comprehensive e-commerce platform designed for buying and selling cattle. Built with modern web technologies, it provides a user-friendly interface for livestock traders, farmers, and agricultural enthusiasts to connect, browse cattle listings, and manage transactions efficiently.
Live Link: https://cowkino.free.nf

## 🎯 Key Features

### Core Functionality
- **User Authentication**: Secure registration and login system for buyers and sellers
- **Cow Marketplace**: Browse extensive listings with detailed cattle information and high-quality images
- **Advanced Search & Filtering**: Find cattle by breed, category, price range, and other criteria
- **Listing Management**: Sellers can easily create, edit, and manage their cattle listings
- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Dynamic Dashboard**: View featured listings in an engaging hero slider on the homepage

### User Features
- User profile management with login/logout functionality
- Secure form handling with validation
- Image upload and gallery support
- Real-time search functionality with AJAX

## 🛠️ Technology Stack

| Layer | Technologies |
|-------|---------------|
| **Frontend** | HTML5, CSS3, JavaScript (ES6+) |
| **Backend** | PHP 7.4+ |
| **Database** | MySQL 5.7+ |
| **Server** | Apache (via XAMPP) |
| **Communication** | AJAX, JSON |

## 📋 System Requirements

- **Web Server**: Apache 2.4 or higher
- **PHP**: 7.4 or higher
- **Database**: MySQL 5.7 or higher
- **Browser**: Modern browser with JavaScript enabled
- **Disk Space**: Minimum 500MB for initial setup

## 🚀 Quick Start Guide

### Prerequisites
- XAMPP installed and configured
- Git installed on your system

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/CowKino.git
   cd CowKino
   ```

2. **Set Up XAMPP**
   - Open the XAMPP Control Panel
   - Start **Apache** and **MySQL** services
   - Verify both services are running

3. **Configure the Database**
   - Open phpMyAdmin: `http://localhost/phpmyadmin`
   - Create a new database: `cow_kino`
   - Import the database schema from `scripts/cow_kino.sql`:
     - Select the newly created database
     - Click **Import** and select the SQL file
     - Click **Go** to execute

4. **Configure Database Connection**
   - Update the database configuration in your application files
   - Ensure credentials match your MySQL setup (default: root/no password)

5. **Access the Application**
   - Open your browser and navigate to: `http://localhost/CowKino`
   - Create a new account or log in with existing credentials

## 📁 Project Structure

```
CowKino/
├── index.php                    # Application entry point
├── README.md                    # Project documentation
│
├── Asset/                       # Static assets
│   ├── Js/
│   │   └── script.js           # Client-side JavaScript
│   └── style/
│       └── style.css           # Stylesheet
│
├── controller/                  # Business logic & request handlers
│   ├── login_check.php         # Login validation
│   ├── logout.php              # Logout handler
│   ├── createUserController.php # User registration
│   └── sell_check.php          # Listing submission handler
│
├── model/                       # Database models & queries
│   ├── DataBase.php            # Database connection & utility
│   ├── users.php               # User model
│   └── cows.php                # Cattle model
│
├── view/                        # Frontend pages
│   ├── header.php              # Header component
│   ├── footer.php              # Footer component
│   ├── login.php               # Login page
│   ├── register.php            # Registration page
│   ├── buy.php                 # Listings page
│   ├── cow_details.php         # Cattle detail view
│   └── sell.php                # Create listing page
│
├── upload/                      # User-uploaded images
│   └── *.avif                  # Cattle images
│
└── scripts/                     # Database & utility scripts
    └── cow_kino.sql            # Database schema
```

## 🔧 Usage Guide

### For Buyers
1. Browse the homepage to see featured listings
2. Use the search and filter options to find cattle matching your criteria
3. Click on any listing to view detailed information and images
4. Create an account to express interest or make inquiries

### For Sellers
1. Log in or register an account
2. Navigate to the "Sell" page
3. Fill out the cattle listing form with:
   - Breed and category information
   - Price and health details
   - Description and additional specifications
4. Upload high-quality images (AVIF format recommended)
5. Submit the listing for publication

## 💾 Database Schema

The application uses the following main database tables:

- **users**: User account information and authentication
- **cows**: Cattle listings with details, pricing, and seller information
- **Additional tables**: As defined in `cow_kino.sql`

## 🔐 Security Features

- Password encryption for user accounts
- Input validation and sanitization
- SQL injection prevention
- Session management for authenticated users
- Secure file upload handling

## 🌐 API Endpoints

The application uses AJAX for communication:
- User authentication endpoints
- Listing CRUD operations
- Search and filter operations
- Image upload endpoints

## 📈 Performance Optimization

- Image optimization (AVIF format support)
- Responsive asset loading
- Database query optimization
- Client-side caching strategies

## 🤝 Contributing

We appreciate contributions from the community! Here's how to contribute:

1. **Fork the Repository**
   ```bash
   # Click the "Fork" button on GitHub
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Your Changes**
   - Write clear, commented code
   - Follow existing code style
   - Test your changes thoroughly

4. **Commit Your Work**
   ```bash
   git commit -am "Add your descriptive commit message"
   ```

5. **Push to Your Branch**
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Submit a Pull Request**
   - Go to the repository on GitHub
   - Create a new Pull Request with a clear description
   - Our team will review and provide feedback

## 📝 Coding Standards

- Use descriptive variable and function names
- Add comments for complex logic
- Follow PSR-12 PHP style guidelines
- Ensure all code is properly tested before submission

## 🐛 Issue Reporting

Found a bug? Please report it:
1. Check if the issue already exists
2. Provide a clear description and steps to reproduce
3. Include relevant error messages and screenshots
4. Specify your environment (OS, Browser, PHP version)

## 📄 License

This project is licensed under the **MIT License** - see the LICENSE file for details.

## 👨‍💻 Project Maintainers

- Development Team

## 📞 Support & Contact

For support, questions, or inquiries:
- Open an issue on GitHub
- Check the documentation
- Review the FAQ section

## 🙏 Acknowledgments

- Thanks to all contributors
- XAMPP community for excellent local development tools
- All farmers and agricultural professionals using this platform

## 🗺️ Future Roadmap

- [ ] Payment gateway integration
- [ ] Advanced analytics dashboard
- [ ] Mobile application
- [ ] Real-time notifications
- [ ] Veterinary records integration
- [ ] Multi-language support
- [ ] Advanced filtering and sorting options

---
## 👨‍💻 Developer

<p align="center">

</p>

<p align="center">
  <b>Cow Kino</b> was developed by <a href="https://github.com/ShahrairRayed">Al Shahriar Rayed</a> with Team
</p>

<p align="center">
 
</p>

---

**Last Updated**: January 2026  
**Status**: Active Development


