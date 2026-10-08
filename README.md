# MediNova-Pharmacy-Management-System

# 💊 MediNova — Pharmacy Management System

**MediNova Pharmacy Management System** is a web-based pharmacy management application designed to simplify and organize day-to-day pharmacy operations.

The system provides separate **customer-facing and admin interfaces** for managing medicines, categories, users, products, and pharmacy operations through a centralized management platform.

## ✨ Features

* 💊 Medicine Management
* 📦 Product & Inventory Management
* 🗂️ Medicine Categories
* 👤 User Registration & Management
* 🔐 Admin Authentication
* 🛡️ Admin Dashboard
* 🛒 Pharmacy Product Browsing
* 🔎 Medicine Search & Categories
* 📋 Product Details
* 🖼️ Medicine Image Upload
* 📊 Management Dashboard
* 📱 Responsive UI
* 🎨 Modern Pharmacy Interface
* 🔄 Separate Admin & Public Sections

---

## 🏥 Main Modules

### 💊 Medicine Management

Admins can manage pharmacy medicines and their related information.

Medicine records can include:

* Medicine name
* Category
* Price
* Quantity
* Description
* Image
* Availability

### 🗂️ Category Management

Medicines can be organized into different categories, making it easier for users to browse and find products.

### 📦 Inventory Management

The system provides functionality for managing pharmacy products and keeping product information organized.

### 👤 User Management

Registered users can be managed from the administration section.

### 🛡️ Admin Panel

The admin panel provides centralized control over pharmacy operations.

Admin functionality includes:

* Product management
* Category management
* User management
* Inventory management
* Dashboard overview
* Image management

---

## 🛠️ Technology Stack

### Frontend

* HTML5
* CSS3
* JavaScript
* Bootstrap
* Responsive Web Design

### Backend

* PHP

### Database

* MySQL

### Development Environment

* XAMPP
* VS Code
* Apache
* MySQL
* Git
* GitHub

---

## 📁 Project Structure

```text
MediNova/
│
├── admin/
│   ├── login.php
│   ├── dashboard.php
│   ├── products.php
│   ├── categories.php
│   ├── users.php
│   └── ...
│
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
│
├── uploads/
│   └── medicines/
│
├── includes/
│   ├── config.php
│   └── ...
│
├── index.php
├── products.php
├── categories.php
├── login.php
├── register.php
└── README.md
```

> The exact structure may vary depending on the current project version.

---

## 🔐 Authentication

MediNova includes authentication functionality for users and administrators.

### User Side

Users can:

* Register an account
* Log in
* Browse medicines
* Explore categories
* View product information

### Admin Side

Administrators have a dedicated login and management dashboard.

```text
/admin/login.php
```

---

## 🖼️ Image Management

The system supports uploading and managing medicine/product images.

Uploaded images can be stored locally within the project rather than relying on random external image URLs.

Example:

```text
/uploads/medicines/
```

---

## 🗄️ Database

MediNova uses **MySQL** for storing application data.

The database can contain tables for:

```text
users
admins
products
medicines
categories
orders
```

> Table names may differ depending on the implemented database schema.

---

## ▶️ Run the Project with XAMPP

### 1. Install XAMPP

Start:

```text
Apache
MySQL
```

### 2. Place the Project

Copy the project into:

```text
C:\xampp\htdocs\MediNova
```

### 3. Create the Database

Open phpMyAdmin:

```text
http://localhost/phpmyadmin
```

Create the required MediNova database and import the project's SQL file if available.

### 4. Configure Database

Update the database configuration file with your local MySQL credentials.

Typical XAMPP configuration:

```php
$host = "localhost";
$username = "root";
$password = "";
$database = "MediNova";
```

### 5. Open the Application

```text
http://localhost/MediNova/
```

Admin panel:

```text
http://localhost/MediNova/admin/
```

---

## 🎨 UI & Design

MediNova uses a modern pharmacy-focused interface with a strong visual identity.

### Design Highlights

* Modern pharmacy landing page
* Dark cinematic visual style
* Medicine/product cards
* Category-based browsing
* Animated UI elements
* Responsive layout
* Admin dashboard
* Product image presentation
* Clean navigation
* Mobile-friendly design

---

## 🔄 Application Flow

```text
                    MediNova
                       │
          ┌────────────┴────────────┐
          │                         │
          ▼                         ▼
      Public Side               Admin Panel
          │                         │
          ▼                         ▼
      Categories              Admin Login
          │                         │
          ▼                         ▼
      Medicines                Dashboard
          │                         │
          ▼              ┌──────────┼──────────┐
     Product Details     ▼          ▼          ▼
                      Products  Categories   Users
```

---

## 🚀 Future Improvements

The system can be extended with:

* 🛒 Shopping cart
* 💳 Online payments
* 📦 Advanced inventory tracking
* ⚠️ Low-stock alerts
* 📅 Medicine expiry tracking
* 🧾 Invoice generation
* 📊 Sales reports
* 📈 Pharmacy analytics
* 👨‍⚕️ Prescription management
* 🔔 Order notifications
* 📱 WhatsApp notifications
* 👥 Advanced staff permissions

---

## 💻 Skills Demonstrated

```text
PHP
MySQL
HTML5
CSS3
JavaScript
Bootstrap
CRUD Operations
Authentication
Admin Dashboard
Database Integration
File/Image Uploads
Responsive UI
XAMPP
Git & GitHub
```

---

## 📌 Project Purpose

The main purpose of **MediNova Pharmacy Management System** is to provide a centralized digital platform for managing pharmacy products, medicines, categories, users, and administrative operations.

The project demonstrates practical experience in **PHP backend development, MySQL database management, CRUD operations, authentication, file uploads, admin-panel development, and responsive web design**.

---

## 👨‍💻 Developer

### Faizan Ahmad

**Full Stack Developer | BSCS Graduate**

### GitHub

`https://github.com/faizitech11`

### Portfolio

`https://hmftj.com/interns@hmftj.com/faizan/portfilo`

---

## 📄 License

This project is developed for **educational, portfolio, and demonstration purposes**.

---

⭐ **If you like this project, consider giving the repository a star!**
