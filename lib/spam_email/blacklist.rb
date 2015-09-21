module SpamEmail
  BLACKLIST = Set.new [
      '027168.com',
      '0815.ru',
      '0815.su',
      '0clickemail.com',
      '0-mail.com',
      '0wnd.net',
      '0wnd.org',
      '10mail.org',
      '10minutemail.com',
      '10minutemail.co.uk',
      '10minutemail.co.za',
      '10minutemail.eu',
      '10minutemail.info',
      '10minutemail.net',
      '10minutemail.org',
      '10minutemail.us',
      '10x9.com',
      '126.com',
      '12houremail.com',
      '12minutemail.com',
      '1337-crew.to',
      '1337.no',
      '139.com',
      '163.com',
      '188.com',
      '1pad.de',
      '2012pollingstatistics.com',
      '2015.temporarily.de',
      '2016.temporarily.de',
      '2017.temporarily.de',
      '2018.temporarily.de',
      '2019.temporarily.de',
      '20mail.in',
      '20mail.it',
      '20minutemail.com',
      '21cn.com',
      '21cn.net',
      '2prong.com',
      '30minutemail.com',
      '30minutenmail.eu',
      '30minutesmail.com',
      '33mail.com',
      '3dayemail.com',
      '3dl.am',
      '3d-painting.com',
      '4warding.com',
      '4warding.net',
      '4warding.org',
      '60minutemail.com',
      '60-minuten-mail.de',
      '6ip.us',
      '6paq.com',
      '6url.com',
      '7tags.com',
      '8127ep.com',
      '9ox.net',
      'a45.in',
      'abcmail.email',
      'a-bc.net',
      'abusemail.de',
      'abyssmail.com',
      'adiaq.com',
      'adresseemailtemporaire.com',
      'advertfast.com',
      'afrobacon.com',
      'agedmail.com',
      'ahsa.ws',
      'aichyna.com',
      'ajman.us',
      'ajman.ws',
      'akapost.com',
      'akerd.com',
      'alex4all.com',
      'alivance.com',
      'ama-trade.de',
      'ama-trans.de',
      'amilegit.com',
      'anappfor.com',
      'anappthat.com',
      'anhorn.de',
      'ano-mail.net',
      'anonbox.net',
      'anon-mail.de',
      'anonmail.de',
      'anonmails.de',
      'anon-me.de',
      'anonymbox.com',
      'anonym.email',
      'anonymous-email.net',
      'anonymousfeedback.net',
      'anonymousmail.de',
      'anonymousspeech.com',
      'anotherdomaincyka.tk',
      'ano.to',
      'antichef.com',
      'antichef.net',
      'antireg.ru',
      'antispam24.de',
      'antispam.de',
      'antispammail.de',
      'arar.ws',
      'armyspy.com',
      'asdasd.ru',
      'atrais-kredits24.com',
      'au.ru',
      'automotivetechstore.com',
      'autorambler.ru',
      'axe.axeprim.eu',
      'azazazatashkent.tk',
      'b2cmail.de',
      'bankronym.com',
      'baseoftrash.de',
      'bccto.me',
      'beefmilk.com',
      'berahe.info',
      'bi-dating.info',
      'bigmir.net',
      'binkmail.com',
      'bio-muesli.info',
      'bio-muesli.net',
      'bk.ru',
      'blackmarket.to',
      'bladesmail.net',
      'blida.info',
      'bobmail.info',
      'bodhi.lawlita.com',
      'bofthew.com',
      'bookee.com',
      'bootybay.de',
      'boximail.com',
      'box.yadavnaresh.com.np',
      'breakthru.com',
      'brefmail.com',
      'brennendesreich.de',
      'broadbandninja.com',
      'bsnow.net',
      'bspamfree.org',
      'buffemail.com',
      'bugmenever.com',
      'bugmenot.com',
      'bumpymail.com',
      'bundes-li.ga',
      'bund.us',
      'burstmail.info',
      'bymail.org',
      'byom.de',
      'cachedot.net',
      'cam4you.cc',
      'card.zp.ua',
      'casema.org',
      'cash.com',
      'cashette.com',
      'ccatv.org',
      'ccxt.info',
      'cdnqa.com',
      'cellurl.com',
      'centermail.com',
      'centermail.net',
      'chacuo.net',
      'chammy.info',
      'chcb.info',
      'cheatmail.de',
      'checknew.pw',
      'chogmail.com',
      'ckaazaza.tk',
      'ckiso.com',
      'clrmail.com',
      'coldemail.info',
      'consumerriot.com',
      'cookiecooker.de',
      'cool.fr.nf',
      'correo10.com',
      'cosmorph.com',
      'courriel.fr.nf',
      'courrieltemporaire.com',
      'crapmail.org',
      'cubiclink.com',
      'curryworld.de',
      'cust.in',
      'cuvox.de',
      'dacoolest.com',
      'dandikmail.com',
      'dasdasdascyka.tk',
      'dayrep.com',
      'dbunker.com',
      'deadaddress.com',
      'deadspam.com',
      'deagot.com',
      'dealja.com',
      'delikkt.de',
      'despam.it',
      'despammed.com',
      'devnullmail.com',
      'dfgh.net',
      'diablo-hell.de',
      'dingbone.com',
      'discard.email',
      'discardmail.com',
      'discardmail.de',
      'disposableaddress.com',
      'disposableinbox.com',
      'disposeamail.com',
      'disposemail.com',
      'dispostable.com',
      'divermail.com',
      'docmail.cz',
      'dodgeit.com',
      'dodgemail.de',
      'dodgit.com',
      'dodgit.org',
      'dodsi.com',
      'doiea.com',
      'domain141.com',
      'donemail.ru',
      'dontassrape.us',
      'dontreg.com',
      'dontsendmespam.de',
      'dotman.de',
      'drdrb.com',
      'drdrb.net',
      'drisd.com',
      'dropcake.de',
      'dropmail.me',
      'dspsbl.com',
      'dudmail.com',
      'dump-email.info',
      'dumpmail.de',
      'dumpyemail.com',
      'duskmail.com',
      'dyndns.org',
      'e4ward.com',
      'easy.com',
      'easytrashmail.com',
      'ebano.campano.cl',
      'edv.to',
      'eelmail.com',
      'einmalmail.de',
      'einrot.com',
      'eintagsmail.de',
      'email60.com',
      'emaildienst.de',
      'emailgo.de',
      'emailias.com',
      'emailigo.de',
      'emailinfive.com',
      'emaillime.com',
      'emailmiser.com',
      'emailsensei.com',
      'emailtemporanea.com',
      'emailtemporanea.net',
      'emailtemporario.com.br',
      'emailwarden.com',
      'emailx.at.hm',
      'emoj.net',
      'empiremail.de',
      'epost4you.de',
      'e-postkasten.com',
      'e-postkasten.de',
      'e-postkasten.eu',
      'e-postkasten.info',
      'eqeqeqeqe.tk',
      'ero-tube.org',
      'europe.com',
      'explodemail.com',
      'express.net.ua',
      'eyepaste.com',
      'facebook.com',
      'fake-box.com',
      'fakedemail.com',
      'fakeinbox.com',
      'fakeinbox.net',
      'fakeinbox.org',
      'fakeinformation.com',
      'fakemail24.de',
      'fakemail.fr',
      'fakemailgenerator.com',
      'fanaticars.info',
      'fansworldwide.de',
      'fastacura.com',
      'fastchevy.com',
      'fastchrysler.com',
      'fastkawasaki.com',
      'fastmazda.com',
      'fastmitsubishi.com',
      'fastnissan.com',
      'fastsubaru.com',
      'fastsuzuki.com',
      'fasttoyota.com',
      'fastyamaha.com',
      'faza.ru',
      'fiifke.de',
      'fillpress.com',
      'film-blog.biz',
      'filzmail.com',
      'find-love.info',
      'fivemail.de',
      'fizmail.com',
      'fleckens.hu',
      'flitafir.de',
      'flurred.com',
      'flyspam.com',
      'fly-ts.de',
      'for-fun.info',
      'fornow.eu',
      'foteret.info',
      'foxmail.com',
      'fr33mail.info',
      'frapmail.com',
      'freefreemail.info',
      'freemail.ms',
      'freespambox.com',
      'freestuffo1.com',
      'freestuffo2.com',
      'freestuffo3.com',
      'freestuffo4.com',
      'freundin.ru',
      'fromru.com',
      'fromru.ru',
      'front14.org',
      'front.ru',
      'fudgerub.com',
      'fujairah.us',
      'fujairah.ws',
      'fyii.de',
      'gaf.oseanografi.id',
      'garbagemail.org',
      'garliclife.com',
      'gawab.com',
      'gehensiemirnichtaufdensack.de',
      'geschenkt.biz',
      'geschent.biz',
      'get1mail.com',
      'get2mail.fr',
      'getairmail.com',
      'getmails.eu',
      'getonemail.com',
      'getonemail.net',
      'getstarter.com',
      'ghosttexter.de',
      'giantmail.de',
      'gishpuppy.com',
      'glumplich.de',
      'goeqa.com',
      'gold2world.biz',
      'gold-profits.info',
      'golfilla.info',
      'gomail.in',
      'googdad.tk',
      'go.ru',
      'grandmamail.com',
      'grandmasmail.com',
      'great-host.in',
      'greensloth.com',
      'grifon.info',
      'grr.la',
      'guerillamail.biz',
      'guerillamail.com',
      'guerillamail.net',
      'guerillamail.org',
      'guerrillamail.biz',
      'guerrillamailblock.com',
      'guerrillamail.com',
      'guerrillamail.de',
      'guerrillamail.info',
      'guerrillamail.net',
      'guerrillamail.org',
      'gustr.com',
      'hacker.tl',
      'haltospam.com',
      'halyava.ru',
      'haqed.com',
      'harakirimail.com',
      'hartbot.de',
      'hasakah.com',
      'hat-geld.de',
      'hebron.tv',
      'hidemail.de',
      'hidemyass.com',
      'hidzz.com',
      'hinet.net',
      'hmamail.com',
      'hochsitze.com',
      'homedns.org',
      'hotbox.ru',
      'hotmail.ru',
      'hotpop.com',
      'hulapla.de',
      'humaility.com',
      'humality.com',
      'hush.ai',
      'hush.com',
      'hushmail.com',
      'hushmail.me',
      'id.ru',
      'ieatspam.eu',
      'ieatspam.info',
      'ieh-mail.de',
      'iespana.es',
      'ignoremail.com',
      'image-space.biz',
      'imails.info',
      'imgof.com',
      'inboxalias.com',
      'inboxclean.com',
      'inboxclean.org',
      'inboxed.im',
      'inboxed.pw',
      'inbox.ru',
      'inbox.si',
      'inboxstore.me',
      'incognitomail.com',
      'incognitomail.net',
      'incognitomail.org',
      'infocom.zp.ua',
      'ingetspam.com',
      'inmynetwork.cf',
      'inmynetwork.ga',
      'inmynetwork.gq',
      'inmynetwork.ml',
      'inmynetwork.tk',
      'inoutmail.de',
      'inoutmail.eu',
      'inoutmail.info',
      'inoutmail.net',
      'insorg-mail.info',
      'instant-mail.de',
      'ip2nation.com',
      'ip6.li',
      'ipoo.org',
      'irbid.ws',
      'irish2me.com',
      'irishspringrealty.com',
      'is.af',
      'islammail.net',
      'isuisse.com',
      'ivym.de',
      'jadida.org',
      'jetable.com',
      'jetable.fr.nf',
      'jetable.net',
      'jetable.org',
      'jetpunk.de',
      'jnxjn.com',
      'jobbikszimpatizans.hu',
      'jourrapide.com',
      'junk1e.com',
      'junkmaniac.info',
      'junk.to',
      'kaktusmail.de',
      'kasmail.com',
      'keemail.me',
      'keepmymail.com',
      'key-mail.net',
      'kiois.com',
      'klzlk.com',
      'kmhow.com',
      'kokusu.net',
      'korsun.pp.ru',
      'kostenlosemailadresse.de',
      'koszmail.pl',
      'kuh.mu',
      'kulturbetrieb.info',
      'kurzepost.de',
      'kuwaiti.tv',
      'l33r.eu',
      'labetteraverouge.at',
      'lackmail.net',
      'lags.us',
      'landmail.co',
      'land.ru',
      'lastmail.co',
      'lawlita.com',
      'lenta.ru',
      'less.b0ne.com',
      'less.ns0.it',
      'letthemeatspam.com',
      'lhsdv.com',
      'lifebyfood.com',
      'link2mail.net',
      'linuxmail.so',
      'list.ru',
      'litedrop.com',
      'livedoor.com',
      'llogin.ru',
      'loadby.us',
      'loblaw.twilightparadox.com',
      'localhost',
      'localhost.com',
      'localhost.localdomain',
      'localhost.net',
      'localhost.org',
      'lolfreak.net',
      'lolitka.cf',
      'lolitka.ga',
      'lolitka.gq',
      'lolito.tk',
      'lookugly.com',
      'losemymail.com',
      'lr78.com',
      'lubnan.ws',
      'luckymail.org',
      'm21.cc',
      'm4ilweb.info',
      'mail15.com',
      'mail1a.de',
      'mail21.cc',
      'mail2tor.com',
      'mail333.com',
      'mail4trash.com',
      'mail.bccto.me',
      'mailbiz.biz',
      'mail.by',
      'mailcatch.com',
      'mailde.de',
      'mailde.info',
      'maildrop.cc',
      'maileater.com',
      'maileimer.de',
      'mailexpire.com',
      'mailfish.de',
      'mailforspam.com',
      'mailfreeonline.com',
      'mailgate.ru',
      'mailin8r.com',
      'mailinater.com',
      'mailinator2.com',
      'mailinator99.com',
      'mailinator.com',
      'mailinator.net',
      'mailincubator.com',
      'mailismagic.com',
      'mail-it24.com',
      'mailita.tk',
      'mailme24.com',
      'mailme.ir',
      'mailme.lv',
      'mailmetrash.com',
      'mailmoat.com',
      'mailms.com',
      'mailnator.com',
      'mailnesia.com',
      'mailnull.com',
      'mailorg.org',
      'mail.ru',
      'mailscrap.com',
      'mailseal.de',
      'mailshell.com',
      'mailslite.com',
      'mailswift.net',
      'mailtemp.info',
      'mail-temporaire.fr',
      'mailtome.de',
      'mailtor.net',
      'mailtothis.com',
      'mailtrash.net',
      'mailtv.net',
      'mailtv.tv',
      'mailzilla.com',
      'mailzilla.org',
      'mail.zp.ua',
      'makemetheking.com',
      'malahov.de',
      'manifestgenerator.com',
      'mansoura.tv',
      'marketingops.com',
      'marsmail.de',
      'marsmail.eu',
      'mascara.ws',
      'masterhost.ru',
      'mbx.cc',
      'mega.yt',
      'mega.zik.dj',
      'meltmail.com',
      'messagebeamer.de',
      'mezimages.net',
      'mickey1a.com',
      'mierdamail.com',
      'migmail.pl',
      'minelab.ru',
      'ministry-of-silly-walks.de',
      'mintemail.com',
      'misterpinball.de',
      'moburl.com',
      'moncourrier.fr.nf',
      'monemail.fr.nf',
      'monmail.fr.nf',
      'monumentmail.com',
      'moyareklama.ru',
      'msa.minsmail.com',
      'mt2009.com',
      'mt2014.com',
      'muell.email',
      'mufmail.com',
      'muscat.tv',
      'muscat.ws',
      'muuh.info',
      'muzikutusu.com',
      'mx0.www.new.eu',
      'my10minutemail.com',
      'mycard.net.ua',
      'mycleaninbox.net',
      'my-inbox.in',
      'mynetstore.de',
      'mynetwork.cf',
      'mypartyclip.de',
      'myphantomemail.com',
      'myrambler.ru',
      'mysamp.de',
      'mytempemail.com',
      'mytempmail.com',
      'mytrashmail.com',
      'my.vondata.com.ar',
      'myxost.com',
      'nabeul.info',
      'nabuma.com',
      'nepwk.com',
      'ne-quid-nimis.info',
      'nervmich.net',
      'nervtmich.net',
      'netmails.net',
      'netzidiot.de',
      'neverbox.com',
      'nevermail.com',
      'nevermail.de',
      'newmail.ru',
      'nextmail.ru',
      'nice-4u.com',
      'nightmail.ru',
      'nil-admirari.info',
      'nlogn.de',
      'nlspam.it',
      'nm.ru',
      'nobugmail.com',
      'nobulk.com',
      'nobuma.com',
      'noclickemail.com',
      'nodns.org',
      'nogmailspam.info',
      'noipmail.com',
      'nomail2me.com',
      'nomail.pw',
      'nomail.xl.cx',
      'no-more-spam.com',
      'nomorespamemails.com',
      'nonspam.eu',
      'nonspammer.de',
      'noref.in',
      'nospam4.us',
      'nospam.blafussel.com',
      'nospamfor.us',
      'no-spam.hu',
      'nospammail.net',
      'nospamthanks.info',
      'no-spam.ws',
      'nospam.ze.tc',
      'notmailinator.com',
      'notmail.ru',
      'notmyemail.com',
      'notsharingmy.info',
      'nowmymail.com',
      'nsaking.de',
      'nurfuerspam.de',
      'nwldx.com',
      'nyckelband.com',
      'objectmail.com',
      'obobbo.com',
      'octivian.com',
      'odnorazovoe.ru',
      'ohaaa.de',
      'ok.ru',
      'oleco.net',
      'omail.pro',
      'omani.ws',
      'one.lt',
      'oneoffemail.com',
      'oneoffmail.com',
      'onewaymail.com',
      'onlatedotcom.info',
      'online.ms',
      'opayq.com',
      'opentrash.com',
      'ordinaryamerican.net',
      'otherinbox.com',
      'oued.info',
      'oued.org',
      'oujda.biz',
      'ouyamaichang.com',
      'ovpn.to',
      'owlpic.com',
      'pa9e.com',
      'pakistani.ws',
      'palmyra.ws',
      'pecdo.com',
      'pergustafsson.com',
      'pfui.ru',
      'piloq.com',
      'pisem.net',
      'pisls.com',
      'pjjkp.com',
      'pleasantphoto.com',
      'plexolan.de',
      'pochtamt.ru',
      'pochta.ru',
      'politikerclub.de',
      'pookmail.com',
      'pooperduperzgmail.com',
      'pop3.ru',
      'porn.com',
      'pornoroxx.net',
      'powered.name',
      'prescrip.pl',
      'privacybox.net',
      'privacy.net',
      'privatdemail.net',
      'privy-mail.com',
      'privy-mail.de',
      'privymail.de',
      'proxymail.eu',
      'prtnx.com',
      'prtz.eu',
      'punkass.com',
      'put2.net',
      'putthisinyourspamdatabase.com',
      'pwrby.com',
      'qasti.com',
      'qisdo.com',
      'qisoa.com',
      'qlfg.com',
      'qoika.com',
      'qq.com',
      'quickinbox.com',
      'r0.ru',
      'rabber.33mail.com',
      'rambler.ru',
      'raqid.com',
      'rbcmail.ru',
      'rcpt.at',
      'reallymymail.com',
      'realtyalerts.ca',
      'receiveee.com',
      'recode.me',
      'recursor.net',
      'regbypass.com',
      're-gister.com',
      'regspaces.tk',
      'reitkopf.com',
      'rfc822.org',
      'rhyta.com',
      'rmqkr.net',
      'ro.ru',
      'rppkn.com',
      'rtrtr.com',
      'ru.ru',
      's0ny.net',
      'safat.biz',
      'safat.info',
      'safat.us',
      'safat.ws',
      'safe-mail.net',
      'safersignup.com',
      'safersignup.de',
      'safetymail.info',
      'safetypost.de',
      'salmiya.biz',
      'sandelf.de',
      'sapya.com',
      'sawoe.com',
      'saynotospams.com',
      'schafmail.de',
      'schmeissweg.tk',
      'schrott-email.de',
      'sdfghyj.tk',
      'secmail.in',
      'secmail.pw',
      'secretemail.de',
      'sector2.org',
      'secure-email.org',
      'secure-mail.biz',
      'secure-mail.cc',
      'selfdestructingmail.com',
      'sendmail.ru',
      'sendspamhere.com',
      'senseless-entertainment.com',
      'server.ms',
      'sfax.ws',
      'sh3n.de',
      'sharklasers.com',
      'shieldemail.com',
      'shiftmail.com',
      'shitmail.me',
      'shitmail.org',
      'showslow.de',
      'shut.name',
      'shut.ws',
      'sibmail.com',
      'sigaint.org',
      'sina.com',
      'sinnlos-mail.de',
      'skeefmail.com',
      'skim.com',
      'sky-ts.de',
      'slopsbox.com',
      'smashmail.de',
      'smeh.info',
      'smellfear.com',
      'smtp.ru',
      'snakemail.com',
      'sneakemail.com',
      'sneakmail.de',
      'snkmail.com',
      'sofimail.com',
      'sofort-mail.com',
      'sofort-mail.de',
      'sofortmail.de',
      'sogetthis.com',
      'soisz.com',
      'solvemail.info',
      'soodonims.com',
      'spam4.me',
      'spamail.de',
      'spamavert.com',
      'spamavert.no',
      'spambob',
      'spambob.com',
      'spambob.net',
      'spambob.org',
      'spambog.com',
      'spambog.de',
      'spambog.ru',
      'spambooger.com',
      'spambox.info',
      'spambox.us',
      'spamcannon.com',
      'spamcannon.net',
      'spamcero.com',
      'spamcorptastic.com',
      'spamday.com',
      'spamex.com',
      'spamfence.net',
      'spamfoodie.com',
      'spamfree24.com',
      'spamfree24.de',
      'spamfree24.eu',
      'spamfree24.info',
      'spamfree24.net',
      'spamfree24.org',
      'spamfree.eu',
      'spamgourmet.com',
      'spamherelots.com',
      'spamhereplease.com',
      'spamhole.com',
      'spamify.com',
      'spaminator.de',
      'spamkill.info',
      'spam.la',
      'spaml.com',
      'spaml.de',
      'spammotel.com',
      'spamobox.com',
      'spam-prohibition.de',
      'spamscams.net',
      'spamslicer.com',
      'spamspot.com',
      'spamstack.net',
      'spam.su',
      'spamthis.co.uk',
      'spamthisplease.com',
      'spamtrail.com',
      'spamx.ru',
      'speed.1s.fr',
      'speedmail.de',
      'spoofmail.de',
      'squizzy.de',
      'sriaus.com',
      'sry.li',
      'ssoia.com',
      'startfu.com',
      'startkeys.com',
      'stinkefinger.net',
      'stop-my-spam.com',
      'streetwisemail.com',
      'stuffmail.de',
      'super-auswahl.de',
      'supergreatmail.com',
      'superrito.com',
      'superstachel.de',
      'suremail.info',
      'sweetxxx.de',
      'tafmail.com',
      'tagyourself.com',
      'teewars.org',
      'tele-vision.info',
      'teleworm.com',
      'teleworm.us',
      'tempail.com',
      'tempalias.com',
      'tempemail.biz',
      'tempe-mail.com',
      'tempemail.com',
      'tempemail.co.za',
      'tempemail.net',
      'tempinbox.com',
      'tempinbox.co.uk',
      'tempmail2.com',
      'temp-mail.com',
      'tempmail.com',
      'temp-mail.de',
      'tempmail.de',
      'tempmaildemo.com',
      'tempmailer.com',
      'tempmailer.de',
      'tempmail.eu',
      'tempmail.info',
      'tempmail.it',
      'temp-mail.org',
      'tempmail.org',
      'temp-mail.ru',
      'tempomail.fr',
      'temporarily.de',
      'temporarioemail.com.br',
      'temporaryemailid.com',
      'temporaryemail.net',
      'temporaryforwarding.com',
      'temporaryinbox.com',
      'temporarymailaddress.com',
      'thanksnospam.info',
      'thankyou2010.com',
      'thc.st',
      'theanonymousemail.com',
      'thecannabishunter.com',
      'thisisnotmyrealemail.com',
      'thismail.net',
      'thismail.ru',
      'thrma.com',
      'throam.com',
      'throwawayaddress.com',
      'throwawayemailaddress.com',
      'throwawaymail.com',
      'tilien.com',
      'tittbit.in',
      'tm43.cf',
      'tmailinator.com',
      'toiea.com',
      'tokem.co',
      'tokenmail.de',
      'tom.com',
      'topranklist.de',
      'tormail.org',
      'tradedoubling.co.uk',
      'tradermail.info',
      'trash2009.com',
      'trash4.me',
      'trash-amil.com',
      'trash.at.vu',
      'trashbox.eu',
      'trashdevil.com',
      'trashdevil.de',
      'trashemail.de',
      'trashemails.de',
      'trashinbox.com',
      'trash-mail.at',
      'trashmail.at',
      'trash-mail.com',
      'trashmail.com',
      'trash-mail.de',
      'trashmail.de',
      'trashmailer.com',
      'trashmail.me',
      'trashmail.net',
      'trashmail.org',
      'trashmail.ws',
      'trash-me.com',
      'trash.name',
      'trashymail.com',
      'trashymail.net',
      'trbvm.com',
      'trialmail.de',
      'trickmail.net',
      'trillianpro.com',
      'tryalert.com',
      'ts-by-tashkent.cf',
      'ts-by-tashkent.ga',
      'ts-by-tashkent.gq',
      'ts-by-tashkent.ml',
      'ts-by-tashkent.tk',
      'tuta.io',
      'tutamail.com',
      'tutanota.com',
      'tutanota.de',
      'tut.by',
      'twinmail.de',
      'tyldd.com',
      'ubismail.net',
      'uggsrock.com',
      'ukr.net',
      'us.af',
      'users.1go.dk',
      'vaasfc4.tk',
      'valemail.net',
      'vermutlich.net',
      'veryrealemail.com',
      'vickaentb.cf',
      'vickaentb.ga',
      'vickaentb.gq',
      'vickaentb.ml',
      'vickaentb.tk',
      'vidchart.com',
      'vihost.ml',
      'vihost.tk',
      'vipmail.name',
      'vipmail.pw',
      'vip.qq.com',
      'vistomail.com',
      'voidbay.com',
      'vomoto.com',
      'vpnsmail.me',
      'vpn.st',
      'vpn-thebest.com',
      'vsimcard.com',
      'vxaz.com',
      'w00ttech.com',
      'walkmail.net',
      'wasdfgh.cf',
      'wasdfgh.ga',
      'wasdfgh.gq',
      'wasdfgh.ml',
      'wasdfgh.tk',
      'wasteland.rfc822.org',
      'watchfull.net',
      'watch-harry-potter.com',
      'webm4il.info',
      'webuser.in',
      'wegwerfadresse.de',
      'wegwerfemailadresse.com',
      'wegwerf-email-adressen.de',
      'wegwerf-email.at',
      'wegwerfemail.com',
      'weg-werf-email.de',
      'wegwerf-email.de',
      'wegwerfemail.de',
      'wegwerf-email.net',
      'wegwerf-emails.de',
      'wegwerfmail.com',
      'weg-werf-mail.de',
      'wegwerfmail.de',
      'wegwerfmail.net',
      'wegwerfmail.org',
      'wfgdfhj.tk',
      'wh4f.org',
      'whyspam.me',
      'wickmail.net',
      'willhackforfood.biz',
      'willselfdestruct.com',
      'wolfsmails.tk',
      'wolfsmail.tk',
      'wreckedmail.net',
      'wreckedmail.org',
      'writeme.us',
      'wuzupmail.net',
      'wuzup.net',
      'x3n.in',
      'xents.com',
      'x.ip6.li',
      'xy9ce.tk',
      'xyzfree.net',
      'yandex.ru',
      'yanet.me',
      'yapped.net',
      'yeah.net',
      'yestoa.com',
      'yomail.info',
      'yopmail.com',
      'yopmail.fr',
      'yopmail.net',
      'youmailr.com',
      'yourdomain.com',
      'you-spam.com',
      'yufz.com',
      'yuurok.com',
      'yxzx.net',
      'z1p.biz',
      'zehnminuten.de',
      'zehnminutenmail.de',
      'zeta-telecom.com',
      'zetmail.com',
      'zippymail.info',
      'zmail.ru',
      'zoaxe.com',
      'zoemail.com',
      'zoemail.net',
      'zoho.com'
    ]
end
