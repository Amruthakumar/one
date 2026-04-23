<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Modern E‑Commerce Experience</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #ffffff;
            color: #0a1c2a;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        :root {
            --deep: #0a1c2a;
            --electric: #2b6ef0;
            --vivid: #00d2ff;
            --glow: rgba(43, 110, 240, 0.2);
            --surface: #f8fafd;
            --card-border: rgba(0, 0, 0, 0.03);
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 18px 36px -12px rgba(0, 0, 0, 0.08);
            --radius-xl: 28px;
            --radius-md: 20px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glassmorphism header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(43, 110, 240, 0.12);
            transition: all 0.2s;
        }

        .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
            gap: 24px;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-size: 1.8rem;
            font-weight: 700;
            background: linear-gradient(135deg, #0a1c2a, #2b6ef0);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .brand span { color: #2b6ef0; background: none; -webkit-background-clip: unset; background-clip: unset; }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: white;
            border: 1px solid #e2edf7;
            border-radius: 60px;
            padding: 8px 20px;
            gap: 12px;
            box-shadow: var(--shadow-sm);
            transition: all 0.2s;
            min-width: 280px;
        }
        .search-wrapper:focus-within {
            border-color: var(--electric);
            box-shadow: 0 0 0 3px var(--glow);
        }
        .search-wrapper input {
            border: none;
            background: transparent;
            font-size: 0.95rem;
            width: 100%;
            outline: none;
        }
        .search-wrapper button {
            background: none;
            border: none;
            color: #7c8b9c;
            cursor: pointer;
            font-size: 1.1rem;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }
        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #172c3c;
            transition: 0.2s;
            font-size: 0.95rem;
        }
        .nav-links a i { margin-right: 6px; }
        .nav-links a:hover { color: var(--electric); }

        .cart-icon {
            position: relative;
            background: var(--surface);
            padding: 10px 14px;
            border-radius: 40px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
        }
        .cart-count {
            background: var(--electric);
            color: white;
            border-radius: 30px;
            padding: 2px 8px;
            font-size: 0.75rem;
            font-weight: bold;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* Hero section modern */
        .hero-modern {
            margin: 32px 28px 48px;
            background: linear-gradient(125deg, #021526 0%, #0b2b42 100%);
            border-radius: var(--radius-xl);
            padding: 64px 48px;
            color: white;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::after {
            content: "✨";
            position: absolute;
            bottom: -20px;
            right: 30px;
            font-size: 220px;
            opacity: 0.1;
            pointer-events: none;
        }
        .hero-content h1 {
            font-size: 3.4rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            line-height: 1.2;
        }
        .hero-content .highlight {
            color: #00e0ff;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            margin-top: 32px;
        }
        .btn-primary {
            background: white;
            color: #021526;
            border: none;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            transition: all 0.2s;
            cursor: pointer;
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.5);
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
        }

        /* Section titles */
        .section-head {
            text-align: center;
            margin-bottom: 40px;
        }
        .section-head h2 {
            font-size: 2.2rem;
            font-weight: 700;
        }
        .section-head p {
            color: #5d6f83;
            margin-top: 8px;
        }

        /* grid categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
            margin-bottom: 48px;
        }
        .cat-card {
            background: white;
            border-radius: var(--radius-md);
            padding: 24px 16px;
            text-align: center;
            transition: all 0.25s ease;
            box-shadow: var(--shadow-sm);
            border: 1px solid #edf2f7;
        }
        .cat-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-md); border-color: var(--electric); }
        .cat-icon { font-size: 2.8rem; color: var(--electric); margin-bottom: 12px; }

        /* product grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }
        .product-card {
            background: white;
            border-radius: 24px;
            overflow: hidden;
            transition: 0.2s;
            box-shadow: 0 8px 20px rgba(0,0,0,0.02);
            border: 1px solid #eff3f8;
        }
        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.3s;
        }
        .product-card:hover .product-img { transform: scale(1.02); }
        .product-info {
            padding: 18px;
        }
        .price {
            font-weight: 800;
            font-size: 1.4rem;
            color: var(--deep);
        }
        .old-price {
            text-decoration: line-through;
            color: #8f9eb2;
            font-size: 0.9rem;
            margin-left: 8px;
        }
        .rating i { color: #f5b042; margin-right: 2px; font-size: 0.8rem; }
        .add-cart {
            background: var(--deep);
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            color: white;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
        }
        .add-cart:hover { background: var(--electric); transform: scale(0.97); }

        /* flash sale section */
        .flash-sale {
            background: linear-gradient(115deg, #fef9e8, #ffffff);
            border-radius: 36px;
            padding: 40px;
            margin: 40px auto;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
            border: 1px solid #ffe6c7;
        }
        .sale-img {
            flex: 1.2;
            border-radius: 28px;
            overflow: hidden;
        }
        .sale-img img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 28px;
        }
        .sale-info { flex: 1; }
        .timer-group {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }
        .timer-card {
            background: #021526;
            color: white;
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 80px;
        }
        .timer-card span:first-child { font-size: 2rem; font-weight: 800; }
        .discount-badge {
            background: #ff5e7c;
            display: inline-block;
            padding: 6px 12px;
            border-radius: 40px;
            font-weight: 700;
            margin-left: 12px;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 0 32px;
            scrollbar-width: thin;
        }
        .testi-card {
            min-width: 320px;
            background: white;
            border-radius: 28px;
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid #eef3fc;
        }

        /* newsletter */
        .newsletter-banner {
            background: radial-gradient(circle at 10% 30%, #0f2c3b, #021526);
            border-radius: 36px;
            padding: 56px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin-top: 24px;
            flex-wrap: wrap;
        }
        .newsletter-form input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 300px;
            font-size: 1rem;
        }
        .footer {
            padding: 48px 0 32px;
            text-align: center;
            color: #5b6f82;
            border-top: 1px solid #eef3fc;
            margin-top: 48px;
        }

        @media (max-width: 900px) {
            .nav-links { display: none; }
            .mobile-toggle { display: block; }
            .hero-modern { padding: 40px 24px; }
            .hero-content h1 { font-size: 2.2rem; }
            .search-wrapper { min-width: 180px; }
        }
        @media (max-width: 640px) {
            .products-grid { grid-template-columns: 1fr; }
            .timer-group { gap: 8px; }
            .timer-card { min-width: 65px; padding: 8px; }
            .container { padding: 0 18px; }
        }
        .toast-msg {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #0a1c2a;
            color: white;
            padding: 12px 24px;
            border-radius: 40px;
            z-index: 200;
            font-weight: 500;
            backdrop-filter: blur(8px);
            animation: fadeUp 0.3s ease;
        }
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="brand">NEXUS<span>SHOP</span></div>
        </div>
        <div class="nav-links">
            <a href="#"><i class="fas fa-store"></i> Home</a>
            <a href="#categories"><i class="fas fa-compass"></i> Explore</a>
            <a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a>
            <a href="#trending"><i class="fas fa-chart-line"></i> Trending</a>
        </div>
        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="search-wrapper">
                <input type="text" id="globalSearch" placeholder="Search for products...">
                <button id="searchTrigger"><i class="fas fa-search"></i></button>
            </div>
            <div class="cart-icon" id="cartIconBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCounter">0</span>
            </div>
        </div>
    </div>
    <!-- mobile nav -->
    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef; padding: 16px 28px;">
        <a href="#" style="display: block; margin: 12px 0;">🏠 Home</a>
        <a href="#categories" style="display: block; margin: 12px 0;">📦 Categories</a>
        <a href="#deals" style="display: block; margin: 12px 0;">⚡ Flash Sale</a>
        <a href="#trending" style="display: block; margin: 12px 0;">🔥 Trending</a>
    </div>
</header>

<main>
    <!-- Hero new design -->
    <div class="hero-modern">
        <div class="hero-content">
            <h1>Beyond the ordinary.<br> <span class="highlight">Future-ready</span> essentials.</h1>
            <p style="margin-top: 16px; font-size: 1.1rem; opacity: 0.9;">Unlock exclusive deals, premium quality & express delivery</p>
            <div class="btn-group">
                <button class="btn-primary" id="heroShopBtn">Shop Now →</button>
                <button class="btn-outline-light" id="heroDealBtn">Flash Sale</button>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Categories section -->
        <div class="section-head" id="categories">
            <h2>Curated Collections</h2>
            <p>Shop by top categories — designed for modern lifestyle</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>

        <!-- Trending products -->
        <div class="section-head" id="trending">
            <h2>✨ Trending Now</h2>
            <p>Most loved picks by our community</p>
        </div>
        <div class="products-grid" id="productsList"></div>

        <!-- FLASH DEAL section (attractive) -->
        <div id="deals" style="scroll-margin-top: 90px;"></div>
        <div class="flash-sale">
            <div class="sale-img">
                <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Sony Headphones Premium">
            </div>
            <div class="sale-info">
                <h2 style="font-size: 1.8rem;">⚡ FLASH SALE: <span style="color:#2b6ef0;">Sony WH-1000XM5</span></h2>
                <p>Industry-leading noise cancellation + 30h battery life. Limited stock!</p>
                <div class="timer-group" id="countdownTimer">
                    <div class="timer-card"><span id="days">00</span><br><small>Days</small></div>
                    <div class="timer-card"><span id="hours">00</span><br><small>Hrs</small></div>
                    <div class="timer-card"><span id="minutes">00</span><br><small>Min</small></div>
                    <div class="timer-card"><span id="seconds">00</span><br><small>Sec</small></div>
                </div>
                <div><span class="price" style="font-size: 2rem;">$279</span> <span class="old-price" style="font-size: 1.2rem;">$399</span> <span class="discount-badge">-30% OFF</span></div>
                <button id="flashSaleBtn" style="margin-top: 24px; background: #0a1c2a; border: none; padding: 14px 32px; border-radius: 60px; color: white; font-weight: bold; cursor: pointer;">🔥 Grab Deal →</button>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="section-head">
            <h2>Loved by 12k+ shoppers</h2>
            <p>Real stories, real style</p>
        </div>
        <div class="testimonial-scroll" id="testimonialsList"></div>

        <!-- Newsletter  -->
        <div class="newsletter-banner">
            <h3>Join the Inner Circle</h3>
            <p>Get early access to drops, 10% off first order & style tips</p>
            <div class="newsletter-form">
                <input type="email" placeholder="Your email address" id="newsEmail">
                <button class="btn-primary" id="subscribeBtn" style="background: white; color: #021526;">Subscribe →</button>
            </div>
        </div>
    </div>
</main>

<footer class="footer">
    <div class="container">
        <p>© 2025 NexusShop — minimalist e‑commerce with premium energy. <i class="fas fa-heart" style="color:#2b6ef0;"></i></p>
        <p style="margin-top: 12px;"><i class="fab fa-twitter"></i> <i class="fab fa-instagram"></i> <i class="fab fa-discord"></i> &nbsp; | &nbsp; Secure payments</p>
    </div>
</footer>

<script>
    // ---------- Mock Data ----------
    const categories = [
        { id: 1, name: "Electronics", icon: "fas fa-microchip", color: "#2b6ef0" },
        { id: 2, name: "Fashion", icon: "fas fa-tshirt", color: "#f5b042" },
        { id: 3, name: "Home & Living", icon: "fas fa-couch", color: "#48b894" },
        { id: 4, name: "Gaming", icon: "fas fa-gamepad", color: "#a259ff" },
        { id: 5, name: "Audio", icon: "fas fa-headphones", color: "#ff7e5e" },
        { id: 6, name: "Wearables", icon: "fas fa-clock", color: "#3b82f6" }
    ];

    const products = [
        { id: 101, name: "AirPods Pro 2", price: 199, oldPrice: 249, rating: 4.8, img: "https://images.unsplash.com/photo-1600294037681-c80b4e5d9b39?auto=format&fit=crop&w=400&q=80", tag: "hot" },
        { id: 102, name: "Minimalist Backpack", price: 79, oldPrice: 120, rating: 4.7, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=400&q=80" },
        { id: 103, name: "Smart Watch Ultra", price: 249, oldPrice: 329, rating: 4.9, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=400&q=80" },
        { id: 104, name: "Wireless Charger", price: 39, oldPrice: 59, rating: 4.5, img: "https://images.unsplash.com/photo-1586953208448-b95a79798f07?auto=format&fit=crop&w=400&q=80" },
        { id: 105, name: "Ergonomic Chair", price: 299, oldPrice: 450, rating: 4.9, img: "https://images.unsplash.com/photo-1596162954151-cdcb4c0f70c8?auto=format&fit=crop&w=400&q=80" },
        { id: 106, name: "4K Action Camera", price: 189, oldPrice: 279, rating: 4.6, img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80" }
    ];

    // ----- Cart state -----
    let cart = JSON.parse(localStorage.getItem("nexus_cart")) || [];
    function updateCartUI() {
        const total = cart.reduce((sum, item) => sum + item.qty, 0);
        document.getElementById("cartCounter").innerText = total;
        localStorage.setItem("nexus_cart", JSON.stringify(cart));
    }
    function addToCart(productId, name, price) {
        const existing = cart.find(item => item.id === productId);
        if (existing) existing.qty += 1;
        else cart.push({ id: productId, name, price, qty: 1 });
        updateCartUI();
        showToast(`✨ ${name} added to cart!`);
    }
    function showToast(msg) {
        let toast = document.createElement("div");
        toast.className = "toast-msg";
        toast.innerText = msg;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2200);
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById("categoriesContainer");
        container.innerHTML = categories.map(cat => `
            <div class="cat-card">
                <div class="cat-icon"><i class="${cat.icon}" style="color: ${cat.color};"></i></div>
                <h4>${cat.name}</h4>
                <p class="muted" style="font-size: 0.75rem;">123+ items</p>
            </div>
        `).join("");
    }

    // Render products
    function renderProducts(filter = "") {
        const container = document.getElementById("productsList");
        let filtered = products.filter(p => p.name.toLowerCase().includes(filter.toLowerCase()));
        if (filtered.length === 0) filtered = products;
        container.innerHTML = filtered.map(prod => `
            <div class="product-card">
                <img class="product-img" src="${prod.img}" alt="${prod.name}" loading="lazy">
                <div class="product-info">
                    <h3 style="font-size: 1.2rem;">${prod.name}</h3>
                    <div class="rating">${"★".repeat(Math.floor(prod.rating))}${prod.rating % 1 ? "½" : ""} ${prod.rating}</div>
                    <div style="margin: 12px 0;"><span class="price">$${prod.price}</span> ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice}</span>` : ''}</div>
                    <button class="add-cart" data-id="${prod.id}" data-name="${prod.name}" data-price="${prod.price}">Add to Cart <i class="fas fa-arrow-right"></i></button>
                </div>
            </div>
        `).join("");
        document.querySelectorAll(".add-cart").forEach(btn => {
            btn.addEventListener("click", (e) => {
                const id = parseInt(btn.getAttribute("data-id"));
                const name = btn.getAttribute("data-name");
                const price = parseFloat(btn.getAttribute("data-price"));
                addToCart(id, name, price);
            });
        });
    }

    // testimonials
    const testimonialsData = [
        { name: "Sophia Chen", text: "Stunning quality, and the packaging was premium. Will order again!", rating: 5, img: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus V.", text: "Fastest shipping I've ever experienced. The tech deals are insane!", rating: 5, img: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Elena R.", text: "Minimalist design but full feature set. Love my new watch!", rating: 4.5, img: "https://randomuser.me/api/portraits/women/44.jpg" }
    ];
    function renderTestimonials() {
        const cont = document.getElementById("testimonialsList");
        cont.innerHTML = testimonialsData.map(t => `
            <div class="testi-card">
                <div class="rating">${"★".repeat(Math.floor(t.rating))} ${t.rating}</div>
                <p style="margin: 12px 0;">“${t.text}”</p>
                <div style="display: flex; gap: 12px; align-items: center;">
                    <img src="${t.img}" style="width: 44px; height: 44px; border-radius: 50%; object-fit: cover;">
                    <div><strong>${t.name}</strong><br><span style="font-size: 12px;">Verified Buyer</span></div>
                </div>
            </div>
        `).join("");
    }

    // Countdown timer for flash sale (ends in 2 days + more)
    function initDealTimer() {
        const endTime = new Date();
        endTime.setDate(endTime.getDate() + 2);
        endTime.setHours(23, 59, 59, 999);
        function updateTimer() {
            const now = new Date();
            const diff = endTime - now;
            if (diff <= 0) {
                document.getElementById("days").innerText = "0"; document.getElementById("hours").innerText = "00";
                document.getElementById("minutes").innerText = "00"; document.getElementById("seconds").innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById("days").innerText = days;
            document.getElementById("hours").innerText = String(hours).padStart(2,'0');
            document.getElementById("minutes").innerText = String(mins).padStart(2,'0');
            document.getElementById("seconds").innerText = String(secs).padStart(2,'0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    }

    // Search feature
    function bindSearch() {
        const searchInput = document.getElementById("globalSearch");
        const searchBtn = document.getElementById("searchTrigger");
        function handleSearch() {
            const term = searchInput.value.trim();
            renderProducts(term);
            if (term) document.getElementById("trending").scrollIntoView({ behavior: "smooth" });
        }
        searchBtn.addEventListener("click", handleSearch);
        searchInput.addEventListener("keypress", (e) => { if (e.key === "Enter") handleSearch(); });
    }

    // flash sale cart
    document.addEventListener("click", (e) => {
        if (e.target.id === "flashSaleBtn" || e.target.id === "buyDeal" || e.target.closest("#buyDeal") || e.target.id === "heroDealBtn") {
            addToCart(999, "Sony WH-1000XM5 (Flash Deal)", 279);
        }
        if (e.target.id === "heroShopBtn" || (e.target.id === "shopNow")) {
            document.getElementById("trending").scrollIntoView({ behavior: "smooth" });
        }
    });

    // cart button click shows alert w/ count (demo)
    document.getElementById("cartIconBtn").addEventListener("click", () => {
        if(cart.length === 0) showToast("🛒 Cart is empty, add some cool items!");
        else showToast(`🛍️ ${cart.reduce((s,i)=>s+i.qty,0)} items in cart.`);
    });
    // mobile toggle
    const toggleBtn = document.getElementById("mobileMenuToggle");
    const menuPanel = document.getElementById("mobileMenuPanel");
    toggleBtn.addEventListener("click", () => {
        if(menuPanel.style.display === "none") menuPanel.style.display = "block";
        else menuPanel.style.display = "none";
    });
    // newsletter subscribe
    document.getElementById("subscribeBtn")?.addEventListener("click", () => {
        const email = document.getElementById("newsEmail").value;
        if(email.includes("@") && email.includes(".")) showToast("🎉 Thanks! 10% coupon sent to email (demo)");
        else showToast("💌 Please enter a valid email");
    });

    // initial renders
    renderCategories();
    renderProducts("");
    renderTestimonials();
    updateCartUI();
    initDealTimer();
    bindSearch();
</script>
</body>
</html>
