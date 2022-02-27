## About Project

A tesztfeladatot Laravel keretrendszer segítségével oldottam meg a design kialakításánál Bootstrap 5-öt és SASS-t használtam. XAMPP webszervert használtam az adatbázis MySQL. Az Blog és a Cimke adatok generálásához szükség van a php artisan migrate:fresh --seed parancsra. Ezzel legenerálunk 50 bejegyzést és 10 címkét. Az adatbázis neve: "tesztfeladat" karakterkódolása utf8_general_ci. Egy adatbázismentést elhelyeztem a public mappában tesztfeladat.sql a fájl neve(ez fel van töltve adatokkal). Természetesen új ,üres adatbázissal is működik a seed után. Ha üres adatbázissal indítjuk a seedelés után szükséges megnyomni a navigációs menüben a Címkék hozzáadása gombot, hogy a blogokat összekössük véletlenszerűen a címkékkel (ezt egyszer lehet elvégezni, utána minden tételnél egyesével van lehetőség a címkéket módosítani). A blogok menüpont alatt jelennek meg az adatok. Itt lehet módosítani, törölni, megtekinteni az egyes bejegyzéseket. Módosításkor lehetőség van a címkék módosítására és igény szerint új címke hozzáadása is lehetséges. A Blogok oldalon lehet címkére szűrni (akár egyszerre többet is ki lehet választani). Illetve lehetőség van dátum szerint növekvő, illetve csökkenő sorrendbe rendezni az adatokat. Új tételt is innen lehet felvinni az Új hozzáadása gombbal. Minden adat kitöltése kötelező a név és a cím 255 karakterben van maximalizálva, ha valami nem jó akkor hibaüzenetben tájékoztat minket, illetve sikeres rögzítés. módosítás után is üzenetet kapunk a folyamat sikerességéről. Az adatokat pagination segítségével jeleníti meg egyszerre 6 tétel van egy lapon. Szűrés illetve rendezés után kiírja hogy mi szerint van rendezve vagy szűrve. Szűrésnél a találati db-számot is kiírja.


<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 2000 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[OP.GG](https://op.gg)**
- **[WebReinvent](https://webreinvent.com/?utm_source=laravel&utm_medium=github&utm_campaign=patreon-sponsors)**
- **[Lendio](https://lendio.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
