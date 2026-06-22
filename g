<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>GeoTech International 🌿</title>
    <script src="https://unpkg.com/react@18/umd/react.production.min.js"></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.production.min.js"></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    <style>
        /* ===== جميع التنسيقات (مدمجة) ===== */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        :root { --green-dark: #1b4332; --green: #2d6a4f; --green-mid: #40916c; --green-light: #52b788; --green-pale: #d8f3dc; --text2: #4a6355; }
        .nav { background: var(--green-dark); padding: 0 32px; display: flex; align-items: center; justify-content: space-between; height: 68px; position: sticky; top: 0; z-index: 100; box-shadow: 0 2px 14px rgba(0,0,0,0.35); }
        .nav-logo { display: flex; align-items: center; gap: 12px; cursor: pointer; }
        .logo-icon { width: 42px; height: 42px; background: linear-gradient(135deg, var(--green-light), var(--green-mid)); border-radius: 10px; display: flex; align-items: center; justify-content: center; font-size: 20px; }
        .logo-text { color: white; font-size: 17px; font-weight: 800; line-height: 1.2; }
        .logo-sub { color: var(--green-pale); font-size: 10px; font-weight: 400; letter-spacing: 0.3px; }
        .nav-links { display: flex; gap: 8px; align-items: center; }
        .nav-btn { background: transparent; border: 1px solid rgba(255,255,255,0.25); color: white; padding: 7px 16px; border-radius: 8px; cursor: pointer; font-size: 14px; transition: all 0.2s; }
        .nav-btn:hover { background: rgba(255,255,255,0.12); }
        .admin-btn { font-size: 12px; opacity: 0.6; }
        .hero { background: linear-gradient(140deg, var(--green-dark) 0%, var(--green) 55%, var(--green-mid) 100%); padding: 88px 32px 80px; text-align: center; position: relative; overflow: hidden; }
        .hero::before { content: ''; position: absolute; inset: 0; background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none'%3E%3Cg fill='%23ffffff' fill-opacity='0.04'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"); }
        .cert-banner { position: relative; z-index: 1; display: inline-flex; align-items: center; gap: 12px; background: rgba(255,255,255,0.12); border: 1px solid rgba(255,255,255,0.25); color: var(--green-pale); padding: 8px 22px; border-radius: 24px; font-size: 13px; margin-bottom: 28px; }
        .cert-sep { opacity: 0.4; }
        .hero h1 { position: relative; z-index: 1; color: white; font-size: clamp(28px, 5vw, 54px); font-weight: 800; line-height: 1.15; margin-bottom: 18px; }
        .hero h1 span { color: var(--green-pale); }
        .hero p { position: relative; z-index: 1; color: rgba(255,255,255,0.85); font-size: clamp(14px, 2vw, 18px); max-width: 620px; margin: 0 auto; line-height: 1.7; }
        .hero-cta-primary { display: inline-block; background: white; color: var(--green-dark); padding: 13px 28px; border-radius: 10px; font-weight: 700; font-size: 15px; text-decoration: none; transition: opacity 0.2s; }
        .hero-cta-primary:hover { opacity: 0.9; }
        .hero-cta-secondary { display: inline-block; background: rgba(255,255,255,0.15); border: 1.5px solid rgba(255,255,255,0.4); color: white; padding: 13px 28px; border-radius: 10px; font-weight: 600; font-size: 15px; text-decoration: none; transition: background 0.2s; }
        .hero-cta-secondary:hover { background: rgba(255,255,255,0.22); }
        .cert-strip { background: white; border-bottom: 1px solid #e8f0e9; }
        .cert-strip-inner { max-width: 1100px; margin: 0 auto; padding: 28px 32px; display: flex; align-items: center; justify-content: center; gap: 0; flex-wrap: wrap; }
        .cert-item { display: flex; align-items: center; gap: 14px; padding: 0 36px; }
        .cert-icon { font-size: 32px; }
        .cert-title { font-size: 15px; font-weight: 700; color: var(--green-dark); }
        .cert-desc { font-size: 12px; color: var(--text2); margin-top: 2px; max-width: 200px; }
        .cert-divider { width: 1px; height: 56px; background: #e0ece4; }
        .section { padding: 64px 32px; max-width: 1200px; margin: 0 auto; }
        .section-title { text-align: center; margin-bottom: 48px; }
        .eyebrow { font-size: 12px; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; color: var(--green-mid); margin-bottom: 8px; }
        .section-title h2 { font-size: clamp(24px, 3.5vw, 38px); font-weight: 800; color: var(--green-dark); margin-bottom: 8px; }
        .section-title p { color: var(--text2); font-size: 15px; max-width: 560px; margin: 0 auto; line-height: 1.6; }
        .title-line { width: 56px; height: 4px; background: linear-gradient(90deg, var(--green-light), var(--green-mid)); border-radius: 2px; margin: 16px auto 0; }
        .products-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(270px, 1fr)); gap: 24px; }
        .product-card { background: white; border-radius: 16px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.08); transition: transform 0.2s, box-shadow 0.2s; }
        .product-card:hover { transform: translateY(-4px); box-shadow: 0 10px 36px rgba(0,0,0,0.14); }
        .product-img { height: 200px; object-fit: cover; width: 100%; display: block; }
        .product-body { padding: 20px; }
        .product-tag { display: inline-block; background: var(--green-pale); color: var(--green); padding: 4px 12px; border-radius: 20px; font-size: 12px; font-weight: 700; margin-bottom: 10px; }
        .product-name { font-size: 16px; font-weight: 800; color: var(--green-dark); margin-bottom: 6px; line-height: 1.3; }
        .product-use { font-size: 13px; color: var(--text2); margin-bottom: 16px; line-height: 1.5; }
        .product-specs { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; margin-bottom: 16px; }
        .spec-item { background: #f5f9f6; border-radius: 8px; padding: 8px 10px; }
        .spec-label { font-size: 10px; color: var(--text2); text-transform: uppercase; letter-spacing: 0.5px; }
        .spec-val { font-size: 13px; font-weight: 700; color: var(--green-dark); margin-top: 2px; }
        .order-btn { width: 100%; background: linear-gradient(135deg, var(--green), var(--green-mid)); color: white; border: none; padding: 12px; border-radius: 10px; font-size: 14px; font-weight: 700; cursor: pointer; transition: opacity 0.2s; }
        .order-btn:hover { opacity: 0.9; }
        .uses-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(220px, 1fr)); gap: 20px; }
        .use-card { background: white; border-radius: 14px; padding: 28px 20px; text-align: center; box-shadow: 0 2px 12px rgba(0,0,0,0.06); border-top: 4px solid var(--green-light); }
        .use-icon { font-size: 36px; margin-bottom: 12px; }
        .use-title { font-size: 15px; font-weight: 700; color: var(--green-dark); margin-bottom: 6px; }
        .use-desc { font-size: 13px; color: var(--text2); line-height: 1.5; }
        .process-steps { display: grid; grid-template-columns: repeat(auto-fill, minmax(190px, 1fr)); gap: 18px; }
        .step { background: white; border-radius: 14px; padding: 24px 18px; box-shadow: 0 2px 12px rgba(0,0,0,0.06); }
        .step-num { width: 34px; height: 34px; background: var(--green-dark); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: 14px; margin-bottom: 12px; }
        .step-title { font-size: 14px; font-weight: 700; color: var(--green-dark); margin-bottom: 6px; }
        .step-desc { font-size: 12px; color: var(--text2); line-height: 1.5; }
        .contact-form-wrap { max-width: 680px; margin: 0 auto; background: white; border-radius: 20px; padding: 40px; box-shadow: 0 4px 24px rgba(0,0,0,0.08); }
        .footer { background: var(--green-dark); color: white; text-align: center; padding: 40px 32px; }
        .modal-overlay { position: fixed; inset: 0; background: rgba(0,0,0,0.6); z-index: 1000; display: flex; align-items: center; justify-content: center; padding: 20px; }
        .modal { background: white; border-radius: 20px; width: 100%; max-width: 540px; max-height: 90vh; overflow-y: auto; }
        .modal-header { background: linear-gradient(135deg, var(--green-dark), var(--green)); padding: 22px 26px; color: white; border-radius: 20px 20px 0 0; }
        .modal-header h3 { font-size: 18px; font-weight: 700; }
        .modal-header p { font-size: 13px; opacity: 0.8; margin-top: 4px; }
        .modal-body { padding: 26px; }
        .close-btn { background: rgba(255,255,255,0.2); border: 1px solid rgba(255,255,255,0.35); color: white; padding: 5px 12px; border-radius: 8px; cursor: pointer; font-size: 12px; float: right; }
        .form-group { margin-bottom: 16px; }
        .form-label { font-size: 13px; font-weight: 600; color: var(--green-dark); margin-bottom: 6px; display: block; }
        .req { color: #e53e3e; margin-right: 2px; }
        .form-input { width: 100%; padding: 11px 13px; border: 1.5px solid #d1e8d8; border-radius: 10px; font-size: 14px; font-family: inherit; transition: border-color 0.2s; background: #f9fdf9; }
        .form-input:focus { outline: none; border-color: var(--green-light); background: white; }
        .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 14px; }
        .radio-group { display: flex; gap: 10px; }
        .radio-opt { flex: 1; border: 1.5px solid #d1e8d8; border-radius: 10px; padding: 11px; cursor: pointer; text-align: center; transition: all 0.2s; }
        .radio-opt.active { border-color: var(--green-mid); background: var(--green-pale); }
        .ro-icon { font-size: 20px; margin-bottom: 3px; }
        .ro-label { font-size: 12px; font-weight: 600; color: var(--green-dark); }
        .phone-row { display: flex; gap: 8px; }
        .phone-row select { width: 165px; flex-shrink: 0; }
        .info-banner { background: #f0faf3; border: 1px solid #b7e4c7; border-radius: 10px; padding: 12px 14px; margin-bottom: 18px; font-size: 13px; color: var(--green-dark); }
        .submit-btn { width: 100%; background: linear-gradient(135deg, var(--green-dark), var(--green-mid)); color: white; border: none; padding: 14px; border-radius: 12px; font-size: 15px; font-weight: 700; cursor: pointer; transition: opacity 0.2s; }
        .submit-btn:hover { opacity: 0.88; }
        .submit-btn:disabled { opacity: 0.45; cursor: not-allowed; }
        .success-box { text-align: center; padding: 36px 16px; }
        .success-icon { font-size: 58px; margin-bottom: 14px; }
        .success-title { font-size: 22px; font-weight: 700; color: var(--green-dark); margin-bottom: 8px; }
        .success-sub { font-size: 14px; color: var(--text2); line-height: 1.5; }
        .admin-container { max-width: 920px; margin: 36px auto; padding: 0 20px; }
        .admin-card { background: white; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.08); overflow: hidden; margin-bottom: 22px; }
        .admin-card-header { background: var(--green-dark); color: white; padding: 15px 22px; font-size: 15px; font-weight: 700; }
        .admin-card-body { padding: 22px; }
        .stats-row { display: grid; grid-template-columns: repeat(3, 1fr); gap: 14px; }
        .stat-box { background: var(--green-pale); border-radius: 12px; padding: 18px; text-align: center; }
        .sn { font-size: 30px; font-weight: 800; color: var(--green-dark); }
        .sl { font-size: 12px; color: var(--text2); margin-top: 4px; }
        .order-item { border: 1px solid #e8f0e9; border-radius: 12px; padding: 15px; margin-bottom: 10px; }
        .order-top { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 10px; }
        .order-name { font-size: 15px; font-weight: 700; color: var(--green-dark); }
        .order-date { font-size: 11px; color: var(--text2); }
        .order-detail { display: grid; grid-template-columns: repeat(2, 1fr); gap: 5px; font-size: 13px; color: var(--text2); }
        .order-detail span strong { color: var(--green-dark); }
        .login-box { max-width: 360px; width: 100%; background: white; border-radius: 20px; box-shadow: 0 8px 32px rgba(0,0,0,0.12); overflow: hidden; }
        .login-header { background: linear-gradient(135deg, var(--green-dark), var(--green)); padding: 30px; text-align: center; color: white; }
        .login-header h2 { font-size: 22px; font-weight: 700; margin-top: 10px; }
        .login-body { padding: 28px; }
        @media (max-width: 640px) {
            .nav { padding: 0 16px; }
            .section { padding: 40px 16px; }
            .hero { padding: 56px 16px 48px; }
            .cert-strip-inner { flex-direction: column; gap: 20px; }
            .cert-divider { display: none; }
            .cert-item { padding: 0; }
            .form-row { grid-template-columns: 1fr; }
            .stats-row { grid-template-columns: 1fr 1fr; }
            .phone-row { flex-direction: column; }
            .phone-row select { width: 100%; }
            .contact-form-wrap { padding: 24px 18px; }
            .radio-group { flex-direction: column; }
            .cert-banner { flex-direction: column; gap: 6px; }
            .cert-sep { display: none; }
        }
    </style>
</head>
<body>
    <div id="root"></div>

    <script type="text/babel">
        // ========== React Code ==========
        const { useState, useEffect } = React;

        // ---- البيانات ----
        const ORDERS_KEY = "geomat_orders";
        const VISITS_KEY = "geomat_visits";
        const ADMIN_PASS = "geomat2024";

        const PRODUCTS = [
            { id: 1, name: "Channel Drainage Geomat", width: "6 m", weight: "200–500 g/m²", minOrderKg: 1000, use: "Drainage and water management in geotechnical projects", emoji: "🌊", img: "https://images.unsplash.com/photo-1504711434969-e33886168f5c?w=600&q=80" },
            { id: 2, name: "Pyramid Erosion Control Geomat", width: "6 m", weight: "300–800 g/m²", minOrderKg: 1000, use: "Soil stabilization and erosion control on slopes", emoji: "⛰️", img: "https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?w=600&q=80" },
            { id: 3, name: "Reinforced Combination Geomat", width: "6 m", weight: "500–1500 g/m²", minOrderKg: 1000, use: "Slope, embankment and water channel reinforcement", emoji: "🏗️", img: "https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600&q=80" },
            { id: 4, name: "Geomat with Geotextile Lamination", width: "6 m", weight: "400–1200 g/m²", minOrderKg: 1000, use: "Combined filtration, drainage and reinforcement", emoji: "🔗", img: "https://images.unsplash.com/photo-1541888946425-d81bb19240f5?w=600&q=80" },
        ];

        const COUNTRY_CODES = [
            { code: "+966", country: "🇸🇦 Saudi Arabia" }, { code: "+971", country: "🇦🇪 UAE" }, { code: "+965", country: "🇰🇼 Kuwait" }, { code: "+974", country: "🇶🇦 Qatar" }, { code: "+973", country: "🇧🇭 Bahrain" }, { code: "+968", country: "🇴🇲 Oman" }, { code: "+962", country: "🇯🇴 Jordan" }, { code: "+20", country: "🇪🇬 Egypt" }, { code: "+964", country: "🇮🇶 Iraq" }, { code: "+1", country: "🇺🇸 USA" }, { code: "+44", country: "🇬🇧 UK" }, { code: "+49", country: "🇩🇪 Germany" }, { code: "+33", country: "🇫🇷 France" }, { code: "+91", country: "🇮🇳 India" }, { code: "+86", country: "🇨🇳 China" }, { code: "+90", country: "🇹🇷 Turkey" }, { code: "+55", country: "🇧🇷 Brazil" }, { code: "+27", country: "🇿🇦 South Africa" }, { code: "+61", country: "🇦🇺 Australia" },
        ];

        // ---- دوال التخزين (localStorage) ----
        async function saveOrder(order) {
            try {
                const existing = localStorage.getItem(ORDERS_KEY);
                const orders = existing ? JSON.parse(existing) : [];
                orders.unshift({ ...order, id: Date.now(), date: new Date().toISOString() });
                localStorage.setItem(ORDERS_KEY, JSON.stringify(orders));
                return true;
            } catch { return false; }
        }
        async function getOrders() {
            try { const r = localStorage.getItem(ORDERS_KEY); return r ? JSON.parse(r) : []; } catch { return []; }
        }
        async function recordVisit() {
            try {
                const r = localStorage.getItem(VISITS_KEY);
                const data = r ? JSON.parse(r) : { total: 0, log: [] };
                data.total += 1;
                data.log.unshift(new Date().toISOString());
                if (data.log.length > 200) data.log = data.log.slice(0, 200);
                localStorage.setItem(VISITS_KEY, JSON.stringify(data));
            } catch {}
        }
        async function getVisits() {
            try { const r = localStorage.getItem(VISITS_KEY); return r ? JSON.parse(r) : { total: 0, log: [] }; } catch { return { total: 0, log: [] }; }
        }

        // ---- المكونات ----
        function App() {
            const [page, setPage] = useState("home");
            const [selectedProduct, setSelectedProduct] = useState(null);
            const [adminPass, setAdminPass] = useState("");
            const [adminError, setAdminError] = useState(false);
            const [adminLoggedIn, setAdminLoggedIn] = useState(false);

            useEffect(() => { recordVisit(); }, []);

            const handleOrderClick = (product) => { setSelectedProduct(product); setPage("order"); };
            const handleAdminLogin = () => {
                if (adminPass === ADMIN_PASS) { setAdminLoggedIn(true); setPage("admin"); setAdminError(false); }
                else setAdminError(true);
            };

            return (
                <div style={{ fontFamily: "'Segoe UI', system-ui, sans-serif", minHeight: "100vh", background: "#f0f4f0", color: "#1a2e1a" }}>
                    <nav className="nav">
                        <div className="nav-logo" onClick={() => setPage("home")}>
                            <div className="logo-icon">🌿</div>
                            <div>
                                <div className="logo-text">GeoTech International</div>
                                <div className="logo-sub">Professional Geomat Solutions</div>
                            </div>
                        </div>
                        <div className="nav-links">
                            <button className="nav-btn" onClick={() => setPage("home")}>Products</button>
                            <button className="nav-btn" onClick={() => { setPage("home"); setTimeout(() => document.getElementById("contact-section")?.scrollIntoView({ behavior: "smooth" }), 100); }}>Contact</button>
                            <button className="nav-btn admin-btn" onClick={() => setPage("admin-login")}>Admin</button>
                        </div>
                    </nav>

                    {page === "home" && <HomePage onOrderClick={handleOrderClick} />}
                    {page === "order" && <OrderModal product={selectedProduct} onClose={() => setPage("home")} />}
                    {page === "admin-login" && !adminLoggedIn && (
                        <AdminLogin pass={adminPass} setPass={setAdminPass} onLogin={handleAdminLogin} error={adminError} />
                    )}
                    {page === "admin" && adminLoggedIn && <AdminDashboard onBack={() => setPage("home")} />}

                    <footer className="footer">
                        <div style={{ fontSize: 32, marginBottom: 10 }}>🌿</div>
                        <div style={{ fontWeight: 800, fontSize: 20, marginBottom: 4 }}>GeoTech International</div>
                        <div style={{ fontSize: 13, opacity: 0.6, marginBottom: 16 }}>Professional Geomat Manufacturing & Supply</div>
                        <div style={{ display: "flex", gap: 16, justifyContent: "center", flexWrap: "wrap", marginBottom: 16 }}>
                            <span style={{ background: "rgba(255,255,255,0.1)", padding: "6px 14px", borderRadius: 20, fontSize: 12 }}>🏆 CE Certified</span>
                            <span style={{ background: "rgba(255,255,255,0.1)", padding: "6px 14px", borderRadius: 20, fontSize: 12 }}>🌍 Worldwide Shipping</span>
                            <span style={{ background: "rgba(255,255,255,0.1)", padding: "6px 14px", borderRadius: 20, fontSize: 12 }}>✅ ISO 9001</span>
                        </div>
                        <div style={{ fontSize: 12, opacity: 0.5 }}>© 2024 GeoTech International — All rights reserved</div>
                    </footer>
                </div>
            );
        }

        function HomePage({ onOrderClick }) {
            return (
                <>
                    <div className="hero">
                        <div style={{ position: "relative", zIndex: 1 }}>
                            <div className="cert-banner">
                                <span>🏆 CE Certified</span>
                                <span className="cert-sep">·</span>
                                <span>✅ ISO 9001:2015</span>
                                <span className="cert-sep">·</span>
                                <span>🌍 Worldwide Shipping</span>
                            </div>
                            <h1>Professional <span>Geomat Solutions</span><br />for Every Project</h1>
                            <p>High‑performance geomats for soil stabilization, erosion control, and drainage. Available up to <strong style={{ color: "#d8f3dc" }}>6 m width</strong> — minimum order 1 tonne.</p>
                            <div style={{ display: "flex", gap: 14, justifyContent: "center", flexWrap: "wrap", marginTop: 32 }}>
                                <a href="#products" className="hero-cta-primary">View Products ↓</a>
                                <a href="#contact-section" className="hero-cta-secondary">Request a Quote</a>
                            </div>
                        </div>
                    </div>

                    <div className="cert-strip">
                        <div className="cert-strip-inner">
                            <div className="cert-item"><div className="cert-icon">🏅</div><div><div className="cert-title">CE Mark Certified</div><div className="cert-desc">European Conformity — meets all EU safety & performance standards</div></div></div>
                            <div className="cert-divider" />
                            <div className="cert-item"><div className="cert-icon">📋</div><div><div className="cert-title">ISO 9001:2015</div><div className="cert-desc">Quality Management System — consistent product excellence</div></div></div>
                            <div className="cert-divider" />
                            <div className="cert-item"><div className="cert-icon">🌱</div><div><div className="cert-title">EN 13562 Compliant</div><div className="cert-desc">European standard for geosynthetics in erosion control</div></div></div>
                        </div>
                    </div>

                    <div className="section">
                        <div className="section-title"><div className="eyebrow">Applications</div><h2>Where Geomat Performs</h2><p>Engineered for demanding geotechnical and environmental projects worldwide</p><div className="title-line" /></div>
                        <div className="uses-grid">
                            {[
                                { icon: "🏔️", title: "Slope Stabilization", desc: "Prevents soil movement on natural and engineered slopes, embankments and cuttings." },
                                { icon: "💧", title: "Drainage & Filtration", desc: "Manages subsurface water flow in road construction, retaining walls and landfills." },
                                { icon: "🌊", title: "Erosion Control", desc: "Protects riverbanks, canals, coastal areas and reservoirs from hydraulic erosion." },
                                { icon: "🛣️", title: "Road Reinforcement", desc: "Stabilizes subgrade layers in road, railway and pavement construction projects." },
                            ].map((u, i) => (
                                <div key={i} className="use-card"><div className="use-icon">{u.icon}</div><div className="use-title">{u.title}</div><div className="use-desc">{u.desc}</div></div>
                            ))}
                        </div>
                    </div>

                    <div id="products" style={{ background: "#f5faf6", padding: "16px 0" }}>
                        <div className="section">
                            <div className="section-title"><div className="eyebrow">Our Products</div><h2>Geomat Range</h2><p>All products available at <strong>6 m width</strong> — pricing provided upon inquiry based on quantity & destination</p><div className="title-line" /></div>
                            <div className="products-grid">
                                {PRODUCTS.map(p => <ProductCard key={p.id} product={p} onOrder={() => onOrderClick(p)} />)}
                            </div>
                        </div>
                    </div>

                    <div className="section">
                        <div className="section-title"><div className="eyebrow">Manufacturing</div><h2>Production Process</h2><p>State‑of‑the‑art extrusion lines delivering consistent quality at every step</p><div className="title-line" /></div>
                        <div className="process-steps">
                            {[
                                { title: "Material Preparation", desc: "PP or PA granules with additives fed into the extruder via pneumatic conveying system." },
                                { title: "3D Extrusion & Forming", desc: "Material extruded through a forming head and shaped into pyramidal or channel structure." },
                                { title: "Cooling & Stabilization", desc: "Geomat passes through a controlled cooling system to solidify its three‑dimensional form." },
                                { title: "Geotextile Lamination", desc: "Top and bottom geotextile layers bonded using precision electric resistance heating." },
                                { title: "Cutting & Winding", desc: "Final product is cut to specification and wound into rolls ready for shipment." },
                            ].map((s, i) => (
                                <div key={i} className="step"><div className="step-num">{i + 1}</div><div className="step-title">{s.title}</div><div className="step-desc">{s.desc}</div></div>
                            ))}
                        </div>
                    </div>

                    <div id="contact-section" style={{ background: "#f5faf6", padding: "16px 0" }}>
                        <div className="section">
                            <div className="section-title"><div className="eyebrow">Get in Touch</div><h2>Request a Quote</h2><p>Share your requirements and we'll get back to you within 24 hours with pricing and shipping costs</p><div className="title-line" /></div>
                            <ContactForm />
                        </div>
                    </div>
                </>
            );
        }

        function ProductCard({ product: p, onOrder }) {
            return (
                <div className="product-card">
                    <img className="product-img" src={p.img} alt={p.name} onError={e => { e.target.style.background = "#d8f3dc"; e.target.style.display = "none"; }} />
                    <div className="product-body">
                        <div className="product-tag">{p.emoji} {p.width} width</div>
                        <div className="product-name">{p.name}</div>
                        <div className="product-use">{p.use}</div>
                        <div className="product-specs">
                            <div className="spec-item"><div className="spec-label">Basis Weight</div><div className="spec-val">{p.weight}</div></div>
                            <div className="spec-item"><div className="spec-label">Min. Order</div><div className="spec-val">1 Tonne</div></div>
                            <div className="spec-item"><div className="spec-label">Material</div><div className="spec-val">PP / PA</div></div>
                            <div className="spec-item"><div className="spec-label">Certification</div><div className="spec-val">🏅 CE Mark</div></div>
                        </div>
                        <button className="order-btn" onClick={onOrder}>Request a Quote →</button>
                    </div>
                </div>
            );
        }

        function ContactForm() {
            const [contactType, setContactType] = useState("phone");
            const [name, setName] = useState("");
            const [country, setCountry] = useState("");
            const [phoneCode, setPhoneCode] = useState("+966");
            const [phone, setPhone] = useState("");
            const [email, setEmail] = useState("");
            const [message, setMessage] = useState("");
            const [loading, setLoading] = useState(false);
            const [done, setDone] = useState(false);
            const [error, setError] = useState("");

            const valid = name && country && (contactType === "phone" ? phone.length >= 6 : email.includes("@"));
            const handleSubmit = async () => {
                if (!valid) return;
                setLoading(true);
                const order = { product: "General Inquiry", orderType: "Contact Form", qty: 0, unit: "", estimatedPrice: "0", country, name, contact: contactType === "phone" ? `${phoneCode}${phone}` : email, contactType, notes: message };
                const ok = await saveOrder(order);
                setLoading(false);
                if (ok) setDone(true);
                else setError("Something went wrong. Please try again.");
            };
            if (done) return (
                <div className="success-box"><div className="success-icon">✅</div><div className="success-title">Message Received!</div><div className="success-sub">Our team will contact you within 24 hours to discuss your requirements and shipping options.</div></div>
            );
            return (
                <div className="contact-form-wrap">
                    <div className="form-row">
                        <div className="form-group"><label className="form-label"><span className="req">*</span> Full Name</label><input className="form-input" value={name} onChange={e => setName(e.target.value)} placeholder="John Smith" /></div>
                        <div className="form-group"><label className="form-label"><span className="req">*</span> Country</label><input className="form-input" value={country} onChange={e => setCountry(e.target.value)} placeholder="Germany" /></div>
                    </div>
                    <div className="form-group">
                        <label className="form-label"><span className="req">*</span> Contact Method (at least one required)</label>
                        <div className="radio-group" style={{ marginBottom: 12 }}>
                            <div className={`radio-opt ${contactType === "phone" ? "active" : ""}`} onClick={() => setContactType("phone")}><div className="ro-icon">📱</div><div className="ro-label">Phone / WhatsApp</div></div>
                            <div className={`radio-opt ${contactType === "email" ? "active" : ""}`} onClick={() => setContactType("email")}><div className="ro-icon">📧</div><div className="ro-label">Email</div></div>
                        </div>
                        {contactType === "phone" ? (
                            <div className="phone-row"><select className="form-input" value={phoneCode} onChange={e => setPhoneCode(e.target.value)}>{COUNTRY_CODES.map(c => <option key={c.code} value={c.code}>{c.country} ({c.code})</option>)}</select><input className="form-input" type="tel" value={phone} onChange={e => setPhone(e.target.value)} placeholder="5XXXXXXXX" style={{ flex: 1 }} /></div>
                        ) : (
                            <input className="form-input" type="email" value={email} onChange={e => setEmail(e.target.value)} placeholder="you@company.com" />
                        )}
                    </div>
                    <div className="form-group"><label className="form-label">Message / Requirements (optional)</label><textarea className="form-input" rows={4} value={message} onChange={e => setMessage(e.target.value)} placeholder="Tell us about your project, required quantities, product type, or any questions..." style={{ resize: "vertical" }} /></div>
                    {error && <div style={{ color: "#e53e3e", fontSize: 13, marginBottom: 10 }}>{error}</div>}
                    <button className="submit-btn" disabled={!valid || loading} onClick={handleSubmit}>{loading ? "⏳ Sending..." : "Send Message →"}</button>
                </div>
            );
        }

        function OrderModal({ product, onClose }) {
            const [orderType, setOrderType] = useState("kg");
            const [qty, setQty] = useState("");
            const [country, setCountry] = useState("");
            const [name, setName] = useState("");
            const [contactType, setContactType] = useState("phone");
            const [phoneCode, setPhoneCode] = useState("+966");
            const [phone, setPhone] = useState("");
            const [email, setEmail] = useState("");
            const [notes, setNotes] = useState("");
            const [loading, setLoading] = useState(false);
            const [done, setDone] = useState(false);
            const [error, setError] = useState("");

            const isKg = orderType === "kg";
            const qtyNum = parseFloat(qty) || 0;
            const valid = qty && qtyNum > 0 && (!isKg || qtyNum >= 1000) && name && country && (contactType === "phone" ? phone.length >= 6 : email.includes("@"));

            const handleSubmit = async () => {
                if (!valid) return;
                setLoading(true);
                const order = { product: product.name, orderType: isKg ? "By Weight (kg)" : "By Area (m²)", qty: qtyNum, unit: isKg ? "kg" : "m²", estimatedPrice: "TBD", country, name, contact: contactType === "phone" ? `${phoneCode}${phone}` : email, contactType, notes };
                const ok = await saveOrder(order);
                setLoading(false);
                if (ok) setDone(true);
                else setError("Something went wrong. Please try again.");
            };
            if (!product) return null;
            return (
                <div className="modal-overlay" onClick={e => e.target === e.currentTarget && onClose()}>
                    <div className="modal">
                        <div className="modal-header"><button className="close-btn" onClick={onClose}>✕ Close</button><h3>{product.emoji} {product.name}</h3><p>Fill in your details and we'll get back with a quote including shipping</p></div>
                        <div className="modal-body">
                            {done ? (
                                <div className="success-box"><div className="success-icon">✅</div><div className="success-title">Quote Request Sent!</div><div className="success-sub">Our team will contact you within 24 hours with pricing and shipping costs to your country.</div><button className="order-btn" style={{ marginTop: 24 }} onClick={onClose}>Back to Products</button></div>
                            ) : (
                                <>
                                    <div className="info-banner">💡 Pricing is provided on request — shipping cost calculated based on your country and quantity.</div>
                                    <div className="form-group">
                                        <label className="form-label">Order by</label>
                                        <div className="radio-group">
                                            <div className={`radio-opt ${orderType === "kg" ? "active" : ""}`} onClick={() => setOrderType("kg")}><div className="ro-icon">⚖️</div><div className="ro-label">Weight (kg)</div><div style={{ fontSize: 11, color: "#666", marginTop: 2 }}>Min. 1,000 kg</div></div>
                                            <div className={`radio-opt ${orderType === "m2" ? "active" : ""}`} onClick={() => setOrderType("m2")}><div className="ro-icon">📐</div><div className="ro-label">Area (m²)</div><div style={{ fontSize: 11, color: "#666", marginTop: 2 }}>Converted automatically</div></div>
                                        </div>
                                    </div>
                                    <div className="form-group">
                                        <label className="form-label"><span className="req">*</span> Quantity {isKg ? "(kg — min. 1,000 kg / 1 tonne)" : "(m²)"}</label>
                                        <input className="form-input" type="number" value={qty} onChange={e => setQty(e.target.value)} placeholder={isKg ? "1000" : "500"} min={isKg ? 1000 : 1} />
                                        {isKg && qtyNum > 0 && qtyNum < 1000 && <div style={{ color: "#e53e3e", fontSize: 12, marginTop: 4 }}>⚠️ Minimum order is 1,000 kg (1 tonne)</div>}
                                    </div>
                                    <div className="form-row">
                                        <div className="form-group"><label className="form-label"><span className="req">*</span> Full Name</label><input className="form-input" value={name} onChange={e => setName(e.target.value)} placeholder="John Smith" /></div>
                                        <div className="form-group"><label className="form-label"><span className="req">*</span> Country</label><input className="form-input" value={country} onChange={e => setCountry(e.target.value)} placeholder="Germany" /></div>
                                    </div>
                                    <div className="form-group">
                                        <label className="form-label"><span className="req">*</span> Contact Method (at least one)</label>
                                        <div className="radio-group" style={{ marginBottom: 12 }}>
                                            <div className={`radio-opt ${contactType === "phone" ? "active" : ""}`} onClick={() => setContactType("phone")}><div className="ro-icon">📱</div><div className="ro-label">Phone / WhatsApp</div></div>
                                            <div className={`radio-opt ${contactType === "email" ? "active" : ""}`} onClick={() => setContactType("email")}><div className="ro-icon">📧</div><div className="ro-label">Email</div></div>
                                        </div>
                                        {contactType === "phone" ? (
                                            <div className="phone-row"><select className="form-input" value={phoneCode} onChange={e => setPhoneCode(e.target.value)}>{COUNTRY_CODES.map(c => <option key={c.code} value={c.code}>{c.country} ({c.code})</option>)}</select><input className="form-input" type="tel" value={phone} onChange={e => setPhone(e.target.value)} placeholder="5XXXXXXXX" style={{ flex: 1 }} /></div>
                                        ) : (
                                            <input className="form-input" type="email" value={email} onChange={e => setEmail(e.target.value)} placeholder="you@company.com" />
                                        )}
                                    </div>
                                    <div className="form-group"><label className="form-label">Additional Notes (optional)</label><textarea className="form-input" rows={3} value={notes} onChange={e => setNotes(e.target.value)} placeholder="Specific requirements, application details, delivery timeline..." style={{ resize: "vertical" }} /></div>
                                    {error && <div style={{ color: "#e53e3e", fontSize: 13, marginBottom: 10 }}>{error}</div>}
                                    <button className="submit-btn" disabled={!valid || loading} onClick={handleSubmit}>{loading ? "⏳ Sending..." : "Send Quote Request →"}</button>
                                </>
                            )}
                        </div>
                    </div>
                </div>
            );
        }

        function AdminLogin({ pass, setPass, onLogin, error }) {
            return (
                <div style={{ minHeight: "80vh", background: "#f0f4f0", display: "flex", alignItems: "center", justifyContent: "center" }}>
                    <div className="login-box">
                        <div className="login-header"><div style={{ fontSize: 40 }}>🔐</div><h2>Admin Dashboard</h2><p style={{ opacity: 0.7, fontSize: 13, marginTop: 4 }}>Enter password to access</p></div>
                        <div className="login-body">
                            <div className="form-group"><label className="form-label">Password</label><input className="form-input" type="password" value={pass} onChange={e => setPass(e.target.value)} onKeyDown={e => e.key === "Enter" && onLogin()} placeholder="••••••••" /></div>
                            {error && <div style={{ color: "#e53e3e", fontSize: 13, marginTop: 6 }}>❌ Incorrect password</div>}
                            <button className="submit-btn" onClick={onLogin}>Login →</button>
                            <div style={{ fontSize: 11, color: "#888", textAlign: "center", marginTop: 12 }}>Default: geomat2024</div>
                        </div>
                    </div>
                </div>
            );
        }

        function AdminDashboard({ onBack }) {
            const [orders, setOrders] = useState([]);
            const [visits, setVisits] = useState({ total: 0 });
            const [loading, setLoading] = useState(true);

            useEffect(() => {
                (async () => {
                    const [o, v] = await Promise.all([getOrders(), getVisits()]);
                    setOrders(o); setVisits(v); setLoading(false);
                })();
            }, []);

            const today = new Date().toDateString();
            const todayOrders = orders.filter(o => new Date(o.date).toDateString() === today).length;
            const todayVisits = visits.log ? visits.log.filter(d => new Date(d).toDateString() === today).length : 0;

            return (
                <div className="admin-container">
                    <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 24 }}>
                        <h2 style={{ color: "#1b4332", fontSize: 22, fontWeight: 800 }}>📊 Admin Dashboard</h2>
                        <button className="nav-btn" style={{ background: "#1b4332", color: "white", borderColor: "#1b4332" }} onClick={onBack}>← Back to Site</button>
                    </div>
                    {loading ? <div style={{ textAlign: "center", padding: 40, color: "#666" }}>⏳ Loading...</div> : (
                        <>
                            <div className="admin-card">
                                <div className="admin-card-header">📈 Overview</div>
                                <div className="admin-card-body">
                                    <div className="stats-row">
                                        <div className="stat-box"><div className="sn">{visits.total || 0}</div><div className="sl">Total Visits</div></div>
                                        <div className="stat-box"><div className="sn">{todayVisits}</div><div className="sl">Visits Today</div></div>
                                        <div className="stat-box"><div className="sn">{orders.length}</div><div className="sl">Total Inquiries</div></div>
                                        <div className="stat-box"><div className="sn">{todayOrders}</div><div className="sl">Inquiries Today</div></div>
                                        <div className="stat-box"><div className="sn">{orders.length > 0 ? orders.reduce((s, o) => s + (parseFloat(o.qty) || 0), 0).toLocaleString() : 0}</div><div className="sl">Total Qty Requested</div></div>
                                        <div className="stat-box"><div className="sn">{orders.length > 0 ? [...new Set(orders.map(o => o.country).filter(Boolean))].length : 0}</div><div className="sl">Countries</div></div>
                                    </div>
                                </div>
                            </div>
                            <div className="admin-card">
                                <div className="admin-card-header">📦 Inquiries & Orders ({orders.length})</div>
                                <div className="admin-card-body">
                                    {orders.length === 0 ? <div style={{ textAlign: "center", padding: 32, color: "#888" }}>No inquiries yet</div> :
                                        orders.map((o, i) => (
                                            <div key={i} className="order-item">
                                                <div className="order-top"><div className="order-name">#{orders.length - i} — {o.name}</div><div className="order-date">{new Date(o.date).toLocaleString("en-GB")}</div></div>
                                                <div className="order-detail">
                                                    <span><strong>Product:</strong> {o.product}</span>
                                                    <span><strong>Country:</strong> {o.country}</span>
                                                    {o.qty > 0 && <span><strong>Quantity:</strong> {o.qty?.toLocaleString()} {o.unit}</span>}
                                                    {o.orderType && <span><strong>Type:</strong> {o.orderType}</span>}
                                                    <span><strong>Contact:</strong> <a href={o.contactType === "email" ? `mailto:${o.contact}` : `https://wa.me/${o.contact?.replace(/\D/g, "")}`} target="_blank" rel="noreferrer" style={{ color: "#2d6a4f", fontWeight: 600 }}>{o.contact}</a></span>
                                                    {o.notes && <span style={{ gridColumn: "span 2" }}><strong>Notes:</strong> {o.notes}</span>}
                                                </div>
                                            </div>
                                        ))
                                    }
                                </div>
                            </div>
                            <div className="admin-card">
                                <div className="admin-card-header">👁️ Recent Visits</div>
                                <div className="admin-card-body">
                                    {(!visits.log || visits.log.length === 0) ? <div style={{ textAlign: "center", color: "#888", padding: 20 }}>No data yet</div> :
                                        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(220px, 1fr))", gap: 8 }}>
                                            {visits.log.slice(0, 30).map((d, i) => <div key={i} style={{ background: "#f5f9f6", borderRadius: 8, padding: "8px 12px", fontSize: 12, color: "#4a6355" }}>🕐 {new Date(d).toLocaleString("en-GB")}</div>)}
                                        </div>
                                    }
                                </div>
                            </div>
                        </>
                    )}
                </div>
            );
        }

        // ---- تشغيل التطبيق ----
        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
    </script>
</body>
</html>index.html