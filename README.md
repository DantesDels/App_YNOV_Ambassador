# 📱 App YNOV Ambassador (CampusPulse) — Application BDE & BDS

Application mobile cross-platform (Android / iOS) développée en **Flutter** (IDE Android Studio recommandé pour émuler facilement la preview de l'application) destinée aux étudiants du campus. Elle centralise l'ensemble des événements organisés par le **BDE** (soirées, culture, intégration) et le **BDS** (sport, tournois, compétitions), gère la tarification dynamique selon le statut cotisant, et intègre des mécaniques d'inscriptions en cascade (preuve sociale, liste d'amis inscrits, invitations par Deep Links).

---

## 🌿 Stratégie des Branches Git

Ce dépôt utilise une séparation stricte entre la phase d'expérimentation et la mise en production :

| Branche | Rôle | État |
| :--- | :--- | :--- |
| **`master`** | **Prototype & Maquettage** — Développement des fonctionnalités principales, tests d'architecture, validation UX/UI et intégrations initiales. | 🚧 En cours |
| **`main`** | **Version Finale (Production)** — Version stable, auditée, sécurisée et prête au déploiement sur les stores (Google Play / App Store). | 🔒 Réservée |

> **Règle de contribution :** Tout développement courant et toute nouvelle fonctionnalité (features) doivent être mergés sur `master` durant la phase de prototypage. La branche `main` ne recevra que le code validé pour la release finale.

---

## ✨ Fonctionnalités Principales

* **🔐 Authentification Étudiante (`auth`) :** Connexion restreinte aux adresses emails institutionnelles vérifiées de l'école (OTP / SSO) avec stockage chiffré des jetons JWT.
* **📅 Feed Événements BDE & BDS (`events`) :**
  * Filtres rapides : *Tout*, *BDE*, *BDS*, *Mes potes y vont*.
  * Jauges de capacité en temps réel et alertes de rareté (*Early Bird*).
  * Tarification dynamique appliquée automatiquement selon les adhésions (*Cotisant BDE* / *Cotisant BDS*).
* **🔥 Mécaniques Sociales & Cascade (`social`) :**
  * Affichage des amis déjà inscrits sur chaque événement et fil d'activité en direct.
  * Bouton **"Chauffer mes potes"** générant un lien profond (`Deep Link`) de parrainage et une notification ciblée.
  * Ajout d'amis rapide via scan de QR Code étudiant.
* **🎟️ Billetterie & Redirection Linktree (`ticketing`) :**
  * Redirection sécurisée vers les billetteries officielles du BDE et du BDS hébergées sur leur **Linktree** (via *In-App Custom Tabs*).
  * Portefeuille numérique hors-ligne permettant d'importer (PDF / scan QR) et d'afficher ses billets à luminosité maximale à l'entrée des événements.

---

## 🏗️ Architecture Technique

Le projet suit une approche **Feature-First + Clean Architecture** respectant strictement le principe de responsabilité unique (SRP) :

```
lib/
├── core/
│   ├── constants/      # Constantes globales, endpoints API et domaines Linktree autorisés
│   ├── errors/         # Exceptions et Failures typées (Sealed classes)
│   ├── mock/           # Jeux de données simulées pour le prototypage (branche master)
│   ├── network/        # Configuration client HTTP (Dio) et intercepteurs JWT
│   ├── router/         # Configuration GoRouter & gestion des Deep Links
│   ├── security/       # Stockage chiffré (SecureStorage) et validation de sessions
│   ├── theme/          # Palette de couleurs, typographie et thème global
│   ├── utils/          # Helpers, validateurs (email école) et formateurs de dates
│   └── widgets/        # Composants UI génériques réutilisables dans toute l'app
├── features/
│   ├── auth/           # Authentification étudiante & vérification domaine
│   ├── events/         # Catalogue BDE/BDS, filtres & fiches détaillées
│   ├── profile/        # Gestion des statuts cotisants & alertes FOMO
│   ├── social/         # Graphe d'amis, Deep Links & invitations en cascade
│   └── ticketing/      # Redirection Linktree & portefeuille de billets hors-ligne
├── app.dart            # Widget racine (MaterialApp.router, ProviderScope, thème)
└── main.dart           # Point d'entrée de l'application et initialisation des services
```

### Stack & Dépendances clés
* **Framework :** Flutter / Dart
* **State Management & DI :** `flutter_riverpod` (`riverpod_annotation`)
* **Navigation & Deep Links :** `go_router`
* **Modèles immuables :** `freezed` + `json_serializable`
* **Réseau & Sécurité :** `dio`, `flutter_secure_storage`, `flutter_custom_tabs`
* **Billetterie & Scan :** `qr_flutter`, `mobile_scanner`, `screen_brightness`

---

## 🚀 Installation & Lancement (Android Studio)

### Prérequis
* **Flutter SDK** (canal `stable`)
* **Android Studio** avec **JDK 21** configuré
* Un émulateur Android ou un appareil physique avec le débogage USB activé

### 1. Cloner le dépôt (branche prototype)
```bash
git clone -b master [https://github.com/DantesDels/App_YNOV_Ambassador.git](https://github.com/DantesDels/App_YNOV_Ambassador.git)
cd App_YNOV_Ambassador
```

### 2. Installer les dépendances & générer le code
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### 3. Lancer l'application avec les variables d'environnement
Aucune clé API ou URL sensible n'est stockée en dur dans le code. Lancez l'application en passant les paramètres via `--dart-define` (ou configurez-les dans **Edit Configurations > Additional run args** sur Android Studio) :

```bash
flutter run --dart-define=API_BASE_URL=[https://api.exemple.fr](https://api.exemple.fr) --dart-define=ALLOWED_LINKTREE_DOMAIN=linktr.ee
```

---

## 🔒 Sécurité & Bonnes Pratiques

* **Stockage sécurisé :** Les jetons d'authentification et billets locaux sont chiffrés via le *Keystore* Android et le *Keychain* iOS (`flutter_secure_storage`).
* **Navigation externe contrôlée :** Seuls les domaines officiels du BDE et du BDS sont autorisés lors de l'ouverture des liens de billetterie.
* **Confidentialité (RGPD) :** Chaque étudiant peut masquer sa participation sur un événement spécifique depuis la fiche détail.
