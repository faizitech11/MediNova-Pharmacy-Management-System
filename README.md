# MediNova Pharmacy — Native PHP + MySQL

This version is a complete pharmacy storefront and private admin system.

## Customer side
- Separate Home, Shop, Categories, Product, Services, About, Contact pages
- Customer registration/login
- Private customer account and order history
- Session shopping cart
- Stock-aware checkout
- Cash on Delivery
- Bank Transfer/manual payment
- JazzCash hosted checkout integration structure
- Product images served from local uploads only
- Animated medicine/capsule visual when no product image has been uploaded

## Admin side
Open `/admin/login.php`.

Default admin:
- Email: `admin@medinova.local`
- Password: `Admin@12345`

Customers never see the admin navigation. Admin routes require an admin session.

Admin can:
- Add/edit/delete products
- Upload the exact product image from the computer
- Set price and stock
- Create/edit/delete medicine/pharmacy categories
- View registered customers
- View and update orders
- Update payment status
- View newsletter subscribers

## XAMPP
1. Extract the folder to `C:\xampp\htdocs\medinova`.
2. Start Apache and MySQL.
3. Open phpMyAdmin.
4. Import `database.sql`.
5. Open `http://localhost/medinova/`.
6. Admin: `http://localhost/medinova/admin/login.php`.

If you use another folder name, change `BASE_URL` in `config/config.php`.

## Product images
Admin > Products > Add product > Product image. The uploaded file is saved under `uploads/products/` and that same file is shown on the customer site.

## JazzCash
The project uses JazzCash's hosted HTTP POST checkout pattern. Before testing, add your Sandbox Merchant ID, Password, Integrity Salt and correct return URL in `config/config.php`. The project intentionally does not hard-code credentials.

For local testing, the return URL is configured as:
`http://localhost/medinova/payment/jazzcash_return.php`

A real hosted gateway callback requires a publicly reachable HTTPS return URL and merchant credentials. Do not put live credentials into public source control.
