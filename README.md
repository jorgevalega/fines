# FinEs – Tu asistente financiero personal

FinEs es una aplicación web gratuita pensada para facilitar la gestión financiera personal de cualquier usuario, desde cualquier dispositivo. Con un enfoque simple, visual y modular, permite registrar ingresos, egresos, pagos mensuales y gastos fijos.

## 🚀 Funcionalidades iniciales

- Registro mensual de ingresos y egresos
- Indicadores visuales por mes (🟥 rojo, 🟨 amarillo, 🟩 verde)
- Calendario de pagos futuros y recurrentes
- Notificaciones de pagos (a implementar)
- Clasificación de gastos fijos por categorías
- Acceso con e-mail o cuenta de Google
- Interfaz responsive (mobile-friendly)

## 🧱 Tecnologías utilizadas

- 🔙 Backend: Python + Flask
- 💽 Base de datos: MariaDB
- 🌐 Frontend: HTML + Bootstrap
- 🔐 Autenticación: OAuth + correo (próximamente)
- ☁️ Hosting: DirectAdmin + Passenger (CrocWeb)

## 📂 Estructura

FinEs/
├── backend/
│   ├── app.py              ← Flask con base de rutas
│   ├── db.py               ← Conexión MariaDB
│   └── models.py           ← Clases y helpers
├── frontend/
│   ├── static/
│   │   └── css/
│   └── templates/
│       ├── index.html      ← Vista de inicio
│       ├── login.html      ← Login con Google/email (visual)
│       └── dashboard.html  ← Panel básico de finanzas
├── database/
│   └── esquema.sql         ← Script SQL para crear la base
├── .env.example            ← Variables: DB, Google OAuth, etc.
├── requirements.txt        ← Dependencias Python
└── README.md               ← Instrucciones completas (en español)

## ⚙️ Instalación local

```bash
git clone https://github.com/jorgevalega/fines.git
cd fines
python -m venv venv
source venv/bin/activate  # o venv\Scripts\activate en Windows
pip install -r requirements.txt
cp .env.example .env
# Ajusta las variables de entorno
```
