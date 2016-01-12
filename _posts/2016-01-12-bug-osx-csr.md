---
title: Bug OSX / Keychain pour un CSR
---

Un développeur voulant faire quoi que ce soit auprès d'Apple (mettre en ligne une app, faire du push, vendre des <acronym title="In-app Purchase">IAP</acronym>) doit passer par la création d'un certificat. Pour obtenir un certificat auprès d'Apple, il faut leur envoyer une <acronym title="Certificate Signing Request">CSR</acronym>. Pour créer une CSR, il faut passer par l'application «Trousseau d'accès» (ou les lignes de commandes correspondantes).

![Le Trousseau d'Accès]({{site.baseurl}}/images/bug_osx_keychain.png)

DONC si vous ne pouvez pas créer de CSR, vous n'avez pas de certificat et donc ni app, ni push ni quoi que ce soit chez Apple... Et devinez qui se bat depuis ce matin pour créer une **put_!&** de **me$@!** de CSR de mes deux ?

J'ai du en créer une bonne centaine (au bas mot) depuis que je dev sur Mac. C'est du clicodrome. C'est pas possible de se tromper. Du coup, bon, sépamafote, certes, mais du coup, ça sent l'épandage de merde dans le ventilo **à la tonne**.

La console me donne des messages d'erreur du style

    Certificate Assistant[3118]: assertion failed: 15C50: libxpc.dylib + 63930 [61AB4610-9304-354C-9E9B-D57198AE9866]: 0x89

ou

    Certificate Assistant[3118]: _createKeyPair : -[SFModVector createKeyPair] failed with -25295

mais encore:

    Certificate Assistant[3118]: BUG in libdispatch client: kevent[EVFILT_MEMORYSTATUS] add: "Operation not supported" - 0x2d

alors que `certtool c` (préliminaire à `certtool r`) me donne plutôt du :

    CSSM_GenerateKeyPair: CSSMERR_DL_DATABASE_CORRUPT

Oh, et **juste pour le fun**, les forums recommandent d'utiliser le «Keychain Firs Aid» dans le menu de l'application. Si vous re-jeter un coup d'œil à la copie d'écran en tête de ce billet, vous comprendrez à quel point ma matinée a été **lolesque**.

![Le First Aid du menu]({{site.baseurl}}/images/bug_osx_keychain_2.png)


Si par pur hasard, une âme charitable passait par là avec la solution, je donnerai son prénom à mon premier enfant. Merci de votre attention
