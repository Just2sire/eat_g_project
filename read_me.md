# Projet Eat-G

## Description

**Introduction**

...

## Installation



## Utilisation

## Points importans

- Le projet Eat-G va se baser sur une architecture Feature Driven (Feature First)
    Dans le lib, on aura principalement deux dossiers:
     1. **core/** : contient les éléments généraux du projet
     2. **features/** : contient les fonctionnalités du projet (Auth, ...)

     [Confère ce lien pour plus d'infos](https://github.com/bizz84/flutter-tips-and-tricks/blob/main/tips/0039-flutter-project-structure-feature-first-or-layer-first/index.md)

- Pour la navigation dans le projet, le package [go_router](https://pub.dev/packages/go_router) est utilisé permettant de facilement gérer
    la navigation à partir du context (context.go, context.push, context.pop,...) et de regrouper nos routes dans un seul fichier (/lib/routes/routes.dart).

- Pour la gestion d'état général de l'app, le package [provider](https://pub.dev/packages/provider) est utilisé

- Pour la gestion des variables d'environnement, le package [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) est utilisé

- En vue, de faciliter l'accès à certains éléments, une extension sur le BuildContext a été mis en place dans le fichier /lib/utils/build_context_extension.dart ce.
    Avec celà, on pourra utiliser le context.heigth et context.width pour accéder aux dimensions de l'écran...
    Plus d'infos sur les extensions en lisant cet [article Linkedin](https://www.linkedin.com/posts/desir%C3%A9-kossi-122675218_bonjour-%C3%A0-tous-je-vous-pr%C3%A9sente-aujourdhui-activity-7151162904015233024-xbhZ?utm_source=share&utm_medium=member_desktop)

- Pour le theming dans l'app, un dossier theme a été mis en place dans le lib/core/. Ce dossier contiendra les différents thèmes de l'app   notemmment le ligt_theme qui est déjà en place et le dark à venir.




...

## Licence

...
