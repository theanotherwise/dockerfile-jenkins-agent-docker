toc.dat                                                                                             0000600 0004000 0002000 00000142465 13713115123 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                            x            ejbca    12.3 (Debian 12.3-1.pgdg100+1)    12.3 (Debian 12.3-1.pgdg100+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16384    ejbca    DATABASE     u   CREATE DATABASE ejbca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE ejbca;
                ejbca    false         �            1259    26683    accessrulesdata    TABLE     �   CREATE TABLE public.accessrulesdata (
    pk integer NOT NULL,
    accessrule text NOT NULL,
    isrecursive boolean NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    rule integer NOT NULL,
    admingroupdata_accessrules integer
);
 #   DROP TABLE public.accessrulesdata;
       public         heap    ejbca    false         �            1259    26689    acmeaccountdata    TABLE     �   CREATE TABLE public.acmeaccountdata (
    accountid text NOT NULL,
    currentkeyid text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);
 #   DROP TABLE public.acmeaccountdata;
       public         heap    ejbca    false         �            1259    26695    acmeauthorizationdata    TABLE     �   CREATE TABLE public.acmeauthorizationdata (
    authorizationid text NOT NULL,
    accountid text NOT NULL,
    orderid text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);
 )   DROP TABLE public.acmeauthorizationdata;
       public         heap    ejbca    false         �            1259    26701    acmechallengedata    TABLE     �   CREATE TABLE public.acmechallengedata (
    challengeid text NOT NULL,
    authorizationid text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    type text NOT NULL
);
 %   DROP TABLE public.acmechallengedata;
       public         heap    ejbca    false         �            1259    26707    acmenoncedata    TABLE     �   CREATE TABLE public.acmenoncedata (
    nonce text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    timeexpires bigint NOT NULL
);
 !   DROP TABLE public.acmenoncedata;
       public         heap    ejbca    false         �            1259    26713    acmeorderdata    TABLE     �   CREATE TABLE public.acmeorderdata (
    orderid text NOT NULL,
    accountid text NOT NULL,
    fingerprint text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    status text NOT NULL
);
 !   DROP TABLE public.acmeorderdata;
       public         heap    ejbca    false         �            1259    26719    adminentitydata    TABLE     (  CREATE TABLE public.adminentitydata (
    pk integer NOT NULL,
    caid integer NOT NULL,
    matchtype integer NOT NULL,
    matchvalue text,
    matchwith integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokentype text,
    admingroupdata_adminentities integer
);
 #   DROP TABLE public.adminentitydata;
       public         heap    ejbca    false         �            1259    26725    admingroupdata    TABLE     �   CREATE TABLE public.admingroupdata (
    pk integer NOT NULL,
    admingroupname text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 "   DROP TABLE public.admingroupdata;
       public         heap    ejbca    false         �            1259    26731    adminpreferencesdata    TABLE     �   CREATE TABLE public.adminpreferencesdata (
    id text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 (   DROP TABLE public.adminpreferencesdata;
       public         heap    ejbca    false         �            1259    26737    approvaldata    TABLE     �  CREATE TABLE public.approvaldata (
    id integer NOT NULL,
    approvaldata text NOT NULL,
    approvalid integer NOT NULL,
    approvaltype integer NOT NULL,
    caid integer NOT NULL,
    endentityprofileid integer NOT NULL,
    expiredate bigint NOT NULL,
    remainingapprovals integer NOT NULL,
    reqadmincertissuerdn text,
    reqadmincertsn text,
    requestdata text NOT NULL,
    requestdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL
);
     DROP TABLE public.approvaldata;
       public         heap    ejbca    false         �            1259    26743    auditrecorddata    TABLE     �  CREATE TABLE public.auditrecorddata (
    pk text NOT NULL,
    additionaldetails text,
    authtoken text NOT NULL,
    customid text,
    eventstatus text NOT NULL,
    eventtype text NOT NULL,
    module text NOT NULL,
    nodeid text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    searchdetail1 text,
    searchdetail2 text,
    sequencenumber bigint NOT NULL,
    service text NOT NULL,
    "timestamp" bigint NOT NULL
);
 #   DROP TABLE public.auditrecorddata;
       public         heap    ejbca    false         �            1259    26749    authorizationtreeupdatedata    TABLE     �   CREATE TABLE public.authorizationtreeupdatedata (
    pk integer NOT NULL,
    authorizationtreeupdatenumber integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 /   DROP TABLE public.authorizationtreeupdatedata;
       public         heap    ejbca    false         �            1259    26755    base64certdata    TABLE     �   CREATE TABLE public.base64certdata (
    fingerprint text NOT NULL,
    base64cert text,
    rowprotection text,
    rowversion integer NOT NULL
);
 "   DROP TABLE public.base64certdata;
       public         heap    ejbca    false         �            1259    26761    blacklistdata    TABLE     �   CREATE TABLE public.blacklistdata (
    id integer NOT NULL,
    type text NOT NULL,
    value text NOT NULL,
    data text,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);
 !   DROP TABLE public.blacklistdata;
       public         heap    ejbca    false         �            1259    26767    cadata    TABLE       CREATE TABLE public.cadata (
    caid integer NOT NULL,
    data text NOT NULL,
    expiretime bigint NOT NULL,
    name text,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL,
    subjectdn text,
    updatetime bigint NOT NULL
);
    DROP TABLE public.cadata;
       public         heap    ejbca    false         �            1259    26773    certificatedata    TABLE     {  CREATE TABLE public.certificatedata (
    fingerprint text NOT NULL,
    base64cert text,
    cafingerprint text,
    certificateprofileid integer NOT NULL,
    endentityprofileid integer,
    expiredate bigint NOT NULL,
    issuerdn text NOT NULL,
    notbefore bigint,
    revocationdate bigint NOT NULL,
    revocationreason integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text NOT NULL,
    subjectkeyid text,
    tag text,
    type integer NOT NULL,
    updatetime bigint NOT NULL,
    username text
);
 #   DROP TABLE public.certificatedata;
       public         heap    ejbca    false         �            1259    26779    certificateprofiledata    TABLE     �   CREATE TABLE public.certificateprofiledata (
    id integer NOT NULL,
    certificateprofilename text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 *   DROP TABLE public.certificateprofiledata;
       public         heap    ejbca    false         �            1259    26785    certreqhistorydata    TABLE       CREATE TABLE public.certreqhistorydata (
    fingerprint text NOT NULL,
    issuerdn text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    "timestamp" bigint NOT NULL,
    userdatavo text NOT NULL,
    username text NOT NULL
);
 &   DROP TABLE public.certreqhistorydata;
       public         heap    ejbca    false         �            1259    26791    crldata    TABLE     Z  CREATE TABLE public.crldata (
    fingerprint text NOT NULL,
    base64crl text NOT NULL,
    cafingerprint text NOT NULL,
    crlnumber integer NOT NULL,
    deltacrlindicator integer NOT NULL,
    issuerdn text NOT NULL,
    nextupdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    thisupdate bigint NOT NULL
);
    DROP TABLE public.crldata;
       public         heap    ejbca    false         �            1259    26797    cryptotokendata    TABLE     �   CREATE TABLE public.cryptotokendata (
    id integer NOT NULL,
    lastupdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokendata text,
    tokenname text NOT NULL,
    tokenprops text,
    tokentype text NOT NULL
);
 #   DROP TABLE public.cryptotokendata;
       public         heap    ejbca    false         �            1259    26803    endentityprofiledata    TABLE     �   CREATE TABLE public.endentityprofiledata (
    id integer NOT NULL,
    data bytea NOT NULL,
    profilename text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 (   DROP TABLE public.endentityprofiledata;
       public         heap    ejbca    false         �            1259    26809    globalconfigurationdata    TABLE     �   CREATE TABLE public.globalconfigurationdata (
    configurationid text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 +   DROP TABLE public.globalconfigurationdata;
       public         heap    ejbca    false         �            1259    26815    hardtokencertificatemap    TABLE     �   CREATE TABLE public.hardtokencertificatemap (
    certificatefingerprint text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokensn text NOT NULL
);
 +   DROP TABLE public.hardtokencertificatemap;
       public         heap    ejbca    false         �            1259    26821    hardtokendata    TABLE       CREATE TABLE public.hardtokendata (
    tokensn text NOT NULL,
    ctime bigint NOT NULL,
    data bytea,
    mtime bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    significantissuerdn text,
    tokentype integer NOT NULL,
    username text
);
 !   DROP TABLE public.hardtokendata;
       public         heap    ejbca    false         �            1259    26827    hardtokenissuerdata    TABLE     �   CREATE TABLE public.hardtokenissuerdata (
    id integer NOT NULL,
    admingroupid integer NOT NULL,
    alias text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);
 '   DROP TABLE public.hardtokenissuerdata;
       public         heap    ejbca    false         �            1259    26833    hardtokenprofiledata    TABLE     �   CREATE TABLE public.hardtokenprofiledata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);
 (   DROP TABLE public.hardtokenprofiledata;
       public         heap    ejbca    false         �            1259    26839    hardtokenpropertydata    TABLE     �   CREATE TABLE public.hardtokenpropertydata (
    id text NOT NULL,
    property text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    value text
);
 )   DROP TABLE public.hardtokenpropertydata;
       public         heap    ejbca    false         �            1259    26845    internalkeybindingdata    TABLE     c  CREATE TABLE public.internalkeybindingdata (
    id integer NOT NULL,
    certificateid text,
    cryptotokenid integer NOT NULL,
    keybindingtype text NOT NULL,
    keypairalias text NOT NULL,
    lastupdate bigint NOT NULL,
    name text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    status text NOT NULL
);
 *   DROP TABLE public.internalkeybindingdata;
       public         heap    ejbca    false         �            1259    26851    keyrecoverydata    TABLE     F  CREATE TABLE public.keyrecoverydata (
    certsn text NOT NULL,
    issuerdn text NOT NULL,
    cryptotokenid integer DEFAULT 0 NOT NULL,
    keyalias text,
    keydata text NOT NULL,
    markedasrecoverable boolean NOT NULL,
    publickeyid text,
    rowprotection text,
    rowversion integer NOT NULL,
    username text
);
 #   DROP TABLE public.keyrecoverydata;
       public         heap    ejbca    false         �            1259    26858    noconflictcertificatedata    TABLE     �  CREATE TABLE public.noconflictcertificatedata (
    id text NOT NULL,
    fingerprint text NOT NULL,
    base64cert text,
    cafingerprint text,
    certificateprofileid integer NOT NULL,
    endentityprofileid integer,
    expiredate bigint NOT NULL,
    issuerdn text NOT NULL,
    notbefore bigint,
    revocationdate bigint NOT NULL,
    revocationreason integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text NOT NULL,
    subjectkeyid text,
    tag text,
    type integer NOT NULL,
    updatetime bigint NOT NULL,
    username text
);
 -   DROP TABLE public.noconflictcertificatedata;
       public         heap    ejbca    false         �            1259    26864    peerdata    TABLE     �   CREATE TABLE public.peerdata (
    id integer NOT NULL,
    connectorstate integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    url text NOT NULL
);
    DROP TABLE public.peerdata;
       public         heap    ejbca    false         �            1259    26870    profiledata    TABLE     �   CREATE TABLE public.profiledata (
    id integer NOT NULL,
    profilename text NOT NULL,
    profiletype text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);
    DROP TABLE public.profiledata;
       public         heap    ejbca    false         �            1259    26876    publisherdata    TABLE     �   CREATE TABLE public.publisherdata (
    id integer NOT NULL,
    data text,
    name text,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);
 !   DROP TABLE public.publisherdata;
       public         heap    ejbca    false         �            1259    26882    publisherqueuedata    TABLE     q  CREATE TABLE public.publisherqueuedata (
    pk text NOT NULL,
    fingerprint text,
    lastupdate bigint NOT NULL,
    publishstatus integer NOT NULL,
    publishtype integer NOT NULL,
    publisherid integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    timecreated bigint NOT NULL,
    trycounter integer NOT NULL,
    volatiledata text
);
 &   DROP TABLE public.publisherqueuedata;
       public         heap    ejbca    false         �            1259    26888    roledata    TABLE     �   CREATE TABLE public.roledata (
    id integer NOT NULL,
    rolename text NOT NULL,
    namespace text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);
    DROP TABLE public.roledata;
       public         heap    ejbca    false         �            1259    26894    rolememberdata    TABLE     \  CREATE TABLE public.rolememberdata (
    primarykey integer NOT NULL,
    tokentype text NOT NULL,
    tokenissuerid integer NOT NULL,
    tokenmatchkey integer NOT NULL,
    tokenmatchoperator integer NOT NULL,
    tokenmatchvalue text,
    roleid integer NOT NULL,
    description text,
    rowprotection text,
    rowversion integer NOT NULL
);
 "   DROP TABLE public.rolememberdata;
       public         heap    ejbca    false         �            1259    26900    servicedata    TABLE     �   CREATE TABLE public.servicedata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    nextruntimestamp bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    runtimestamp bigint NOT NULL
);
    DROP TABLE public.servicedata;
       public         heap    ejbca    false         �            1259    26906    userdata    TABLE     m  CREATE TABLE public.userdata (
    username text NOT NULL,
    caid integer NOT NULL,
    cardnumber text,
    certificateprofileid integer NOT NULL,
    clearpassword text,
    endentityprofileid integer NOT NULL,
    extendedinformationdata text,
    hardtokenissuerid integer NOT NULL,
    keystorepassword text,
    passwordhash text,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text,
    subjectemail text,
    timecreated bigint NOT NULL,
    timemodified bigint NOT NULL,
    tokentype integer NOT NULL,
    type integer NOT NULL
);
    DROP TABLE public.userdata;
       public         heap    ejbca    false         �            1259    26912    userdatasourcedata    TABLE     �   CREATE TABLE public.userdatasourcedata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);
 &   DROP TABLE public.userdatasourcedata;
       public         heap    ejbca    false         }          0    26683    accessrulesdata 
   TABLE DATA           �   COPY public.accessrulesdata (pk, accessrule, isrecursive, rowprotection, rowversion, rule, admingroupdata_accessrules) FROM stdin;
    public          ejbca    false    202       3197.dat ~          0    26689    acmeaccountdata 
   TABLE DATA           f   COPY public.acmeaccountdata (accountid, currentkeyid, rawdata, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    203       3198.dat           0    26695    acmeauthorizationdata 
   TABLE DATA           x   COPY public.acmeauthorizationdata (authorizationid, accountid, orderid, rawdata, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    204       3199.dat �          0    26701    acmechallengedata 
   TABLE DATA           s   COPY public.acmechallengedata (challengeid, authorizationid, rawdata, rowprotection, rowversion, type) FROM stdin;
    public          ejbca    false    205       3200.dat �          0    26707    acmenoncedata 
   TABLE DATA           V   COPY public.acmenoncedata (nonce, rowprotection, rowversion, timeexpires) FROM stdin;
    public          ejbca    false    206       3201.dat �          0    26713    acmeorderdata 
   TABLE DATA           t   COPY public.acmeorderdata (orderid, accountid, fingerprint, rawdata, rowprotection, rowversion, status) FROM stdin;
    public          ejbca    false    207       3202.dat �          0    26719    adminentitydata 
   TABLE DATA           �   COPY public.adminentitydata (pk, caid, matchtype, matchvalue, matchwith, rowprotection, rowversion, tokentype, admingroupdata_adminentities) FROM stdin;
    public          ejbca    false    208       3203.dat �          0    26725    admingroupdata 
   TABLE DATA           W   COPY public.admingroupdata (pk, admingroupname, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    209       3204.dat �          0    26731    adminpreferencesdata 
   TABLE DATA           S   COPY public.adminpreferencesdata (id, data, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    210       3205.dat �          0    26737    approvaldata 
   TABLE DATA           �   COPY public.approvaldata (id, approvaldata, approvalid, approvaltype, caid, endentityprofileid, expiredate, remainingapprovals, reqadmincertissuerdn, reqadmincertsn, requestdata, requestdate, rowprotection, rowversion, status) FROM stdin;
    public          ejbca    false    211       3206.dat �          0    26743    auditrecorddata 
   TABLE DATA           �   COPY public.auditrecorddata (pk, additionaldetails, authtoken, customid, eventstatus, eventtype, module, nodeid, rowprotection, rowversion, searchdetail1, searchdetail2, sequencenumber, service, "timestamp") FROM stdin;
    public          ejbca    false    212       3207.dat �          0    26749    authorizationtreeupdatedata 
   TABLE DATA           s   COPY public.authorizationtreeupdatedata (pk, authorizationtreeupdatenumber, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    213       3208.dat �          0    26755    base64certdata 
   TABLE DATA           \   COPY public.base64certdata (fingerprint, base64cert, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    214       3209.dat �          0    26761    blacklistdata 
   TABLE DATA           h   COPY public.blacklistdata (id, type, value, data, rowprotection, rowversion, updatecounter) FROM stdin;
    public          ejbca    false    215       3210.dat �          0    26767    cadata 
   TABLE DATA           x   COPY public.cadata (caid, data, expiretime, name, rowprotection, rowversion, status, subjectdn, updatetime) FROM stdin;
    public          ejbca    false    216       3211.dat �          0    26773    certificatedata 
   TABLE DATA           9  COPY public.certificatedata (fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM stdin;
    public          ejbca    false    217       3212.dat �          0    26779    certificateprofiledata 
   TABLE DATA           m   COPY public.certificateprofiledata (id, certificateprofilename, data, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    218       3213.dat �          0    26785    certreqhistorydata 
   TABLE DATA           �   COPY public.certreqhistorydata (fingerprint, issuerdn, rowprotection, rowversion, serialnumber, "timestamp", userdatavo, username) FROM stdin;
    public          ejbca    false    219       3214.dat �          0    26791    crldata 
   TABLE DATA           �   COPY public.crldata (fingerprint, base64crl, cafingerprint, crlnumber, deltacrlindicator, issuerdn, nextupdate, rowprotection, rowversion, thisupdate) FROM stdin;
    public          ejbca    false    220       3215.dat �          0    26797    cryptotokendata 
   TABLE DATA           �   COPY public.cryptotokendata (id, lastupdate, rowprotection, rowversion, tokendata, tokenname, tokenprops, tokentype) FROM stdin;
    public          ejbca    false    221       3216.dat �          0    26803    endentityprofiledata 
   TABLE DATA           `   COPY public.endentityprofiledata (id, data, profilename, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    222       3217.dat �          0    26809    globalconfigurationdata 
   TABLE DATA           c   COPY public.globalconfigurationdata (configurationid, data, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    223       3218.dat �          0    26815    hardtokencertificatemap 
   TABLE DATA           m   COPY public.hardtokencertificatemap (certificatefingerprint, rowprotection, rowversion, tokensn) FROM stdin;
    public          ejbca    false    224       3219.dat �          0    26821    hardtokendata 
   TABLE DATA           �   COPY public.hardtokendata (tokensn, ctime, data, mtime, rowprotection, rowversion, significantissuerdn, tokentype, username) FROM stdin;
    public          ejbca    false    225       3220.dat �          0    26827    hardtokenissuerdata 
   TABLE DATA           g   COPY public.hardtokenissuerdata (id, admingroupid, alias, data, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    226       3221.dat �          0    26833    hardtokenprofiledata 
   TABLE DATA           h   COPY public.hardtokenprofiledata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
    public          ejbca    false    227       3222.dat �          0    26839    hardtokenpropertydata 
   TABLE DATA           _   COPY public.hardtokenpropertydata (id, property, rowprotection, rowversion, value) FROM stdin;
    public          ejbca    false    228       3223.dat �          0    26845    internalkeybindingdata 
   TABLE DATA           �   COPY public.internalkeybindingdata (id, certificateid, cryptotokenid, keybindingtype, keypairalias, lastupdate, name, rawdata, rowprotection, rowversion, status) FROM stdin;
    public          ejbca    false    229       3224.dat �          0    26851    keyrecoverydata 
   TABLE DATA           �   COPY public.keyrecoverydata (certsn, issuerdn, cryptotokenid, keyalias, keydata, markedasrecoverable, publickeyid, rowprotection, rowversion, username) FROM stdin;
    public          ejbca    false    230       3225.dat �          0    26858    noconflictcertificatedata 
   TABLE DATA           G  COPY public.noconflictcertificatedata (id, fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM stdin;
    public          ejbca    false    231       3226.dat �          0    26864    peerdata 
   TABLE DATA           b   COPY public.peerdata (id, connectorstate, data, name, rowprotection, rowversion, url) FROM stdin;
    public          ejbca    false    232       3227.dat �          0    26870    profiledata 
   TABLE DATA           g   COPY public.profiledata (id, profilename, profiletype, rawdata, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    233       3228.dat �          0    26876    publisherdata 
   TABLE DATA           a   COPY public.publisherdata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
    public          ejbca    false    234       3229.dat �          0    26882    publisherqueuedata 
   TABLE DATA           �   COPY public.publisherqueuedata (pk, fingerprint, lastupdate, publishstatus, publishtype, publisherid, rowprotection, rowversion, timecreated, trycounter, volatiledata) FROM stdin;
    public          ejbca    false    235       3230.dat �          0    26888    roledata 
   TABLE DATA           _   COPY public.roledata (id, rolename, namespace, rawdata, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    236       3231.dat �          0    26894    rolememberdata 
   TABLE DATA           �   COPY public.rolememberdata (primarykey, tokentype, tokenissuerid, tokenmatchkey, tokenmatchoperator, tokenmatchvalue, roleid, description, rowprotection, rowversion) FROM stdin;
    public          ejbca    false    237       3232.dat �          0    26900    servicedata 
   TABLE DATA           p   COPY public.servicedata (id, data, name, nextruntimestamp, rowprotection, rowversion, runtimestamp) FROM stdin;
    public          ejbca    false    238       3233.dat �          0    26906    userdata 
   TABLE DATA           ;  COPY public.userdata (username, caid, cardnumber, certificateprofileid, clearpassword, endentityprofileid, extendedinformationdata, hardtokenissuerid, keystorepassword, passwordhash, rowprotection, rowversion, status, subjectaltname, subjectdn, subjectemail, timecreated, timemodified, tokentype, type) FROM stdin;
    public          ejbca    false    239       3234.dat �          0    26912    userdatasourcedata 
   TABLE DATA           f   COPY public.userdatasourcedata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
    public          ejbca    false    240       3235.dat �           2606    26921 $   accessrulesdata accessrulesdata_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.accessrulesdata
    ADD CONSTRAINT accessrulesdata_pkey PRIMARY KEY (pk);
 N   ALTER TABLE ONLY public.accessrulesdata DROP CONSTRAINT accessrulesdata_pkey;
       public            ejbca    false    202         �           2606    26923 $   acmeaccountdata acmeaccountdata_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.acmeaccountdata
    ADD CONSTRAINT acmeaccountdata_pkey PRIMARY KEY (accountid);
 N   ALTER TABLE ONLY public.acmeaccountdata DROP CONSTRAINT acmeaccountdata_pkey;
       public            ejbca    false    203         �           2606    26925 0   acmeauthorizationdata acmeauthorizationdata_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.acmeauthorizationdata
    ADD CONSTRAINT acmeauthorizationdata_pkey PRIMARY KEY (authorizationid);
 Z   ALTER TABLE ONLY public.acmeauthorizationdata DROP CONSTRAINT acmeauthorizationdata_pkey;
       public            ejbca    false    204         �           2606    26927 (   acmechallengedata acmechallengedata_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.acmechallengedata
    ADD CONSTRAINT acmechallengedata_pkey PRIMARY KEY (challengeid);
 R   ALTER TABLE ONLY public.acmechallengedata DROP CONSTRAINT acmechallengedata_pkey;
       public            ejbca    false    205         �           2606    26929     acmenoncedata acmenoncedata_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.acmenoncedata
    ADD CONSTRAINT acmenoncedata_pkey PRIMARY KEY (nonce);
 J   ALTER TABLE ONLY public.acmenoncedata DROP CONSTRAINT acmenoncedata_pkey;
       public            ejbca    false    206         �           2606    26931     acmeorderdata acmeorderdata_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.acmeorderdata
    ADD CONSTRAINT acmeorderdata_pkey PRIMARY KEY (orderid);
 J   ALTER TABLE ONLY public.acmeorderdata DROP CONSTRAINT acmeorderdata_pkey;
       public            ejbca    false    207         �           2606    26933 $   adminentitydata adminentitydata_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.adminentitydata
    ADD CONSTRAINT adminentitydata_pkey PRIMARY KEY (pk);
 N   ALTER TABLE ONLY public.adminentitydata DROP CONSTRAINT adminentitydata_pkey;
       public            ejbca    false    208         �           2606    26935 "   admingroupdata admingroupdata_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.admingroupdata
    ADD CONSTRAINT admingroupdata_pkey PRIMARY KEY (pk);
 L   ALTER TABLE ONLY public.admingroupdata DROP CONSTRAINT admingroupdata_pkey;
       public            ejbca    false    209         �           2606    26937 .   adminpreferencesdata adminpreferencesdata_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.adminpreferencesdata
    ADD CONSTRAINT adminpreferencesdata_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.adminpreferencesdata DROP CONSTRAINT adminpreferencesdata_pkey;
       public            ejbca    false    210         �           2606    26939    approvaldata approvaldata_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.approvaldata
    ADD CONSTRAINT approvaldata_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.approvaldata DROP CONSTRAINT approvaldata_pkey;
       public            ejbca    false    211         �           2606    26941 $   auditrecorddata auditrecorddata_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auditrecorddata
    ADD CONSTRAINT auditrecorddata_pkey PRIMARY KEY (pk);
 N   ALTER TABLE ONLY public.auditrecorddata DROP CONSTRAINT auditrecorddata_pkey;
       public            ejbca    false    212         �           2606    26943 <   authorizationtreeupdatedata authorizationtreeupdatedata_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.authorizationtreeupdatedata
    ADD CONSTRAINT authorizationtreeupdatedata_pkey PRIMARY KEY (pk);
 f   ALTER TABLE ONLY public.authorizationtreeupdatedata DROP CONSTRAINT authorizationtreeupdatedata_pkey;
       public            ejbca    false    213         �           2606    26945 "   base64certdata base64certdata_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.base64certdata
    ADD CONSTRAINT base64certdata_pkey PRIMARY KEY (fingerprint);
 L   ALTER TABLE ONLY public.base64certdata DROP CONSTRAINT base64certdata_pkey;
       public            ejbca    false    214         �           2606    26947     blacklistdata blacklistdata_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blacklistdata
    ADD CONSTRAINT blacklistdata_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blacklistdata DROP CONSTRAINT blacklistdata_pkey;
       public            ejbca    false    215         �           2606    26949    cadata cadata_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cadata
    ADD CONSTRAINT cadata_pkey PRIMARY KEY (caid);
 <   ALTER TABLE ONLY public.cadata DROP CONSTRAINT cadata_pkey;
       public            ejbca    false    216         �           2606    26951 $   certificatedata certificatedata_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.certificatedata
    ADD CONSTRAINT certificatedata_pkey PRIMARY KEY (fingerprint);
 N   ALTER TABLE ONLY public.certificatedata DROP CONSTRAINT certificatedata_pkey;
       public            ejbca    false    217         �           2606    26953 2   certificateprofiledata certificateprofiledata_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.certificateprofiledata
    ADD CONSTRAINT certificateprofiledata_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.certificateprofiledata DROP CONSTRAINT certificateprofiledata_pkey;
       public            ejbca    false    218         �           2606    26955 *   certreqhistorydata certreqhistorydata_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.certreqhistorydata
    ADD CONSTRAINT certreqhistorydata_pkey PRIMARY KEY (fingerprint);
 T   ALTER TABLE ONLY public.certreqhistorydata DROP CONSTRAINT certreqhistorydata_pkey;
       public            ejbca    false    219         �           2606    26957    crldata crldata_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.crldata
    ADD CONSTRAINT crldata_pkey PRIMARY KEY (fingerprint);
 >   ALTER TABLE ONLY public.crldata DROP CONSTRAINT crldata_pkey;
       public            ejbca    false    220         �           2606    26959 $   cryptotokendata cryptotokendata_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cryptotokendata
    ADD CONSTRAINT cryptotokendata_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cryptotokendata DROP CONSTRAINT cryptotokendata_pkey;
       public            ejbca    false    221         �           2606    26961 .   endentityprofiledata endentityprofiledata_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.endentityprofiledata
    ADD CONSTRAINT endentityprofiledata_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.endentityprofiledata DROP CONSTRAINT endentityprofiledata_pkey;
       public            ejbca    false    222         �           2606    26963 4   globalconfigurationdata globalconfigurationdata_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.globalconfigurationdata
    ADD CONSTRAINT globalconfigurationdata_pkey PRIMARY KEY (configurationid);
 ^   ALTER TABLE ONLY public.globalconfigurationdata DROP CONSTRAINT globalconfigurationdata_pkey;
       public            ejbca    false    223         �           2606    26965 4   hardtokencertificatemap hardtokencertificatemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hardtokencertificatemap
    ADD CONSTRAINT hardtokencertificatemap_pkey PRIMARY KEY (certificatefingerprint);
 ^   ALTER TABLE ONLY public.hardtokencertificatemap DROP CONSTRAINT hardtokencertificatemap_pkey;
       public            ejbca    false    224         �           2606    26967     hardtokendata hardtokendata_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hardtokendata
    ADD CONSTRAINT hardtokendata_pkey PRIMARY KEY (tokensn);
 J   ALTER TABLE ONLY public.hardtokendata DROP CONSTRAINT hardtokendata_pkey;
       public            ejbca    false    225         �           2606    26969 ,   hardtokenissuerdata hardtokenissuerdata_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.hardtokenissuerdata
    ADD CONSTRAINT hardtokenissuerdata_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.hardtokenissuerdata DROP CONSTRAINT hardtokenissuerdata_pkey;
       public            ejbca    false    226         �           2606    26971 .   hardtokenprofiledata hardtokenprofiledata_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.hardtokenprofiledata
    ADD CONSTRAINT hardtokenprofiledata_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.hardtokenprofiledata DROP CONSTRAINT hardtokenprofiledata_pkey;
       public            ejbca    false    227         �           2606    26973 0   hardtokenpropertydata hardtokenpropertydata_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.hardtokenpropertydata
    ADD CONSTRAINT hardtokenpropertydata_pkey PRIMARY KEY (id, property);
 Z   ALTER TABLE ONLY public.hardtokenpropertydata DROP CONSTRAINT hardtokenpropertydata_pkey;
       public            ejbca    false    228    228         �           2606    26975 2   internalkeybindingdata internalkeybindingdata_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.internalkeybindingdata
    ADD CONSTRAINT internalkeybindingdata_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.internalkeybindingdata DROP CONSTRAINT internalkeybindingdata_pkey;
       public            ejbca    false    229         �           2606    26977 $   keyrecoverydata keyrecoverydata_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.keyrecoverydata
    ADD CONSTRAINT keyrecoverydata_pkey PRIMARY KEY (certsn, issuerdn);
 N   ALTER TABLE ONLY public.keyrecoverydata DROP CONSTRAINT keyrecoverydata_pkey;
       public            ejbca    false    230    230         �           2606    26979 8   noconflictcertificatedata noconflictcertificatedata_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.noconflictcertificatedata
    ADD CONSTRAINT noconflictcertificatedata_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.noconflictcertificatedata DROP CONSTRAINT noconflictcertificatedata_pkey;
       public            ejbca    false    231         �           2606    26981    peerdata peerdata_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.peerdata
    ADD CONSTRAINT peerdata_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.peerdata DROP CONSTRAINT peerdata_pkey;
       public            ejbca    false    232         �           2606    26983    profiledata profiledata_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.profiledata
    ADD CONSTRAINT profiledata_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.profiledata DROP CONSTRAINT profiledata_pkey;
       public            ejbca    false    233         �           2606    26985     publisherdata publisherdata_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.publisherdata
    ADD CONSTRAINT publisherdata_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.publisherdata DROP CONSTRAINT publisherdata_pkey;
       public            ejbca    false    234         �           2606    26987 *   publisherqueuedata publisherqueuedata_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.publisherqueuedata
    ADD CONSTRAINT publisherqueuedata_pkey PRIMARY KEY (pk);
 T   ALTER TABLE ONLY public.publisherqueuedata DROP CONSTRAINT publisherqueuedata_pkey;
       public            ejbca    false    235         �           2606    26989    roledata roledata_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.roledata
    ADD CONSTRAINT roledata_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.roledata DROP CONSTRAINT roledata_pkey;
       public            ejbca    false    236         �           2606    26991 "   rolememberdata rolememberdata_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.rolememberdata
    ADD CONSTRAINT rolememberdata_pkey PRIMARY KEY (primarykey);
 L   ALTER TABLE ONLY public.rolememberdata DROP CONSTRAINT rolememberdata_pkey;
       public            ejbca    false    237         �           2606    26993    servicedata servicedata_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicedata
    ADD CONSTRAINT servicedata_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.servicedata DROP CONSTRAINT servicedata_pkey;
       public            ejbca    false    238         �           2606    26995    userdata userdata_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.userdata
    ADD CONSTRAINT userdata_pkey PRIMARY KEY (username);
 @   ALTER TABLE ONLY public.userdata DROP CONSTRAINT userdata_pkey;
       public            ejbca    false    239         �           2606    26997 *   userdatasourcedata userdatasourcedata_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.userdatasourcedata
    ADD CONSTRAINT userdatasourcedata_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.userdatasourcedata DROP CONSTRAINT userdatasourcedata_pkey;
       public            ejbca    false    240         �           1259    26998    auditrecorddata_idx2    INDEX     i   CREATE UNIQUE INDEX auditrecorddata_idx2 ON public.auditrecorddata USING btree (nodeid, sequencenumber);
 (   DROP INDEX public.auditrecorddata_idx2;
       public            ejbca    false    212    212         �           1259    26999    auditrecorddata_idx3    INDEX     W   CREATE INDEX auditrecorddata_idx3 ON public.auditrecorddata USING btree ("timestamp");
 (   DROP INDEX public.auditrecorddata_idx3;
       public            ejbca    false    212         �           1259    27000    auditrecorddata_idx4    INDEX     Y   CREATE INDEX auditrecorddata_idx4 ON public.auditrecorddata USING btree (searchdetail2);
 (   DROP INDEX public.auditrecorddata_idx4;
       public            ejbca    false    212         �           1259    27001    blacklist_idx1    INDEX     O   CREATE INDEX blacklist_idx1 ON public.blacklistdata USING btree (type, value);
 "   DROP INDEX public.blacklist_idx1;
       public            ejbca    false    215    215         �           1259    27002    cadata_idx1    INDEX     E   CREATE UNIQUE INDEX cadata_idx1 ON public.cadata USING btree (name);
    DROP INDEX public.cadata_idx1;
       public            ejbca    false    216         �           1259    27003    certificatedata_idx11    INDEX     Y   CREATE INDEX certificatedata_idx11 ON public.certificatedata USING btree (subjectkeyid);
 )   DROP INDEX public.certificatedata_idx11;
       public            ejbca    false    217         �           1259    27004    certificatedata_idx12    INDEX     j   CREATE UNIQUE INDEX certificatedata_idx12 ON public.certificatedata USING btree (serialnumber, issuerdn);
 )   DROP INDEX public.certificatedata_idx12;
       public            ejbca    false    217    217         �           1259    27005    certificatedata_idx2    INDEX     T   CREATE INDEX certificatedata_idx2 ON public.certificatedata USING btree (username);
 (   DROP INDEX public.certificatedata_idx2;
       public            ejbca    false    217         �           1259    27006    certificatedata_idx4    INDEX     U   CREATE INDEX certificatedata_idx4 ON public.certificatedata USING btree (subjectdn);
 (   DROP INDEX public.certificatedata_idx4;
       public            ejbca    false    217         �           1259    27007    certificatedata_idx5    INDEX     P   CREATE INDEX certificatedata_idx5 ON public.certificatedata USING btree (type);
 (   DROP INDEX public.certificatedata_idx5;
       public            ejbca    false    217         �           1259    27008    certificatedata_idx6    INDEX     \   CREATE INDEX certificatedata_idx6 ON public.certificatedata USING btree (issuerdn, status);
 (   DROP INDEX public.certificatedata_idx6;
       public            ejbca    false    217    217         �           1259    27009    certificatedata_idx7    INDEX     `   CREATE INDEX certificatedata_idx7 ON public.certificatedata USING btree (certificateprofileid);
 (   DROP INDEX public.certificatedata_idx7;
       public            ejbca    false    217         �           1259    27010    crldata_idx3    INDEX     V   CREATE UNIQUE INDEX crldata_idx3 ON public.crldata USING btree (crlnumber, issuerdn);
     DROP INDEX public.crldata_idx3;
       public            ejbca    false    220    220         �           1259    27011    crldata_idx4    INDEX     b   CREATE INDEX crldata_idx4 ON public.crldata USING btree (issuerdn, deltacrlindicator, crlnumber);
     DROP INDEX public.crldata_idx4;
       public            ejbca    false    220    220    220         �           1259    27012    historydata_idx1    INDEX     S   CREATE INDEX historydata_idx1 ON public.certreqhistorydata USING btree (username);
 $   DROP INDEX public.historydata_idx1;
       public            ejbca    false    219         �           1259    27013    historydata_idx3    INDEX     W   CREATE INDEX historydata_idx3 ON public.certreqhistorydata USING btree (serialnumber);
 $   DROP INDEX public.historydata_idx3;
       public            ejbca    false    219         �           1259    27014    noconflictcertificatedata_idx1    INDEX     v   CREATE INDEX noconflictcertificatedata_idx1 ON public.noconflictcertificatedata USING btree (serialnumber, issuerdn);
 2   DROP INDEX public.noconflictcertificatedata_idx1;
       public            ejbca    false    231    231         �           1259    27015    noconflictcertificatedata_idx2    INDEX     k   CREATE INDEX noconflictcertificatedata_idx2 ON public.noconflictcertificatedata USING btree (fingerprint);
 2   DROP INDEX public.noconflictcertificatedata_idx2;
       public            ejbca    false    231         �           1259    27016    noconflictcertificatedata_idx3    INDEX     p   CREATE INDEX noconflictcertificatedata_idx3 ON public.noconflictcertificatedata USING btree (issuerdn, status);
 2   DROP INDEX public.noconflictcertificatedata_idx3;
       public            ejbca    false    231    231         �           1259    27017    noconflictcertificatedata_idx4    INDEX     t   CREATE INDEX noconflictcertificatedata_idx4 ON public.noconflictcertificatedata USING btree (certificateprofileid);
 2   DROP INDEX public.noconflictcertificatedata_idx4;
       public            ejbca    false    231         �           1259    27018    publisherqueue_idx3    INDEX     u   CREATE INDEX publisherqueue_idx3 ON public.publisherqueuedata USING btree (publisherid, publishstatus, timecreated);
 '   DROP INDEX public.publisherqueue_idx3;
       public            ejbca    false    235    235    235         �           1259    27019    rolemember_idx1    INDEX     W   CREATE INDEX rolemember_idx1 ON public.rolememberdata USING btree (tokentype, roleid);
 #   DROP INDEX public.rolemember_idx1;
       public            ejbca    false    237    237         �           1259    27020    userdata_idx10    INDEX     H   CREATE INDEX userdata_idx10 ON public.userdata USING btree (subjectdn);
 "   DROP INDEX public.userdata_idx10;
       public            ejbca    false    239         �           1259    27021    userdata_idx11    INDEX     E   CREATE INDEX userdata_idx11 ON public.userdata USING btree (status);
 "   DROP INDEX public.userdata_idx11;
       public            ejbca    false    239         �           2606    27022 +   accessrulesdata fkdaev24clq6yofynpsh4kuojno    FK CONSTRAINT     �   ALTER TABLE ONLY public.accessrulesdata
    ADD CONSTRAINT fkdaev24clq6yofynpsh4kuojno FOREIGN KEY (admingroupdata_accessrules) REFERENCES public.admingroupdata(pk);
 U   ALTER TABLE ONLY public.accessrulesdata DROP CONSTRAINT fkdaev24clq6yofynpsh4kuojno;
       public          ejbca    false    209    2982    202         �           2606    27027 +   adminentitydata fkgxaatpstfnr3sx8frhueq9q2d    FK CONSTRAINT     �   ALTER TABLE ONLY public.adminentitydata
    ADD CONSTRAINT fkgxaatpstfnr3sx8frhueq9q2d FOREIGN KEY (admingroupdata_adminentities) REFERENCES public.admingroupdata(pk);
 U   ALTER TABLE ONLY public.adminentitydata DROP CONSTRAINT fkgxaatpstfnr3sx8frhueq9q2d;
       public          ejbca    false    209    2982    208                                                                                                                                                                                                                   3197.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3198.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3199.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3200.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3201.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014227 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3202.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014230 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3203.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3204.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3205.dat                                                                                            0000600 0004000 0002000 00000002132 13713115123 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        default	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000b74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078703f80000074001070726566657265646c616e6775616765737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e0005000000007400117365636f6e646172796c616e677561676571007e000974000e656e7472696573706572706167657371007e0008000000197400116c6f67656e74726965737065727061676571007e000c7400057468656d6574000d64656661756c745f7468656d6574000b6c61737470726f66696c6571007e000974000e6c61737466696c7465726d6f646571007e00097400116c6173746c6f6766696c7465726d6f646571007e000974001166726f6e74706167656361737461747573737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174001366726f6e74706167657075627173746174757371007e00157800	\N	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                      3206.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3207.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3208.dat                                                                                            0000600 0004000 0002000 00000000027 13713115123 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	0	\N	0
1	2	\N	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3209.dat                                                                                            0000600 0004000 0002000 00000006353 13713115123 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        b60a047c50f58cc0ae8ecf2ac5bbb024b84bc91b	MIIEszCCAxugAwIBAgIUOc+s7Tv+E/E0nDePbdzLWOJPKtQwDQYJKoZIhvcNAQEL\nBQAwYTEjMCEGCgmSJomT8ixkAQEME2MtMDI4YmY4MTA4ZTg0N2E3OTcxFTATBgNV\nBAMMDE1hbmFnZW1lbnRDQTEjMCEGA1UECgwaRUpCQ0EgQ29udGFpbmVyIFF1aWNr\nc3RhcnQwHhcNMjAwODA2MjM0NjM1WhcNMzAwODA2MjM0NjM1WjBhMSMwIQYKCZIm\niZPyLGQBAQwTYy0wMjhiZjgxMDhlODQ3YTc5NzEVMBMGA1UEAwwMTWFuYWdlbWVu\ndENBMSMwIQYDVQQKDBpFSkJDQSBDb250YWluZXIgUXVpY2tzdGFydDCCAaIwDQYJ\nKoZIhvcNAQEBBQADggGPADCCAYoCggGBANKJTlvqpXdF6thWsT8U1Qd4rNA/I+fn\nxr23yEgUiHBWe3mouGIg9CnYin0fuXeJDiBvm8jPsjfY/X2DN41fkWBwIRURm9/v\n0KsFHt2wNeWTWH8paLJlettPVECxSeIrJVM4cfVl8yOOqHKB7ez+M6W7KQESqFpg\nveC4PtAdENOtwv4KuVEejzHOgPrqkoSAovJx9RvUuNTuM3PlK5Dzgs3QL5aJ7hJM\n08KCPs9LmDtLCzn53uuopd9jI69k5xOSvuMxENzeiV04bCW/UuFEFKYtpZ1YFCh5\n5K+As84lTqv/nAt2X6b1BjYobCQ+KhbiWKXxQPjALkmIiZfAlWG3bNMK5SWDEZcw\njW73cjYeXJsX5a2N7kzFxDfpw7oJ/DZEF3cY735QsKBDR5hTMcs6GaFgbOioceVZ\nbwNaffk1GA7HCcXURDjvL8uak2jHwPJDlZk16fgrcKyP8qUkc4zHHM1HSP+A8Q2A\n/+vg2YMk/kJB98wIiO9veOVcHvDxjfGphwIDAQABo2MwYTAPBgNVHRMBAf8EBTAD\nAQH/MB8GA1UdIwQYMBaAFClp6rDTwt8xhO4wtFyH19zv+OCbMB0GA1UdDgQWBBQp\naeqw08LfMYTuMLRch9fc7/jgmzAOBgNVHQ8BAf8EBAMCAYYwDQYJKoZIhvcNAQEL\nBQADggGBAA575fu+Ot89rnG5AjLGP1JBzKn0PhOGDC6CeYiWYt3KFZcFvKiLJGQ4\n6gyelIZV2DbxDQ8O/1SJJMBdddBOJBc/94yHJE6UsUpOUPyo8qA0e6TDzGiSvhHm\n4uXKD+YfpI2TtnxXnR5h1RGwgv5sKXx761a3vjtNQRAjqoi6it2Vj1kjXv0i3LNP\nX8Bq9YFM0nYUPosIL9PldxrF9LVyEgnoqsdb3Mf7RJ6fmSoTVaGGXU7bPYMjH1gC\nRVPVLLVPhwDUr0z5//NQZu++4uhi1yN4Pe94Av3gYqTAoAZkiFZyBAJwReXetwXT\nULVx8aoLVwW1buFLZhvmukrwztVzt0cxNR8cxty9yNnugR22EroqXlJ2rpV2FHot\n3dz2rhbQMGwvkxPc7jbYwEqGBq+sds6kAoCNSvLH4LEKsAEx5RrneWUI6PkpUEq+\naEUN31Kc19qgv1Xdp3WMU886eUz5HOLOm9L7/0LKA/98pAwk17BHsN1lNJWD/4Wc\n/GebT70i4Q==	\N	0
49daa0ec594f7fd275479085eba185be6915f841	MIIEYDCCAsigAwIBAgIUMuNl+lYGn+WVDXM6lt4M4kgNw5AwDQYJKoZIhvcNAQEL\nBQAwYTEjMCEGCgmSJomT8ixkAQEME2MtMDI4YmY4MTA4ZTg0N2E3OTcxFTATBgNV\nBAMMDE1hbmFnZW1lbnRDQTEjMCEGA1UECgwaRUpCQ0EgQ29udGFpbmVyIFF1aWNr\nc3RhcnQwHhcNMjAwODA2MjM0NjM1WhcNMjIwODA2MjMzNjQ0WjBhMSMwIQYKCZIm\niZPyLGQBAQwTYy0wMjhiZjgxMDhlODQ3YTc5NzEVMBMGA1UEAwwMZGUzMTZiNjIw\nYzljMSMwIQYDVQQKDBpFSkJDQSBDb250YWluZXIgUXVpY2tzdGFydDCCASIwDQYJ\nKoZIhvcNAQEBBQADggEPADCCAQoCggEBANRzCokDEYv+L3yGgtpm/IG+mM6t1CSj\ne5m8hGC3mI0rEF3lF6VYe0LS7vVNVrLFTP1quPenzjsthEdy0mXa3G/gGi6ehGEA\nV81wLUMvP46xS4/GWDgDc8F1K2fXPe/VFq7AVZq5sYGqzEdlDclKL9F8WHWAo0+n\nvGV3XpIc7Gkb0m4uMvrvE/wx2dsG2Wdy40n5CFyNZiqVNUumUZtDcP9KRV0zF50P\nTh1u94QsmQMDt005sJCNq+cZUf7Iz+ed8qXsEmyDYlqj0C3NoLG39TYsyE/ja7FR\nFYr4eLfiW0ait2L1xfGt6aLLL17aKF0Fkv/7EQCHVXMMM2Jx/27cdpUCAwEAAaOB\njzCBjDAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFClp6rDTwt8xhO4wtFyH19zv\n+OCbMBcGA1UdEQQQMA6CDGRlMzE2YjYyMGM5YzATBgNVHSUEDDAKBggrBgEFBQcD\nATAdBgNVHQ4EFgQUe70ii9BZwvO3sDTBw1mSOHwnV2cwDgYDVR0PAQH/BAQDAgWg\nMA0GCSqGSIb3DQEBCwUAA4IBgQA/2d14Xzsykh53eV0+a2gWUiqtys5WMWb85C32\nc43ks+ZI0Rdv7/Ewi3a9bU3jQHj1l81E2jLVAE/tLQcodEHVied2ndDZyliaBBXf\nuRW7McsVlzaMYmmD/8gjAUzK+lSusgeejVLgTg7OwKO/PTfW08KfsMvt+fEiUMZH\nI1H2dNVY+tWxyVlKWVgrqRGMAfZQlrfyiOQR3iGPeUpo3BfwFOUTSihR5PoQWoUZ\nP6Or44gyRk1vHzXfiaE6/a8kfhUZDv3buB+G25Im4J0UV4NiRis5rz3CrK4PhD29\nOa1HI80oazC0pCixR3Y5ehTP479VCpTYwJoIa6hfWAlGkvai5pY2DJMvmaKBqrwS\nh44hyIjhumo4obBw8iBX9FfIYeG2LDd2LKwkDFZSbqgxPfBp32gb6lwqMjmmFPS7\nlr6K7n1w3hmw17caO0JjuLSG1rYyxUniL5eAZq88lwQpV5HxRJnTAWJLb+5w9waS\nNT7a/A7BsDlRpaE/78n3Gt/EtXM=	\N	0
\.


                                                                                                                                                                                                                                                                                     3210.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014227 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3211.dat                                                                                            0000600 0004000 0002000 00000023527 13713115123 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        -1753298722	<?xml version="1.0" encoding="UTF-8"?>\n<java version="1.8.0_252" class="java.beans.XMLDecoder">\n <object class="org.cesecore.util.Base64PutHashMap">\n  <void method="put">\n   <string>encodedvalidity</string>\n   <string>3652d</string>\n  </void>\n  <void method="put">\n   <string>signedby</string>\n   <int>1</int>\n  </void>\n  <void method="put">\n   <string>description</string>\n   <string>ManagementCAcreated using CLI</string>\n  </void>\n  <void method="put">\n   <string>revokationreason</string>\n   <int>-1</int>\n  </void>\n  <void method="put">\n   <string>certificateprofileid</string>\n   <int>3</int>\n  </void>\n  <void method="put">\n   <string>usenoconflictcertificatedata</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>keepExpiredCertsOnCRL</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>crlperiod</string>\n   <long>86400000</long>\n  </void>\n  <void method="put">\n   <string>crlIssueInterval</string>\n   <long>0</long>\n  </void>\n  <void method="put">\n   <string>crlOverlapTime</string>\n   <long>600000</long>\n  </void>\n  <void method="put">\n   <string>deltacrlperiod</string>\n   <long>0</long>\n  </void>\n  <void method="put">\n   <string>crlpublishers</string>\n   <object class="java.util.ArrayList"/>\n  </void>\n  <void method="put">\n   <string>keyvalidators</string>\n   <object class="java.util.ArrayList"/>\n  </void>\n  <void method="put">\n   <string>finishuser</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>includeinhealthcheck</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>doEnforceUniquePublicKeys</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>doEnforceUniqueDistinguishedName</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>doEnforceUniqueSubjectDNSerialnumber</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>useCertreqHistory</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>useUserStorage</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>useCertificateStorage</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>acceptRevocationNonExistingEntry</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>extendedcaservice3</string>\n   <object class="java.util.LinkedHashMap">\n    <void method="put">\n     <string>IMPLCLASS</string>\n     <string>org.ejbca.core.model.ca.caadmin.extendedcaservices.CmsCAService</string>\n    </void>\n    <void method="put">\n     <string>extendedcaservicetype</string>\n     <int>3</int>\n    </void>\n    <void method="put">\n     <string>keyspec</string>\n     <string>2048</string>\n    </void>\n    <void method="put">\n     <string>keyalgorithm</string>\n     <string>RSA</string>\n    </void>\n    <void method="put">\n     <string>subjectdn</string>\n     <string>Q049Q21zQ2VydGlmaWNhdGUsIFVJRD1jLTAyOGJmODEwOGU4NDdhNzk3LENOPU1hbmFnZW1lbnRDQSxPPUVKQkNBIENvbnRhaW5lciBRdWlja3N0YXJ0</string>\n    </void>\n    <void method="put">\n     <string>subjectaltname</string>\n     <string></string>\n    </void>\n    <void method="put">\n     <string>status</string>\n     <int>1</int>\n    </void>\n    <void method="put">\n     <string>version</string>\n     <float>2.0</float>\n    </void>\n   </object>\n  </void>\n  <void method="put">\n   <string>extendedcaservice4</string>\n   <object class="java.util.LinkedHashMap">\n    <void method="put">\n     <string>IMPLCLASS</string>\n     <string>org.ejbca.core.model.ca.caadmin.extendedcaservices.HardTokenEncryptCAService</string>\n    </void>\n    <void method="put">\n     <string>extendedcaservicetype</string>\n     <int>4</int>\n    </void>\n    <void method="put">\n     <string>version</string>\n     <float>1.0</float>\n    </void>\n    <void method="put">\n     <string>status</string>\n     <int>2</int>\n    </void>\n   </object>\n  </void>\n  <void method="put">\n   <string>extendedcaservice5</string>\n   <object class="java.util.LinkedHashMap">\n    <void method="put">\n     <string>IMPLCLASS</string>\n     <string>org.ejbca.core.model.ca.caadmin.extendedcaservices.KeyRecoveryCAService</string>\n    </void>\n    <void method="put">\n     <string>extendedcaservicetype</string>\n     <int>5</int>\n    </void>\n    <void method="put">\n     <string>version</string>\n     <float>1.0</float>\n    </void>\n    <void method="put">\n     <string>status</string>\n     <int>2</int>\n    </void>\n   </object>\n  </void>\n  <void method="put">\n   <string>extendedcaservices</string>\n   <object class="java.util.ArrayList">\n    <void method="add">\n     <int>3</int>\n    </void>\n    <void method="add">\n     <int>4</int>\n    </void>\n    <void method="add">\n     <int>5</int>\n    </void>\n   </object>\n  </void>\n  <void method="put">\n   <string>approvals</string>\n   <object class="java.util.LinkedHashMap"/>\n  </void>\n  <void method="put">\n   <string>policies</string>\n   <object class="java.util.ArrayList"/>\n  </void>\n  <void method="put">\n   <string>subjectaltname</string>\n   <null/>\n  </void>\n  <void method="put">\n   <string>useauthoritykeyidentifier</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>authoritykeyidentifiercritical</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>usecrlnumber</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>crlnumbercritical</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>defaultcrldistpoint</string>\n   <string></string>\n  </void>\n  <void method="put">\n   <string>defaultcrlissuer</string>\n   <string></string>\n  </void>\n  <void method="put">\n   <string>cadefinedfreshestcrl</string>\n   <string></string>\n  </void>\n  <void method="put">\n   <string>defaultocspservicelocator</string>\n   <string></string>\n  </void>\n  <void method="put">\n   <string>useutf8policytext</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>useprintablestringsubjectdn</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>useldapdnorder</string>\n   <boolean>true</boolean>\n  </void>\n  <void method="put">\n   <string>usecrldistributionpointoncrl</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>crldistributionpointoncrlcritical</string>\n   <boolean>false</boolean>\n  </void>\n  <void method="put">\n   <string>cmpraauthsecret</string>\n   <string></string>\n  </void>\n  <void method="put">\n   <string>authorityinformationaccess</string>\n   <null/>\n  </void>\n  <void method="put">\n   <string>certificateaiadefaultcaissueruri</string>\n   <null/>\n  </void>\n  <void method="put">\n   <string>nameconstraintspermitted</string>\n   <null/>\n  </void>\n  <void method="put">\n   <string>nameconstraintsexcluded</string>\n   <null/>\n  </void>\n  <void method="put">\n   <string>catype</string>\n   <int>1</int>\n  </void>\n  <void method="put">\n   <string>version</string>\n   <float>24.0</float>\n  </void>\n  <void method="put">\n   <string>serialnumberoctetsize</string>\n   <int>20</int>\n  </void>\n  <void method="put">\n   <string>catoken</string>\n   <object class="java.util.LinkedHashMap">\n    <void method="put">\n     <string>version</string>\n     <float>8.0</float>\n    </void>\n    <void method="put">\n     <string>cryptotokenid</string>\n     <string>-1976464370</string>\n    </void>\n    <void method="put">\n     <string>propertydata</string>\n     <string>certSignKey=signKey\ndefaultKey=encryptKey\ncrlSignKey=signKey\n</string>\n    </void>\n    <void method="put">\n     <string>signaturealgorithm</string>\n     <string>SHA256WithRSA</string>\n    </void>\n    <void method="put">\n     <string>encryptionalgorithm</string>\n     <string>SHA1WithRSA</string>\n    </void>\n   </object>\n  </void>\n  <void method="put">\n   <string>certificatechain</string>\n   <object class="java.util.ArrayList">\n    <void method="add">\n     <string>MIIEszCCAxugAwIBAgIUOc+s7Tv+E/E0nDePbdzLWOJPKtQwDQYJKoZIhvcNAQEL\nBQAwYTEjMCEGCgmSJomT8ixkAQEME2MtMDI4YmY4MTA4ZTg0N2E3OTcxFTATBgNV\nBAMMDE1hbmFnZW1lbnRDQTEjMCEGA1UECgwaRUpCQ0EgQ29udGFpbmVyIFF1aWNr\nc3RhcnQwHhcNMjAwODA2MjM0NjM1WhcNMzAwODA2MjM0NjM1WjBhMSMwIQYKCZIm\niZPyLGQBAQwTYy0wMjhiZjgxMDhlODQ3YTc5NzEVMBMGA1UEAwwMTWFuYWdlbWVu\ndENBMSMwIQYDVQQKDBpFSkJDQSBDb250YWluZXIgUXVpY2tzdGFydDCCAaIwDQYJ\nKoZIhvcNAQEBBQADggGPADCCAYoCggGBANKJTlvqpXdF6thWsT8U1Qd4rNA/I+fn\nxr23yEgUiHBWe3mouGIg9CnYin0fuXeJDiBvm8jPsjfY/X2DN41fkWBwIRURm9/v\n0KsFHt2wNeWTWH8paLJlettPVECxSeIrJVM4cfVl8yOOqHKB7ez+M6W7KQESqFpg\nveC4PtAdENOtwv4KuVEejzHOgPrqkoSAovJx9RvUuNTuM3PlK5Dzgs3QL5aJ7hJM\n08KCPs9LmDtLCzn53uuopd9jI69k5xOSvuMxENzeiV04bCW/UuFEFKYtpZ1YFCh5\n5K+As84lTqv/nAt2X6b1BjYobCQ+KhbiWKXxQPjALkmIiZfAlWG3bNMK5SWDEZcw\njW73cjYeXJsX5a2N7kzFxDfpw7oJ/DZEF3cY735QsKBDR5hTMcs6GaFgbOioceVZ\nbwNaffk1GA7HCcXURDjvL8uak2jHwPJDlZk16fgrcKyP8qUkc4zHHM1HSP+A8Q2A\n/+vg2YMk/kJB98wIiO9veOVcHvDxjfGphwIDAQABo2MwYTAPBgNVHRMBAf8EBTAD\nAQH/MB8GA1UdIwQYMBaAFClp6rDTwt8xhO4wtFyH19zv+OCbMB0GA1UdDgQWBBQp\naeqw08LfMYTuMLRch9fc7/jgmzAOBgNVHQ8BAf8EBAMCAYYwDQYJKoZIhvcNAQEL\nBQADggGBAA575fu+Ot89rnG5AjLGP1JBzKn0PhOGDC6CeYiWYt3KFZcFvKiLJGQ4\n6gyelIZV2DbxDQ8O/1SJJMBdddBOJBc/94yHJE6UsUpOUPyo8qA0e6TDzGiSvhHm\n4uXKD+YfpI2TtnxXnR5h1RGwgv5sKXx761a3vjtNQRAjqoi6it2Vj1kjXv0i3LNP\nX8Bq9YFM0nYUPosIL9PldxrF9LVyEgnoqsdb3Mf7RJ6fmSoTVaGGXU7bPYMjH1gC\nRVPVLLVPhwDUr0z5//NQZu++4uhi1yN4Pe94Av3gYqTAoAZkiFZyBAJwReXetwXT\nULVx8aoLVwW1buFLZhvmukrwztVzt0cxNR8cxty9yNnugR22EroqXlJ2rpV2FHot\n3dz2rhbQMGwvkxPc7jbYwEqGBq+sds6kAoCNSvLH4LEKsAEx5RrneWUI6PkpUEq+\naEUN31Kc19qgv1Xdp3WMU886eUz5HOLOm9L7/0LKA/98pAwk17BHsN1lNJWD/4Wc\n/GebT70i4Q==</string>\n    </void>\n   </object>\n  </void>\n </object>\n</java>\n	1912290395000	ManagementCA	\N	2	1	UID=c-028bf8108e847a797,CN=ManagementCA,O=EJBCA Container Quickstart	1596757595798
\.


                                                                                                                                                                         3212.dat                                                                                            0000600 0004000 0002000 00000001417 13713115123 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        b60a047c50f58cc0ae8ecf2ac5bbb024b84bc91b	\N	b60a047c50f58cc0ae8ecf2ac5bbb024b84bc91b	0	0	1912290395000	UID=c-028bf8108e847a797,CN=ManagementCA,O=EJBCA Container Quickstart	1596757595000	-1	-1	\N	0	330043792232899614525855748200361488463506123476	20	\N	UID=c-028bf8108e847a797,CN=ManagementCA,O=EJBCA Container Quickstart	KWnqsNPC3zGE7jC0XIfX3O/44Js=	\N	8	1596757595760	SYSTEMCA
49daa0ec594f7fd275479085eba185be6915f841	\N	b60a047c50f58cc0ae8ecf2ac5bbb024b84bc91b	9	1	1659829004000	UID=c-028bf8108e847a797,CN=ManagementCA,O=EJBCA Container Quickstart	1596757595000	-1	-1	\N	0	290520691227077270195472673864884358196086293392	20	dNSName=de316b620c9c	UID=c-028bf8108e847a797,CN=de316b620c9c,O=EJBCA Container Quickstart	e70ii9BZwvO3sDTBw1mSOHwnV2c=	\N	1	1596757604068	de316b620c9c
\.


                                                                                                                                                                                                                                                 3213.dat                                                                                            0000600 0004000 0002000 00000140217 13713115123 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1393252112	gdsf	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000174000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740002327974001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0010740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001571007e001571007e001071007e001071007e001071007e001071007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0015740010657874656e6465646b657975736167657371007e001700000002770400000002740011312e332e362e312e352e352e372e332e32740011312e332e362e312e352e352e372e332e3478740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008977ec8de7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e00a00000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a6770c000000013f40000000000000787800	\N	0
1679564979	gdfs	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000174000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740002327974001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0010740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001571007e001571007e001071007e001071007e001071007e001071007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0015740010657874656e6465646b657975736167657371007e001700000002770400000002740011312e332e362e312e352e352e372e332e32740011312e332e362e312e352e352e372e332e3478740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008977ec8de7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e00a00000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a6770c000000013f40000000000000787800	\N	0
569949013	gdfsgdfs	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000174000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740002327974001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0010740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001571007e001571007e001071007e001071007e001071007e001071007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0015740010657874656e6465646b657975736167657371007e001700000002770400000002740011312e332e362e312e352e352e372e332e32740011312e332e362e312e352e352e372e332e3478740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008977ec8de7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e00a00000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a6770c000000013f40000000000000787800	\N	0
1485981543	hgfd	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000274000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740005323579376474001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0015740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001071007e001071007e001071007e001071007e001571007e001571007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0010740010657874656e6465646b657975736167657371007e00170000000077040000000078740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008ffffffff7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e009e0000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a4770c000000013f40000000000000787800	\N	0
1100406121	ryetr	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000174000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740002327974001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0010740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001071007e001571007e001071007e001071007e001071007e001071007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0015740010657874656e6465646b657975736167657371007e001700000001770400000001740011312e332e362e312e352e352e372e332e3178740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008ffffffff7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e009f0000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a5770c000000013f40000000000000787800	\N	0
53898179	reytreyt	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000c07708000001000000006d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704238000074000474797065737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000174000b6365727476657273696f6e74000658353039763374000f656e636f64656476616c6964697479740002327974001c757365636572746966696361746576616c69646974796f6666736574737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787000740019636572746966696361746576616c69646974796f66667365747400042d31306d74002375736565787069726174696f6e7265737472696374696f6e666f727765656b6461797371007e001074002665787069726174696f6e7265737472696374696f6e666f727765656b646179736265666f72657371007e000f0174001d65787069726174696f6e7265737472696374696f6e7765656b64617973737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000771007e001571007e001571007e001071007e001071007e001071007e001571007e001578740015616c6c6f7776616c69646974796f7665727269646571007e0010740016616c6c6f77657874656e73696f6e6f7665727269646571007e001074000f616c6c6f77646e6f7665727269646571007e0010740014616c6c6f77646e6f76657272696465627965656971007e0010740018616c6c6f776261636b64617465647265766f6b6174696f6e71007e0010740015757365636572746966696361746573746f7261676571007e001574001473746f726563657274696669636174656461746171007e001574001373746f72657375626a656374616c746e616d6571007e00157400127573656261736963636f6e737472616e747371007e00157400186261736963636f6e73747261696e7473637269746963616c71007e00157400177573657375626a6563746b65796964656e74696669657271007e001574001c7375626a6563746b65796964656e746966696572637269746963616c71007e0010740019757365617574686f726974796b65796964656e74696669657271007e001574001e617574686f726974796b65796964656e746966696572637269746963616c71007e00107400197573657375626a656374616c7465726e61746976656e616d6571007e001574001e7375626a656374616c7465726e61746976656e616d65637269746963616c71007e0010740018757365697373756572616c7465726e61746976656e616d6571007e001574001d697373756572616c7465726e61746976656e616d65637269746963616c71007e001074001775736563726c646973747269627574696f6e706f696e7471007e001074001e75736564656661756c7463726c646973747269627574696f6e706f696e7471007e001074001c63726c646973747269627574696f6e706f696e74637269746963616c71007e001074001763726c646973747269627574696f6e706f696e7475726974000074000e757365667265736865737463726c71007e00107400177573656361646566696e6564667265736865737463726c71007e001074000e667265736865737463726c75726971007e002f74000963726c69737375657271007e002f7400167573656365727469666963617465706f6c696369657371007e001074001b6365727469666963617465706f6c6963696573637269746963616c71007e00107400136365727469666963617465706f6c69636965737371007e00170000000077040000000078740016617661696c61626c656b6579616c676f726974686d737371007e001700000003770400000003740003445341740005454344534174000352534178740011617661696c61626c6565636375727665737371007e00170000000177040000000174000c414e595f45435f435552564578740013617661696c61626c656269746c656e677468737371007e00170000000f77040000000f7371007e0008000000007371007e0008000000c07371007e0008000000e07371007e0008000000ef7371007e0008000001007371007e0008000001807371007e0008000002007371007e0008000002097371007e0008000004007371007e0008000006007371007e0008000008007371007e000800000c007371007e0008000010007371007e0008000018007371007e000800002000787400196d696e696d756d617661696c61626c656269746c656e67746871007e00427400196d6178696d756d617661696c61626c656269746c656e6774687371007e0008000020007400127369676e6174757265616c676f726974686d7074000b7573656b6579757361676571007e00157400086b657975736167657371007e00170000000977040000000971007e001571007e001571007e001571007e001071007e001071007e001071007e001071007e001071007e001078740015616c6c6f776b657975736167656f7665727269646571007e00107400106b65797573616765637269746963616c71007e0015740013757365657874656e6465646b6579757361676571007e0015740010657874656e6465646b657975736167657371007e001700000002770400000002740011312e332e362e312e352e352e372e332e32740011312e332e362e312e352e352e372e332e3478740018657874656e6465646b65797573616765637269746963616c71007e0010740013757365646f63756d656e74747970656c69737471007e0010740018646f63756d656e74747970656c697374637269746963616c71007e0010740010646f63756d656e74747970656c6973747371007e0017000000007704000000007874000c617661696c61626c656361737371007e0017000000017704000000017371007e0008ffffffff7874000e757365647075626c6973686572737371007e0017000000007704000000007874000e7573656f6373706e6f636865636b71007e001074000e7573656c646170646e6f7264657271007e0015740010757365637573746f6d646e6f7264657271007e00107400147573656d6963726f736f667474656d706c61746571007e00107400116d6963726f736f667474656d706c61746571007e002f74000d757365636172646e756d62657271007e001074000c757365636e706f737466697871007e0010740009636e706f737466697871007e002f7400127573657375626a656374646e73756273657471007e001074000f7375626a656374646e7375627365747371007e001700000000770400000000787400177573657375626a656374616c746e616d6573756273657471007e00107400147375626a656374616c746e616d657375627365747371007e00170000000077040000000078740017757365706174686c656e677468636f6e73747261696e7471007e0010740014706174686c656e677468636f6e73747261696e7471007e004274000e757365716373746174656d656e7471007e0010740011757365706b6978716373796e746178763271007e0010740016757365716373746174656d656e74637269746963616c71007e0010740014757365716373746174656d656e7472616e616d6571007e002f74000f757365716373656d6174696373696471007e002f7400157573657163657473697163636f6d706c69616e636571007e00107400187573657163657473697369676e617475726564657669636571007e001074001375736571636574736976616c75656c696d697471007e001074001071636574736976616c75656c696d697471007e004274001371636574736976616c75656c696d697465787071007e004274001871636574736976616c75656c696d697463757272656e637971007e002f740018757365716365747369726574656e74696f6e706572696f6471007e0010740015716365747369726574656e74696f6e706572696f6471007e00427400117573657163637573746f6d737472696e6771007e00107400117163637573746f6d737472696e676f696471007e002f7400127163637573746f6d737472696e677465787471007e002f7400097163657473697064737074000a716365747369747970657074002175736563657274696669636174657472616e73706172656e6379696e636572747371007e001074002075736563657274696669636174657472616e73706172656e6379696e6f63737071007e001074002575736563657274696669636174657472616e73706172656e6379696e7075626c697368657271007e00107400177573657375626a6563746469726174747269627574657371007e00107400127573656e616d65636f6e73747261696e747371007e001074001d757365617574686f72697479696e666f726d6174696f6e61636365737371007e00107400096361697373756572737371007e0017000000007704000000007874001275736564656661756c74636169737375657271007e001074001c75736564656661756c746f637370736572766963656c6f6361746f7271007e00107400156f637370736572766963656c6f6361746f7275726971007e002f74000f6376636163636573737269676874737371007e000800000003740019757365646365727469666963617465657874656e73696f6e737371007e00170000000077040000000078740009617070726f76616c737371007e00003f4000000000000077080000001000000000780074001e757365707269766b65797573616765706572696f646e6f746265666f726571007e0010740015757365707269766b65797573616765706572696f6471007e001074001d757365707269766b65797573616765706572696f646e6f74616674657271007e001074001d707269766b65797573616765706572696f6473746172746f66667365747372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c75657871007e00050000000000000000740018707269766b65797573616765706572696f646c656e6774687371007e00a00000000003c2670074002475736573696e676c656163746976656365727469666963617465636f6e73747261696e7471007e00107400186f76657272696461626c65657874656e73696f6e6f696473737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000013f400000000000007874001b6e6f6e6f76657272696461626c65657874656e73696f6e6f6964737371007e00a6770c000000013f40000000000000787800	\N	0
\.


                                                                                                                                                                                                                                                                                                                                                                                 3214.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3215.dat                                                                                            0000600 0004000 0002000 00000002007 13713115123 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        95b4f0619b588045a653c2ead230e7856a6e3b12	MIICWzCBxAIBATANBgkqhkiG9w0BAQsFADBhMSMwIQYKCZImiZPyLGQBAQwTYy0w\nMjhiZjgxMDhlODQ3YTc5NzEVMBMGA1UEAwwMTWFuYWdlbWVudENBMSMwIQYDVQQK\nDBpFSkJDQSBDb250YWluZXIgUXVpY2tzdGFydBcNMjAwODA2MjM0NjM1WhcNMjAw\nODA3MjM0NjM1WqAvMC0wHwYDVR0jBBgwFoAUKWnqsNPC3zGE7jC0XIfX3O/44Jsw\nCgYDVR0UBAMCAQEwDQYJKoZIhvcNAQELBQADggGBAKFxv/jn+WYs3PcBLSZxwYMV\nnKhMx1FGE9dccW8TqW2KZQ29cL1gw4zH/Px48bqckLwIowHXvR0mJW0kwGNwECXt\nMqVFKCacPPWpXP1t2Xg07v8HCv25BZch3VIMbrc+I9sdIay4kARloNX6PG8kO6t5\nlrHsrKA5+hnvtoVKsB/NhthTdBj27nwzMRsrtSsWaJwEM8RAAD5S/AU9A6CjbVlP\npZjt3WXYsNItjNS6HLLhP0q/pCIBURBeo0UixmCTf0/UCzcUc0WLTSf7ko23Td+G\nvcudnpIkyC1sX9fLYhDDGvMs+drdbUu+IB2qPApIVnovD3ETBcT29DiX6JIIwAyK\nTVk/5evU1hDXEdxN0z1BtyjnBberWBcmnNAQ+XzdfmQZElLDJJrSV/2Y9wiwGDpq\nIkTN9FgMUrDGKZ6urhtWJ7Z68YC2+LTue811Fvwz0o2ZK+gLs2bnvTADod/tCjfe\nQ68cnVWXiosutRlYddm6LL9tgo6br/sh7AJsEYdQGQ==	b60a047c50f58cc0ae8ecf2ac5bbb024b84bc91b	1	-1	UID=c-028bf8108e847a797,CN=ManagementCA,O=EJBCA Container Quickstart	1596843995000	\N	0	1596757595000
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3216.dat                                                                                            0000600 0004000 0002000 00000021017 13713115123 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        -1976464370	1596757595458	\N	2	MIIY+wIBAzCCGLQGCSqGSIb3DQEHAaCCGKUEghihMIIYnTCCD0kGCSqGSIb3DQEHAaCCDzoEgg82MIIPMjCCB5gGCyqGSIb3DQEMCgECoIIHOzCCBzcwKQYKKoZIhvcNAQwBAzAbBBTVdCJ7lbHf2nAjlrhx+3Kcg4KAUwIDAMgABIIHCAD1lAc6ZyKVIjidGkdi8sPtPI5faKAdXWO3E4sVuptBQRMFMg3tE5z+okxiKLftZpJZ+NwhOmlVcCwDVye/CAKlcOl4ZXP+MnoeZbATCLzbHAq2o8lNUfiIwQy6KM0LwcpJzsFqDryq5YeUUvZMKz9qc0Fw28bsruLEwdHNVyQa3rqop3FyYwzKCeyo8u12GwrEhjMJjqiZjP3SYHt69IY7GwoojPI6cxGOsqoEu/HdtvNarjhisBvQRxVDQKMXgGsXxipLcOJICv3mAE8Z6Miz5jjyDRHit8+pBPc3Bs10S9cavruCzpP5xhRUJocSVqS82sG3Za9jqL+V8+mmry+Sg2qkb2K33stYGSAVMHpQG8iyNk0kBJyQwpwQmST4KwB6dWMDD8E8f/rlK0k0EDD0ovD79k1JlrOB3U1vRrkgSfQ7A2k4Ghjd8rarB+zTUae3Jll7MAYKQcftbzEwA8Y0IFrtVpQLRzwobn3hCa7EwuG+InJvXAu/IrxNEronsN3UZz/6YgMfHLTRq8iJV9a2k8cFhG8EbkWdWiZhs/YHO3qEJTvbUT/r78ei1JLSKlFkMi6N2AEiRhR3a+28NT7CSRHOD59ph+OlI0TO/rqoQ4JULNrwGdK4WBH4VcqklxWZKwwzW7pNAN4EJFw3BSnvJYXl2RV3T+xWTVNFuWYOlxQK9fhQRoB/+Der7wLgEdH7mWS4wAATBxQu9P4ATFjyfRLy47Nd1sme/ccHrgKJ+nBdyfTQ3wheRLpYBoMNbQ+jCjHzU6nSTWf1ADYUEf4HOkLKpOKPlojK7NHt9LjUakmvkelutqrdYwMROaX22VRP4FATNPgGeIcTP3WTbx9/cjzXo5UUqKTQ2PM77GZbBX2bW31yZFbEHiRw95QQDQUT6/YiGhWzKj1l9/pw28q0T3govu34cvlBUPbvLBCIiYuLl1FfBHuLp9StyguRTOMfNjCmLM4F8DtqYmYncj004CcCN4bjNw4GaTiVQYlL9pYIK68aSvTDLmSUOHXdeKO56TS+rLBzQnLNmvtFx/iYEWo3FoPMlmf5T85E0TyKeaGMjriZRqvmckgeR1YcrT4tOeq1zjh4TI6fwZkR3UFAuj2VXpCQ4cd1qW/gN1C/R4NaM+vyyDmWg8ni1+0PVEFg47F3bA7grFljjRgaJdti3u/JWTeQ6uXPks0gGJ+8KlavpZKsCw8aOkNrnGh2FvOVNjyeUfjurlvaeB+3RMo54jIJm8ZHWwNRzB8hVp3czS3pEu+C4biAUzT9tzrbw2ef0RnJ6UMZgA1Dh5qJdHr1muKrkWd52qB7vtMU3p8Lh1szagJ/qXejcSjZTRYOhwUHsTJqdQGxeSFde4qfe3TwyIYCpOv7M5UEgG0y+E+M0VnRAviO7jYpl9gprShORkvkYDt4vNHTTzLuEDA5IF5msovr22hmcWy19FjJaCvy6KLr582R+5VWrBNGcA+ORKfcEM0ympQ/mrYF7YC9uUmysdTxu2PZeFopHMex0H9OiAS5unIk71rG5vytgstAdgXj0VzH5++C/MbrBFVstnxZLPBYLI7x80CsKFizGV1gwvQJmwBV4RqylXM+8pz2HI4dztLom1xhmeZtFKtwT9zfnT5o13zXX/W8ykXt/O2t/LCybMbcVKtrpYMqRpvttPrQ8/Uet++32pXZQgjVb7oAvdd/B4rGIU2KShqSC4DlvWf+MpxPp6t4IiYrePUJ/kCfB6e+LqIt9zM37kOID2XaCVaO+Sz0eUvFnbMBY0XYS+pBMEUencIsEe194CfGJ3Yni/cBW6uvFrFYaBJf3TcvSBvU/dgznTq65BSKzOG51g+kwaIsPU2TkeBHW6e3A5Kkscq4w7tEk04bEGO8aRwWau6EwoIpVyIqEn4eI125yuz4vYHVG1Tc8J56wwM85fFsCLar4jFaZplST6E9lMJ9hLmwEh71CmtIInbq1dEkYI53z5e9o4NFOQfQiGsOXaovgXAj8LchCtTZxPRgAjNgkjDt8LervHkgRKChl874Z/BAQyUgklwrTOIbo788xEqysFJ6oduLNxjUyI0DJ5I1gA5NwhvsICnTiTW1oYD8qSgXy+kkhAph7+k2Vz+v+d7hzHzmXCjC+nnO/51sdPJZ+iPKG4ZcfXvI0W4nKyjw5cw1VBwSXcbCHZmsbrLVWhJ51y9cf3Z6oAzbwCshNsTEOrMWR7S7Sfha8IBaOtQpadFQI4kilAfw4D7d0WO8mBm3lQ2+ztAolHmnNdxo0JU9bLui3S8/kg2CZEclTkXY9fVy6tjnvLl/g4c9Sl9Sxb8PIhOerUYbDfoqNh76HYVgSmSMkQw/qwp3iCUEUF48sDzHw8wFx9cbXOf+eSJp4P8jLLNoqRaTmJMFYOlCMV1LqQhc0ujZ8zFKMCMGCSqGSIb3DQEJFDEWHhQAZQBuAGMAcgB5AHAAdABLAGUAeTAjBgkqhkiG9w0BCRUxFgQUeHHs0aL//yTYDAPHHXupR6BnMoMwggeSBgsqhkiG9w0BDAoBAqCCBzswggc3MCkGCiqGSIb3DQEMAQMwGwQUPvZG9k8CVvCmCkYPS1QEZ5Sw1XYCAwDIAASCBwhNjufH/GOhtti42EtcGfrLQS7+Gez6i3lnf0oVHSFAUwWcJ2x2BLRRsIBW0Pfjce+IJ07cB+0FeK+yEpktojLmBiEDY8b4gVQYMw8ENDR9NvLjISOrQHKsWWIe7Jf6XSKKCvoQ/NlMDod1mqjQ272qISfQawR7yEBsdxhiRCIP1LiMR52X5cJYw7ACTfcEGxc8/2WpKnXKDI6NFms7OJBKQREal362+IZAYL6iH/KO8h8jxWK4jLR4gXxr/s5RnMrkIUYKPH91jusZOvUNqXrmlzs2pZNJ0R6nRF57U4R6UNwheEMbP85Q80BSuynsf1iGPCuPQ/amaUUY5K6gjDxHO5XZRvM0/fbcIzSQYEEeyyUGEIegeAiesCx89D1Nvt4u+Kg1yt/lLrfVJzcX8H1AstN5RdfgT07wFz4AR5yKrJbL3Xk9oNHq/EdXG1JPava9tZB9YiRpM8yjAcggcSlNTCc4rUocu6UB9wLiY7S45k5xgD48rz/ed4XnGmPNlX7vYrLOH+nk+58y2B5+KIAPSDQGdiqiI485KdONhRhHzpY9cPdFtOz6OymK2G2OFVJ36Gc4dv68urpt81hEVhi8nocLjAs66gEtsnEwBUh/Vuz3HtO3RWX59fM9cyMsLn+Oo3U5EzR+pXM115KobxBu1oOcw5cFylD4rwR2rMrvL5M6Dq6pcDayc8U9utxutku07hiRyg635ArMNDgADC3s7xWYNXzflxqy5ly26ONOxFifA8oezIDtQ2kf3EvGxV1Ma7J4NX98qE/nnadOIfN2E3IImBH4MQ3LBpq4n0qpy4Z42ik4SskULvL7NVax7G80V+CHIp+YDFc606dEZXPdOfMplwRpvPlknCtEJ2leK4xgen1D2Gi0Jiu7Loy2f0p1ZoF1Fe8Nzo8ed8kHAV8sNxotYxcem9hXhVD3JOfWtMCp8p2lRcTDAQjTCqyjUDIP/aINyFIJP29o0ZzmBTN0aP4X8gqRwqJDp7XMVai2cQc989o7MPKLjWQU6jYCHCu76dDvMrLjcrKjP7URZCmbQvJL/T9nQHurmrB3NF4N1OIt9lxb9KS91p1XrZHzgSfXiCVBzkfepGPxwQQd7Q8PWnu9YzajF9g5TGPKFdusw31552C5R4fPOKRoN46PGOoZnDdMHFJlcKhxRTuTOZWTNsgvuv9oTFuS68DxliaNQAD8nj3xZ1U2WUTLacR04AILANwUM7+s9yrRf/LJJoJsb7w7jZu9hNH49Yc8xDbXX4VNaTB8nCxb7orQBvCzxE29RN1nDdr+Oo2t2hYhdlZ/OQ9O6InkaUIkP6O2z9w0g1AmiiddY5XmF6ZIdT5qRo9PaqXVw4RtBuwe24rPwxmqbSZ9nDOJ/lWxAnnHKRBJa/GoqWnH6hL9pytSlPP7dTEoQI3CKHqiOdH70QROZqvI2X8JqbPWZlls4xNeOzyO/IrMKTmudkDJh6tk5xRhXS8WPg1GOQx/dUWEhII+WTo9xRHwzqNsk2AgAjMPmdpjW2ClFWOc+dT9ChUmazjJ+tb1f/C8+vDjrLr9IhKAAqwBIHXaNT8YMsb0zibd2HvLBZP8lbdSwVvzr4yLL0EXymkdf1T1S+eU7PwMZKCzOD8vWQt6N/yAKlGKIlCig6jNTW4zmhoWmrkE+ZaqJ/iT8fvvSpzOznt/GovOJ+1LAIGWfZZM1tWKJdXyXWZy85esCUqj2CLG22pUkpaBKllAeLhYUxjS8n/XhdvRyCxkOe7pYhfK3Y9P5d/5dPm1FHJK/84MX2vNoKY+Or17mGdYbnuQSErGsqLrddg5/fXTRU6miC8LZ0H2hpPhp16I5FxAfUb6PwUIcjBeeQqMGdYJG7CWmcZ+u6KGDNjFbgXTnriw118wee76KOYHm6fNqpNhRZML43XbpMr86/lZ71ooe67JsX1vDTGR7Z3DEvONrKvWoAKdHWkfY6LwqnzewxqChxdxYHb75Ei8U6kZNln5Dj/01M9VK0qaUt7VrhHUX/domLqtBaP/vFVdRzv74uoJHvpt8IpvpVkzHOs/AIklZmhM06vOBQSPyVUhFfZSjFZ2y7fmicgtSo3vWKk1DJKjgKs+3JhSOZ3yuLhv4DYQHqZSV3ecCL86kNj447LWpB2GBl/BXB6y9W17px5ISQzICIWrF7ywkyzZpW26KahO6VsQXSlA40J0NfrGqMpMESDro0dZGHNOo5YWvn8gosVJXhG3u3BuWX42M13B/+AShdJb+xPAkSBEPuF35jniIUrYypC/hJyJE2N5ssMEL80Tcl7+Cv1nkrY5jI06add2pcB/OQQw/viOlAyYZggG2rAaIg3OzG54mtuEIF96hUUowFQD9LPyOOA1qeYTZTaYktfzwv4R/1LWSe6T8vlhW6pgbFiEXvr9PawxRDAdBgkqhkiG9w0BCRQxEB4OAHMAaQBnAG4ASwBlAHkwIwYJKoZIhvcNAQkVMRYEFClp6rDTwt8xhO4wtFyH19zv+OCbMIIJTAYJKoZIhvcNAQcGoIIJPTCCCTkCAQAwggkyBgkqhkiG9w0BBwEwKQYKKoZIhvcNAQwBBjAbBBSBYIG0E5EGFcZXBSmj4U5pwcK4jwIDAMgAgIII+PVbo2KrgpnkibKFDd4PJTkNWAOylurbYUMLbFxW1xqokJ8sUwTzmFUjw0LE/SZiUii+K+HvDC+bZaldbSgk63UeLMfyTLhewbl2mUERJsGYH7OjV/fe70qKAQDd2EO0AusIDWSP/g5b0MlgdHL92Aj90Ncv1ApFuv+iW7kkO0IU8KNovrAlDIiwEaDTUGNtQ+y5XQnhQRKDIqbLluvpPSnLG4xu6UBchZbzISi+IcxH71lE6S6T6Q/LIJmoI0SHx1vIXwlB1dNLnlB7Jlpi+ki1tzbZjjVp1kpHXv7x7Mql2qYFCtMYg6NmVv0sNs/BXy/fXW+WWv1Kxgzzf7aorm3KjJwNUaMVTlhEKzrktxqBqdOOWQR7c5/j4XDvUNLDRSvW5WqRalScMqp4650ymcL3z2W4PO8Xkr+2fCb5HB89HsNUWPEee0maIS5AZ9wM5qEFhdp8V6Dopo2hBtCoQCo8QwOFRts9UMW2UbOUKMyKmXfjVfc82n250CH4RaqLOQ6X53EzkBEfZB9EB+wfTrAjhLzxGKLq/WdviQkLSpOK8RknNpd9hQDU2Jl6NU62pWz+EYdh5ZnXqPzOU9nFmJtxhUlzPWlpmTs26giB6tnvWn33hCd0PwoPAyuubXAksP96u+O0b0AG2E/05TTnml1n4o5SZJK/b+u+fS0CfF8VEym5IgsoVma3cYFMomIXZtRQCsb+mf1ObR6LskhIzRSFkEsYgQ+ha1w898iKJ+oWL6imh1ueXXIVCbdDZ1zwElVD5yv1oXlWApj1PQZ4YVDZv/lfKBa1/fAOquJ6OP0HuZFxCO9Vd9FLzdkAo/OPSrhtrubpjk+M0oVFV4AEI3Um0MRJri+eLcEcoN7sBg5st/Fk9P1yCx7p665O0wlPpoqc+Isc2iWE6Lq2YvE9ifC2tTbDKIRtT64oaDjz/iZAZD+6JGpkj2QFOGmsgkSYNHGQDk9sS06p4kCK7pqWdvkDj0k05uMtLD+ukeALFWL+8uglb6Q8DtVAzZ9IdWKkErP+upEVS7TzsD/jFGz8dmrNUYmm4rZNSYYI/q7nhw8eGCJSJ/fw6dnxUwfJ29cUIPjhytb3ROpzbPD+cxJfeZ4PCyqU5TcP3+L5yZfTGBQcAV8WOD8HVpwozvLyX8fq9ECVVzKwCnKDD0o0V4Ii6pO/zxtsb56JksWsZjlW0eGB4P8VsHa5eQ18fD/15i/0YR9mXKPfUggPSuspt3TEFpcE+8kZhZBC57+sQzl63nmShe6PQLvbcjeU8q1fGoJkDzuM16fsQ8d12jWu3W1rtpqTz4BOV8+Kkjjmwt+45ihIsnt13Du/66E8SvL6fdu/G/GTEIN2MqNa02CxhVPpOORKlfE04Xu02YbgmAHdAopeM+XcGyorbB78qKFqZgenN3jP1LwDCRkwoJV7dDx3DXXZXnBYCISSDOHJGGBJF1155z1ZNpT4Ri6a/mxmxoVyNZFUzbsFAW0b4fhSJxJVv5411UQOMqlprR7HU5JrsB6Sjl1y22Lu6nLP+q6BR2fNE4dtj3oogDOwIMjv4Eq34Jg/XAFiFXS+2RsSwdYz0sU7NNJueRsmlzrqKQzk2AudrzsP2GQFTUBe6RVRck+4fcmwK3JeZcV5qoqJOm30K+HlvcmM3nE9GetrgOj3bM2+F2Xn81uyDmI7m7D84MokmNMf7i4zuA12JafCSnXlBKdSgdXjvaK76sS54tHb1wIMjv8xrFG3Mxv3SCKOczboUAjmCYRqTsrwMxrI6/FBtG8nY0KlFFUOuwui+PW8cyDmDe18DIU4eYeFj6/+tJnPYuOUqVweS265w8JwKvssXU0ygywRKp7h1wiXBSs+HNxuAsKgeYWbUEy2r35avv0zDgfMCsjtE1F66q+Em29UrhscxgGy5agR2cL58hml9uKN5wg6j/8Mhbh9nBN3N+rj/sTR/0A3AdQCqQGQs9IwHRVZcnVl/wNfwnBCoFSIBSARCbnx/NIxRBi53E0MMm0ld0OubjORFFtEUIlo+ifblf+cKW8boW98/vdnfZWApP3VZC+hpLw6B156ThmZ1Kuw6lH61pan7jI8taiTq2GlnoCoIxrLtQ47VD9xNGoE05ewcaZuCAmrxPSqH8xatIDt9CyUwaK26MjGA0j6G6mjAGSziFcfXoid1I0dF+e+dIYEZLCuARjf7lj3NK+vUMsrIJuwIgeVy4GFab/FFyO4IVMZF/zUwFOM2tFdX44TEx5Y342XEPRW04ppwVmRkI/zLFdjfEmEQrTRNlMWHa/03ZD8bCDz+fnwjU5DXnnHXO91hzyBY0sM5jKrjqieoWanFJ4oX07HLdrpf+U6GbthKGVRxBGzl8o/13mlOEpmkm4SIDpfCKLrwYFIZG4MeVIXWUb7NpDfNDZDzN5qE6YrPXFxBKNRjBSpsr4IfYJAsvhI3ZLT2yzWHWFgk4AVOLkk9WKkhjJriZmnR5aWOdAAbwMjyH3jFWChvTQ36MIXdlwq9xcVEbZAZ/3Or22eLf+43TWIdpnkU9Elzmw+SF/GOvmDFJeZaf98kSLqy59bgSHQnv+RwYPilyyP46Rk/gLSWanDs9wr4wJkyXpgxe+CJwcHV3M/vBXGfWGSDqS8FmYAPPo5dqyZoLphh1QT2kSKQRgzkrCfBQWtYoW1L4OIdqqkDh5zdjkwB7ozyOfX0l16Qse+XpUHBVES4nJDR1hF+nW4ztcIdF9h1vFxOenFaFRF44zHsBdGfmImBorv5/DelNjshlT2s32WKJVxsSzdAqnNhxTEFgGbqRIWcXnRL6B47mzGbKKDc9upTymX5zcNXjzxASg7LJVNOEGyDCWtaP8uOi322QAFN2Fy2l49Lhpp4QGeuqlWfroBZPj36jlMiAZLPWqFGJbvlmKeGRl/N7Y3ha1VPm8x1bb+XbTI6yJV6XeCjcP2qP5fU6+NTlvIMK5JFGKXzdLYASqnbYPKS8HVCB4HfqfbYIZo/6iTAvEkcEDk4Tk41JXk7qwss7+bZ3YiLCpVJJq0AiASfrGDPdZhxhGGZRHklhklQZzbusBA2XY+wYVHuZAwPjAhMAkGBSsOAwIaBQAEFHUF9nDA9mkvk5p3qLKl23BKjiobBBQBKu0jYiAp7m2HanXvyGfrQJbqrwIDAZAA	ManagementCA	I1RodSBBdWcgMDYgMjM6NDY6MzUgVVRDIDIwMjAKdG9rZW5OYW1lPU1hbmFnZW1lbnRDQQpwaW49NmJjODQxYjI3NDVlMmM5NWUwNDJhNjhiNDc3N2IzNGMK	SoftCryptoToken
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3217.dat                                                                                            0000600 0004000 0002000 00000067070 13713115123 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1952104549	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	fghdhgfd	\N	0
1136459016	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	gdhjdgjh	\N	0
1922015499	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	hgfdhgdf	\N	0
1148674591	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	rtyeytre	\N	0
483798933	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	gcx	\N	0
792116688	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000607708000000800000005d74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078704160000074000b4e554d4245524152524159737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000064770400000064737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e00050000000171007e000b7371007e000a0000000071007e000c71007e000c71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000c71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000c71007e000c71007e000b71007e000b71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000c71007e000b71007e000b71007e000c71007e000b71007e000c71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b71007e000b787400135355424a454354444e4649454c444f524445527371007e0008000000017704000000017371007e000a000001f4787400185355424a454354414c544e414d454649454c444f524445527371007e000800000000770400000000787400185355424a454354444952415454524649454c444f524445527371007e0008000000007704000000007871007e000c7400007371007e000a00004e20737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c75657870017371007e000a0000271071007e00177371007e000a0000753071007e001771007e000b71007e00147371007e000a00004e2171007e00177371007e000a0000271171007e00177371007e000a0000753171007e00177371007e000a0000005f71007e00147371007e000a00004e7f7371007e0016007371007e000a0000276f71007e00177371007e000a0000758f71007e00177371007e000a00000060740001387371007e000a00004e8071007e001f7371007e000a0000277071007e00177371007e000a0000759071007e00177371007e000a0000000571007e00147371007e000a00004e2571007e00177371007e000a0000271571007e00177371007e000a0000753571007e00177371007e000a0000001a71007e00147371007e000a00004e3a71007e001f7371007e000a0000272a71007e00177371007e000a0000754a71007e00177371007e000a0000001d740001317371007e000a00004e3d71007e00177371007e000a0000272d71007e00177371007e000a0000754d71007e00177371007e000a0000001e740005313b323b337371007e000a00004e3e71007e00177371007e000a0000272e71007e00177371007e000a0000754e71007e00177371007e000a0000001f740001317371007e000a00004e3f71007e00177371007e000a0000272f71007e00177371007e000a0000754f71007e00177371007e000a00000020740007313b323b333b347371007e000a00004e4071007e00177371007e000a0000273071007e00177371007e000a0000755071007e00177371007e000a0000002171007e00147371007e000a00004e4171007e001f7371007e000a0000273171007e00177371007e000a0000755171007e00177371007e000a0000002271007e00147371007e000a00004e4271007e00177371007e000a0000273271007e001f7371007e000a0000755271007e00177371007e000a0000002674000b2d313735333239383732327371007e000a00004e4671007e00177371007e000a0000273671007e00177371007e000a0000755671007e00177371007e000a0000002571007e00147371007e000a00004e4571007e00177371007e000a0000273571007e00177371007e000a0000755571007e00177371007e000a0000006271007e00147371007e000a00004e8271007e001f7371007e000a0000277271007e001f7371007e000a0000759271007e00177371007e000a0000006371007e00147371007e000a00004e8371007e001f7371007e000a0000277371007e001f7371007e000a0000759371007e00177371007e000a0000006171007e00147371007e000a00004e8171007e001f7371007e000a0000277171007e001f7371007e000a0000759171007e00177371007e000a0000005b71007e00147371007e000a00004e7b71007e001f7371007e000a0000276b71007e001f7371007e000a0000758b71007e00177371007e000a0000005e7400022d317371007e000a00004e7e71007e001f7371007e000a0000276e71007e001f7371007e000a0000758e71007e00177371007e000a0000005d7400022d317371007e000a00004e7d71007e001f7371007e000a0000276d71007e001f7371007e000a0000758d71007e00177371007e000a0000005971007e00147371007e000a00004e7971007e001f7371007e000a0000276971007e001f7371007e000a0000758971007e00177371007e000a0000005871007e00147371007e000a00004e7871007e001f7371007e000a0000276871007e001f7371007e000a0000758871007e00177800	hgdfhgdf	\N	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3218.dat                                                                                            0000600 0004000 0002000 00000004157 13713115123 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	\\xaced0005737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000b74000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870404000007400057469746c65740014454a4243412041646d696e697374726174696f6e74000a6865616462616e6e65727400186e756c6c6e756c6c2f686561645f62616e6e65722e6a737074000a666f6f7462616e6e65727400152f6e756c6c2f666f6f745f62616e6e65722e6a737074001b656e64656e7469747970726f66696c656c696d69746174696f6e73737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174001661757468656e7469636174656475736572736f6e6c797371007e000e00740011656e61626c656b65797265636f7665727971007e001174001369737375656861726477617265746f6b656e7371007e0011740016656e61626c656963616f63616e616d656368616e676571007e001174000e6e6f646573696e636c7573746572737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000c64653331366236323063396378740012737461746564756d705f6c6f636b646f776e71007e00117800	\N	1
UPGRADE	\\xaced0005737200226f72672e63657365636f72652e7574696c2e426173653634476574486173684d617007156f73c047aee9020000787200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f72646572787200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000574000776657273696f6e7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787040400000740021656e64456e7469747950726f66696c65496e43657274696669636174654461746174000474727565740013757067726164656446726f6d56657273696f6e740008362e31352e322e367400117570677261646564546f56657273696f6e71007e000b740015706f73745570677261646564546f56657273696f6e740006362e31302e317800	\N	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                 3219.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3220.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014230 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3221.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3222.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3223.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3224.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3225.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3226.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3227.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3228.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3229.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3230.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3231.dat                                                                                            0000600 0004000 0002000 00000001007 13713115123 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Super Administrator Role	\N	<?xml version="1.0" encoding="UTF-8"?>\n<java version="1.8.0_252" class="java.beans.XMLDecoder">\n <object class="org.cesecore.util.Base64PutHashMap">\n  <void method="put">\n   <string>version</string>\n   <float>1.0</float>\n  </void>\n  <void method="put">\n   <string>accessRules</string>\n   <object class="java.util.LinkedHashMap">\n    <void method="put">\n     <string>/</string>\n     <boolean>true</boolean>\n    </void>\n   </object>\n  </void>\n </object>\n</java>\n	\N	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3232.dat                                                                                            0000600 0004000 0002000 00000000215 13713115123 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        899059944	CliAuthenticationToken	0	0	1000	ejbca	1	\N	\N	0
999774557	PublicAccessAuthenticationToken	0	2	0	\N	1	Initial RoleMember.	\N	0
\.


                                                                                                                                                                                                                                                                                                                                                                                   3233.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3234.dat                                                                                            0000600 0004000 0002000 00000000503 13713115123 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        ejbca	0	\N	0	\N	1	\N	0	\N	$2a$01$fhJL8CW9nIvMjtbmfQc4Pu8YWNrFkgKvQvhfDBobtQwyQ7pbaIVwm	\N	0	40	\N	UID=ejbca	\N	1596757587472	1596757587472	0	0
de316b620c9c	-1753298722	\N	9		1	\N	0	\N		\N	4	40	dnsName=de316b620c9c	UID=c-028bf8108e847a797,CN=de316b620c9c,O=EJBCA Container Quickstart	\N	1596757599181	1596757604147	3	1
\.


                                                                                                                                                                                             3235.dat                                                                                            0000600 0004000 0002000 00000000005 13713115123 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000122432 13713115123 0015365 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE ejbca;
--
-- Name: ejbca; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE ejbca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


\connect ejbca

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accessrulesdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accessrulesdata (
    pk integer NOT NULL,
    accessrule text NOT NULL,
    isrecursive boolean NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    rule integer NOT NULL,
    admingroupdata_accessrules integer
);


--
-- Name: acmeaccountdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmeaccountdata (
    accountid text NOT NULL,
    currentkeyid text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: acmeauthorizationdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmeauthorizationdata (
    authorizationid text NOT NULL,
    accountid text NOT NULL,
    orderid text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: acmechallengedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmechallengedata (
    challengeid text NOT NULL,
    authorizationid text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    type text NOT NULL
);


--
-- Name: acmenoncedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmenoncedata (
    nonce text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    timeexpires bigint NOT NULL
);


--
-- Name: acmeorderdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acmeorderdata (
    orderid text NOT NULL,
    accountid text NOT NULL,
    fingerprint text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    status text NOT NULL
);


--
-- Name: adminentitydata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.adminentitydata (
    pk integer NOT NULL,
    caid integer NOT NULL,
    matchtype integer NOT NULL,
    matchvalue text,
    matchwith integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokentype text,
    admingroupdata_adminentities integer
);


--
-- Name: admingroupdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admingroupdata (
    pk integer NOT NULL,
    admingroupname text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: adminpreferencesdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.adminpreferencesdata (
    id text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: approvaldata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.approvaldata (
    id integer NOT NULL,
    approvaldata text NOT NULL,
    approvalid integer NOT NULL,
    approvaltype integer NOT NULL,
    caid integer NOT NULL,
    endentityprofileid integer NOT NULL,
    expiredate bigint NOT NULL,
    remainingapprovals integer NOT NULL,
    reqadmincertissuerdn text,
    reqadmincertsn text,
    requestdata text NOT NULL,
    requestdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL
);


--
-- Name: auditrecorddata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auditrecorddata (
    pk text NOT NULL,
    additionaldetails text,
    authtoken text NOT NULL,
    customid text,
    eventstatus text NOT NULL,
    eventtype text NOT NULL,
    module text NOT NULL,
    nodeid text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    searchdetail1 text,
    searchdetail2 text,
    sequencenumber bigint NOT NULL,
    service text NOT NULL,
    "timestamp" bigint NOT NULL
);


--
-- Name: authorizationtreeupdatedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authorizationtreeupdatedata (
    pk integer NOT NULL,
    authorizationtreeupdatenumber integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: base64certdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.base64certdata (
    fingerprint text NOT NULL,
    base64cert text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: blacklistdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blacklistdata (
    id integer NOT NULL,
    type text NOT NULL,
    value text NOT NULL,
    data text,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);


--
-- Name: cadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cadata (
    caid integer NOT NULL,
    data text NOT NULL,
    expiretime bigint NOT NULL,
    name text,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL,
    subjectdn text,
    updatetime bigint NOT NULL
);


--
-- Name: certificatedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certificatedata (
    fingerprint text NOT NULL,
    base64cert text,
    cafingerprint text,
    certificateprofileid integer NOT NULL,
    endentityprofileid integer,
    expiredate bigint NOT NULL,
    issuerdn text NOT NULL,
    notbefore bigint,
    revocationdate bigint NOT NULL,
    revocationreason integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text NOT NULL,
    subjectkeyid text,
    tag text,
    type integer NOT NULL,
    updatetime bigint NOT NULL,
    username text
);


--
-- Name: certificateprofiledata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certificateprofiledata (
    id integer NOT NULL,
    certificateprofilename text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: certreqhistorydata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.certreqhistorydata (
    fingerprint text NOT NULL,
    issuerdn text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    "timestamp" bigint NOT NULL,
    userdatavo text NOT NULL,
    username text NOT NULL
);


--
-- Name: crldata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crldata (
    fingerprint text NOT NULL,
    base64crl text NOT NULL,
    cafingerprint text NOT NULL,
    crlnumber integer NOT NULL,
    deltacrlindicator integer NOT NULL,
    issuerdn text NOT NULL,
    nextupdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    thisupdate bigint NOT NULL
);


--
-- Name: cryptotokendata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cryptotokendata (
    id integer NOT NULL,
    lastupdate bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokendata text,
    tokenname text NOT NULL,
    tokenprops text,
    tokentype text NOT NULL
);


--
-- Name: endentityprofiledata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endentityprofiledata (
    id integer NOT NULL,
    data bytea NOT NULL,
    profilename text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: globalconfigurationdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.globalconfigurationdata (
    configurationid text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: hardtokencertificatemap; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hardtokencertificatemap (
    certificatefingerprint text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    tokensn text NOT NULL
);


--
-- Name: hardtokendata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hardtokendata (
    tokensn text NOT NULL,
    ctime bigint NOT NULL,
    data bytea,
    mtime bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    significantissuerdn text,
    tokentype integer NOT NULL,
    username text
);


--
-- Name: hardtokenissuerdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hardtokenissuerdata (
    id integer NOT NULL,
    admingroupid integer NOT NULL,
    alias text NOT NULL,
    data bytea NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: hardtokenprofiledata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hardtokenprofiledata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);


--
-- Name: hardtokenpropertydata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hardtokenpropertydata (
    id text NOT NULL,
    property text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    value text
);


--
-- Name: internalkeybindingdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.internalkeybindingdata (
    id integer NOT NULL,
    certificateid text,
    cryptotokenid integer NOT NULL,
    keybindingtype text NOT NULL,
    keypairalias text NOT NULL,
    lastupdate bigint NOT NULL,
    name text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL,
    status text NOT NULL
);


--
-- Name: keyrecoverydata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.keyrecoverydata (
    certsn text NOT NULL,
    issuerdn text NOT NULL,
    cryptotokenid integer DEFAULT 0 NOT NULL,
    keyalias text,
    keydata text NOT NULL,
    markedasrecoverable boolean NOT NULL,
    publickeyid text,
    rowprotection text,
    rowversion integer NOT NULL,
    username text
);


--
-- Name: noconflictcertificatedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.noconflictcertificatedata (
    id text NOT NULL,
    fingerprint text NOT NULL,
    base64cert text,
    cafingerprint text,
    certificateprofileid integer NOT NULL,
    endentityprofileid integer,
    expiredate bigint NOT NULL,
    issuerdn text NOT NULL,
    notbefore bigint,
    revocationdate bigint NOT NULL,
    revocationreason integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    serialnumber text NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text NOT NULL,
    subjectkeyid text,
    tag text,
    type integer NOT NULL,
    updatetime bigint NOT NULL,
    username text
);


--
-- Name: peerdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.peerdata (
    id integer NOT NULL,
    connectorstate integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    url text NOT NULL
);


--
-- Name: profiledata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.profiledata (
    id integer NOT NULL,
    profilename text NOT NULL,
    profiletype text NOT NULL,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: publisherdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publisherdata (
    id integer NOT NULL,
    data text,
    name text,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);


--
-- Name: publisherqueuedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publisherqueuedata (
    pk text NOT NULL,
    fingerprint text,
    lastupdate bigint NOT NULL,
    publishstatus integer NOT NULL,
    publishtype integer NOT NULL,
    publisherid integer NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    timecreated bigint NOT NULL,
    trycounter integer NOT NULL,
    volatiledata text
);


--
-- Name: roledata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roledata (
    id integer NOT NULL,
    rolename text NOT NULL,
    namespace text,
    rawdata text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: rolememberdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rolememberdata (
    primarykey integer NOT NULL,
    tokentype text NOT NULL,
    tokenissuerid integer NOT NULL,
    tokenmatchkey integer NOT NULL,
    tokenmatchoperator integer NOT NULL,
    tokenmatchvalue text,
    roleid integer NOT NULL,
    description text,
    rowprotection text,
    rowversion integer NOT NULL
);


--
-- Name: servicedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.servicedata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    nextruntimestamp bigint NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    runtimestamp bigint NOT NULL
);


--
-- Name: userdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userdata (
    username text NOT NULL,
    caid integer NOT NULL,
    cardnumber text,
    certificateprofileid integer NOT NULL,
    clearpassword text,
    endentityprofileid integer NOT NULL,
    extendedinformationdata text,
    hardtokenissuerid integer NOT NULL,
    keystorepassword text,
    passwordhash text,
    rowprotection text,
    rowversion integer NOT NULL,
    status integer NOT NULL,
    subjectaltname text,
    subjectdn text,
    subjectemail text,
    timecreated bigint NOT NULL,
    timemodified bigint NOT NULL,
    tokentype integer NOT NULL,
    type integer NOT NULL
);


--
-- Name: userdatasourcedata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userdatasourcedata (
    id integer NOT NULL,
    data text,
    name text NOT NULL,
    rowprotection text,
    rowversion integer NOT NULL,
    updatecounter integer NOT NULL
);


--
-- Data for Name: accessrulesdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.accessrulesdata (pk, accessrule, isrecursive, rowprotection, rowversion, rule, admingroupdata_accessrules) FROM stdin;
\.
COPY public.accessrulesdata (pk, accessrule, isrecursive, rowprotection, rowversion, rule, admingroupdata_accessrules) FROM '$$PATH$$/3197.dat';

--
-- Data for Name: acmeaccountdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.acmeaccountdata (accountid, currentkeyid, rawdata, rowprotection, rowversion) FROM stdin;
\.
COPY public.acmeaccountdata (accountid, currentkeyid, rawdata, rowprotection, rowversion) FROM '$$PATH$$/3198.dat';

--
-- Data for Name: acmeauthorizationdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.acmeauthorizationdata (authorizationid, accountid, orderid, rawdata, rowprotection, rowversion) FROM stdin;
\.
COPY public.acmeauthorizationdata (authorizationid, accountid, orderid, rawdata, rowprotection, rowversion) FROM '$$PATH$$/3199.dat';

--
-- Data for Name: acmechallengedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.acmechallengedata (challengeid, authorizationid, rawdata, rowprotection, rowversion, type) FROM stdin;
\.
COPY public.acmechallengedata (challengeid, authorizationid, rawdata, rowprotection, rowversion, type) FROM '$$PATH$$/3200.dat';

--
-- Data for Name: acmenoncedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.acmenoncedata (nonce, rowprotection, rowversion, timeexpires) FROM stdin;
\.
COPY public.acmenoncedata (nonce, rowprotection, rowversion, timeexpires) FROM '$$PATH$$/3201.dat';

--
-- Data for Name: acmeorderdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.acmeorderdata (orderid, accountid, fingerprint, rawdata, rowprotection, rowversion, status) FROM stdin;
\.
COPY public.acmeorderdata (orderid, accountid, fingerprint, rawdata, rowprotection, rowversion, status) FROM '$$PATH$$/3202.dat';

--
-- Data for Name: adminentitydata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.adminentitydata (pk, caid, matchtype, matchvalue, matchwith, rowprotection, rowversion, tokentype, admingroupdata_adminentities) FROM stdin;
\.
COPY public.adminentitydata (pk, caid, matchtype, matchvalue, matchwith, rowprotection, rowversion, tokentype, admingroupdata_adminentities) FROM '$$PATH$$/3203.dat';

--
-- Data for Name: admingroupdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admingroupdata (pk, admingroupname, rowprotection, rowversion) FROM stdin;
\.
COPY public.admingroupdata (pk, admingroupname, rowprotection, rowversion) FROM '$$PATH$$/3204.dat';

--
-- Data for Name: adminpreferencesdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.adminpreferencesdata (id, data, rowprotection, rowversion) FROM stdin;
\.
COPY public.adminpreferencesdata (id, data, rowprotection, rowversion) FROM '$$PATH$$/3205.dat';

--
-- Data for Name: approvaldata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.approvaldata (id, approvaldata, approvalid, approvaltype, caid, endentityprofileid, expiredate, remainingapprovals, reqadmincertissuerdn, reqadmincertsn, requestdata, requestdate, rowprotection, rowversion, status) FROM stdin;
\.
COPY public.approvaldata (id, approvaldata, approvalid, approvaltype, caid, endentityprofileid, expiredate, remainingapprovals, reqadmincertissuerdn, reqadmincertsn, requestdata, requestdate, rowprotection, rowversion, status) FROM '$$PATH$$/3206.dat';

--
-- Data for Name: auditrecorddata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auditrecorddata (pk, additionaldetails, authtoken, customid, eventstatus, eventtype, module, nodeid, rowprotection, rowversion, searchdetail1, searchdetail2, sequencenumber, service, "timestamp") FROM stdin;
\.
COPY public.auditrecorddata (pk, additionaldetails, authtoken, customid, eventstatus, eventtype, module, nodeid, rowprotection, rowversion, searchdetail1, searchdetail2, sequencenumber, service, "timestamp") FROM '$$PATH$$/3207.dat';

--
-- Data for Name: authorizationtreeupdatedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.authorizationtreeupdatedata (pk, authorizationtreeupdatenumber, rowprotection, rowversion) FROM stdin;
\.
COPY public.authorizationtreeupdatedata (pk, authorizationtreeupdatenumber, rowprotection, rowversion) FROM '$$PATH$$/3208.dat';

--
-- Data for Name: base64certdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.base64certdata (fingerprint, base64cert, rowprotection, rowversion) FROM stdin;
\.
COPY public.base64certdata (fingerprint, base64cert, rowprotection, rowversion) FROM '$$PATH$$/3209.dat';

--
-- Data for Name: blacklistdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blacklistdata (id, type, value, data, rowprotection, rowversion, updatecounter) FROM stdin;
\.
COPY public.blacklistdata (id, type, value, data, rowprotection, rowversion, updatecounter) FROM '$$PATH$$/3210.dat';

--
-- Data for Name: cadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cadata (caid, data, expiretime, name, rowprotection, rowversion, status, subjectdn, updatetime) FROM stdin;
\.
COPY public.cadata (caid, data, expiretime, name, rowprotection, rowversion, status, subjectdn, updatetime) FROM '$$PATH$$/3211.dat';

--
-- Data for Name: certificatedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certificatedata (fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM stdin;
\.
COPY public.certificatedata (fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM '$$PATH$$/3212.dat';

--
-- Data for Name: certificateprofiledata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certificateprofiledata (id, certificateprofilename, data, rowprotection, rowversion) FROM stdin;
\.
COPY public.certificateprofiledata (id, certificateprofilename, data, rowprotection, rowversion) FROM '$$PATH$$/3213.dat';

--
-- Data for Name: certreqhistorydata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.certreqhistorydata (fingerprint, issuerdn, rowprotection, rowversion, serialnumber, "timestamp", userdatavo, username) FROM stdin;
\.
COPY public.certreqhistorydata (fingerprint, issuerdn, rowprotection, rowversion, serialnumber, "timestamp", userdatavo, username) FROM '$$PATH$$/3214.dat';

--
-- Data for Name: crldata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crldata (fingerprint, base64crl, cafingerprint, crlnumber, deltacrlindicator, issuerdn, nextupdate, rowprotection, rowversion, thisupdate) FROM stdin;
\.
COPY public.crldata (fingerprint, base64crl, cafingerprint, crlnumber, deltacrlindicator, issuerdn, nextupdate, rowprotection, rowversion, thisupdate) FROM '$$PATH$$/3215.dat';

--
-- Data for Name: cryptotokendata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cryptotokendata (id, lastupdate, rowprotection, rowversion, tokendata, tokenname, tokenprops, tokentype) FROM stdin;
\.
COPY public.cryptotokendata (id, lastupdate, rowprotection, rowversion, tokendata, tokenname, tokenprops, tokentype) FROM '$$PATH$$/3216.dat';

--
-- Data for Name: endentityprofiledata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.endentityprofiledata (id, data, profilename, rowprotection, rowversion) FROM stdin;
\.
COPY public.endentityprofiledata (id, data, profilename, rowprotection, rowversion) FROM '$$PATH$$/3217.dat';

--
-- Data for Name: globalconfigurationdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.globalconfigurationdata (configurationid, data, rowprotection, rowversion) FROM stdin;
\.
COPY public.globalconfigurationdata (configurationid, data, rowprotection, rowversion) FROM '$$PATH$$/3218.dat';

--
-- Data for Name: hardtokencertificatemap; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hardtokencertificatemap (certificatefingerprint, rowprotection, rowversion, tokensn) FROM stdin;
\.
COPY public.hardtokencertificatemap (certificatefingerprint, rowprotection, rowversion, tokensn) FROM '$$PATH$$/3219.dat';

--
-- Data for Name: hardtokendata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hardtokendata (tokensn, ctime, data, mtime, rowprotection, rowversion, significantissuerdn, tokentype, username) FROM stdin;
\.
COPY public.hardtokendata (tokensn, ctime, data, mtime, rowprotection, rowversion, significantissuerdn, tokentype, username) FROM '$$PATH$$/3220.dat';

--
-- Data for Name: hardtokenissuerdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hardtokenissuerdata (id, admingroupid, alias, data, rowprotection, rowversion) FROM stdin;
\.
COPY public.hardtokenissuerdata (id, admingroupid, alias, data, rowprotection, rowversion) FROM '$$PATH$$/3221.dat';

--
-- Data for Name: hardtokenprofiledata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hardtokenprofiledata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
\.
COPY public.hardtokenprofiledata (id, data, name, rowprotection, rowversion, updatecounter) FROM '$$PATH$$/3222.dat';

--
-- Data for Name: hardtokenpropertydata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hardtokenpropertydata (id, property, rowprotection, rowversion, value) FROM stdin;
\.
COPY public.hardtokenpropertydata (id, property, rowprotection, rowversion, value) FROM '$$PATH$$/3223.dat';

--
-- Data for Name: internalkeybindingdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.internalkeybindingdata (id, certificateid, cryptotokenid, keybindingtype, keypairalias, lastupdate, name, rawdata, rowprotection, rowversion, status) FROM stdin;
\.
COPY public.internalkeybindingdata (id, certificateid, cryptotokenid, keybindingtype, keypairalias, lastupdate, name, rawdata, rowprotection, rowversion, status) FROM '$$PATH$$/3224.dat';

--
-- Data for Name: keyrecoverydata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.keyrecoverydata (certsn, issuerdn, cryptotokenid, keyalias, keydata, markedasrecoverable, publickeyid, rowprotection, rowversion, username) FROM stdin;
\.
COPY public.keyrecoverydata (certsn, issuerdn, cryptotokenid, keyalias, keydata, markedasrecoverable, publickeyid, rowprotection, rowversion, username) FROM '$$PATH$$/3225.dat';

--
-- Data for Name: noconflictcertificatedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.noconflictcertificatedata (id, fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM stdin;
\.
COPY public.noconflictcertificatedata (id, fingerprint, base64cert, cafingerprint, certificateprofileid, endentityprofileid, expiredate, issuerdn, notbefore, revocationdate, revocationreason, rowprotection, rowversion, serialnumber, status, subjectaltname, subjectdn, subjectkeyid, tag, type, updatetime, username) FROM '$$PATH$$/3226.dat';

--
-- Data for Name: peerdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.peerdata (id, connectorstate, data, name, rowprotection, rowversion, url) FROM stdin;
\.
COPY public.peerdata (id, connectorstate, data, name, rowprotection, rowversion, url) FROM '$$PATH$$/3227.dat';

--
-- Data for Name: profiledata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.profiledata (id, profilename, profiletype, rawdata, rowprotection, rowversion) FROM stdin;
\.
COPY public.profiledata (id, profilename, profiletype, rawdata, rowprotection, rowversion) FROM '$$PATH$$/3228.dat';

--
-- Data for Name: publisherdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.publisherdata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
\.
COPY public.publisherdata (id, data, name, rowprotection, rowversion, updatecounter) FROM '$$PATH$$/3229.dat';

--
-- Data for Name: publisherqueuedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.publisherqueuedata (pk, fingerprint, lastupdate, publishstatus, publishtype, publisherid, rowprotection, rowversion, timecreated, trycounter, volatiledata) FROM stdin;
\.
COPY public.publisherqueuedata (pk, fingerprint, lastupdate, publishstatus, publishtype, publisherid, rowprotection, rowversion, timecreated, trycounter, volatiledata) FROM '$$PATH$$/3230.dat';

--
-- Data for Name: roledata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roledata (id, rolename, namespace, rawdata, rowprotection, rowversion) FROM stdin;
\.
COPY public.roledata (id, rolename, namespace, rawdata, rowprotection, rowversion) FROM '$$PATH$$/3231.dat';

--
-- Data for Name: rolememberdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.rolememberdata (primarykey, tokentype, tokenissuerid, tokenmatchkey, tokenmatchoperator, tokenmatchvalue, roleid, description, rowprotection, rowversion) FROM stdin;
\.
COPY public.rolememberdata (primarykey, tokentype, tokenissuerid, tokenmatchkey, tokenmatchoperator, tokenmatchvalue, roleid, description, rowprotection, rowversion) FROM '$$PATH$$/3232.dat';

--
-- Data for Name: servicedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.servicedata (id, data, name, nextruntimestamp, rowprotection, rowversion, runtimestamp) FROM stdin;
\.
COPY public.servicedata (id, data, name, nextruntimestamp, rowprotection, rowversion, runtimestamp) FROM '$$PATH$$/3233.dat';

--
-- Data for Name: userdata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.userdata (username, caid, cardnumber, certificateprofileid, clearpassword, endentityprofileid, extendedinformationdata, hardtokenissuerid, keystorepassword, passwordhash, rowprotection, rowversion, status, subjectaltname, subjectdn, subjectemail, timecreated, timemodified, tokentype, type) FROM stdin;
\.
COPY public.userdata (username, caid, cardnumber, certificateprofileid, clearpassword, endentityprofileid, extendedinformationdata, hardtokenissuerid, keystorepassword, passwordhash, rowprotection, rowversion, status, subjectaltname, subjectdn, subjectemail, timecreated, timemodified, tokentype, type) FROM '$$PATH$$/3234.dat';

--
-- Data for Name: userdatasourcedata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.userdatasourcedata (id, data, name, rowprotection, rowversion, updatecounter) FROM stdin;
\.
COPY public.userdatasourcedata (id, data, name, rowprotection, rowversion, updatecounter) FROM '$$PATH$$/3235.dat';

--
-- Name: accessrulesdata accessrulesdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessrulesdata
    ADD CONSTRAINT accessrulesdata_pkey PRIMARY KEY (pk);


--
-- Name: acmeaccountdata acmeaccountdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmeaccountdata
    ADD CONSTRAINT acmeaccountdata_pkey PRIMARY KEY (accountid);


--
-- Name: acmeauthorizationdata acmeauthorizationdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmeauthorizationdata
    ADD CONSTRAINT acmeauthorizationdata_pkey PRIMARY KEY (authorizationid);


--
-- Name: acmechallengedata acmechallengedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmechallengedata
    ADD CONSTRAINT acmechallengedata_pkey PRIMARY KEY (challengeid);


--
-- Name: acmenoncedata acmenoncedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmenoncedata
    ADD CONSTRAINT acmenoncedata_pkey PRIMARY KEY (nonce);


--
-- Name: acmeorderdata acmeorderdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acmeorderdata
    ADD CONSTRAINT acmeorderdata_pkey PRIMARY KEY (orderid);


--
-- Name: adminentitydata adminentitydata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adminentitydata
    ADD CONSTRAINT adminentitydata_pkey PRIMARY KEY (pk);


--
-- Name: admingroupdata admingroupdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admingroupdata
    ADD CONSTRAINT admingroupdata_pkey PRIMARY KEY (pk);


--
-- Name: adminpreferencesdata adminpreferencesdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adminpreferencesdata
    ADD CONSTRAINT adminpreferencesdata_pkey PRIMARY KEY (id);


--
-- Name: approvaldata approvaldata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.approvaldata
    ADD CONSTRAINT approvaldata_pkey PRIMARY KEY (id);


--
-- Name: auditrecorddata auditrecorddata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auditrecorddata
    ADD CONSTRAINT auditrecorddata_pkey PRIMARY KEY (pk);


--
-- Name: authorizationtreeupdatedata authorizationtreeupdatedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorizationtreeupdatedata
    ADD CONSTRAINT authorizationtreeupdatedata_pkey PRIMARY KEY (pk);


--
-- Name: base64certdata base64certdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.base64certdata
    ADD CONSTRAINT base64certdata_pkey PRIMARY KEY (fingerprint);


--
-- Name: blacklistdata blacklistdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blacklistdata
    ADD CONSTRAINT blacklistdata_pkey PRIMARY KEY (id);


--
-- Name: cadata cadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cadata
    ADD CONSTRAINT cadata_pkey PRIMARY KEY (caid);


--
-- Name: certificatedata certificatedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificatedata
    ADD CONSTRAINT certificatedata_pkey PRIMARY KEY (fingerprint);


--
-- Name: certificateprofiledata certificateprofiledata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certificateprofiledata
    ADD CONSTRAINT certificateprofiledata_pkey PRIMARY KEY (id);


--
-- Name: certreqhistorydata certreqhistorydata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.certreqhistorydata
    ADD CONSTRAINT certreqhistorydata_pkey PRIMARY KEY (fingerprint);


--
-- Name: crldata crldata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crldata
    ADD CONSTRAINT crldata_pkey PRIMARY KEY (fingerprint);


--
-- Name: cryptotokendata cryptotokendata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cryptotokendata
    ADD CONSTRAINT cryptotokendata_pkey PRIMARY KEY (id);


--
-- Name: endentityprofiledata endentityprofiledata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endentityprofiledata
    ADD CONSTRAINT endentityprofiledata_pkey PRIMARY KEY (id);


--
-- Name: globalconfigurationdata globalconfigurationdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalconfigurationdata
    ADD CONSTRAINT globalconfigurationdata_pkey PRIMARY KEY (configurationid);


--
-- Name: hardtokencertificatemap hardtokencertificatemap_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hardtokencertificatemap
    ADD CONSTRAINT hardtokencertificatemap_pkey PRIMARY KEY (certificatefingerprint);


--
-- Name: hardtokendata hardtokendata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hardtokendata
    ADD CONSTRAINT hardtokendata_pkey PRIMARY KEY (tokensn);


--
-- Name: hardtokenissuerdata hardtokenissuerdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hardtokenissuerdata
    ADD CONSTRAINT hardtokenissuerdata_pkey PRIMARY KEY (id);


--
-- Name: hardtokenprofiledata hardtokenprofiledata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hardtokenprofiledata
    ADD CONSTRAINT hardtokenprofiledata_pkey PRIMARY KEY (id);


--
-- Name: hardtokenpropertydata hardtokenpropertydata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hardtokenpropertydata
    ADD CONSTRAINT hardtokenpropertydata_pkey PRIMARY KEY (id, property);


--
-- Name: internalkeybindingdata internalkeybindingdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internalkeybindingdata
    ADD CONSTRAINT internalkeybindingdata_pkey PRIMARY KEY (id);


--
-- Name: keyrecoverydata keyrecoverydata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.keyrecoverydata
    ADD CONSTRAINT keyrecoverydata_pkey PRIMARY KEY (certsn, issuerdn);


--
-- Name: noconflictcertificatedata noconflictcertificatedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.noconflictcertificatedata
    ADD CONSTRAINT noconflictcertificatedata_pkey PRIMARY KEY (id);


--
-- Name: peerdata peerdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.peerdata
    ADD CONSTRAINT peerdata_pkey PRIMARY KEY (id);


--
-- Name: profiledata profiledata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.profiledata
    ADD CONSTRAINT profiledata_pkey PRIMARY KEY (id);


--
-- Name: publisherdata publisherdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publisherdata
    ADD CONSTRAINT publisherdata_pkey PRIMARY KEY (id);


--
-- Name: publisherqueuedata publisherqueuedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publisherqueuedata
    ADD CONSTRAINT publisherqueuedata_pkey PRIMARY KEY (pk);


--
-- Name: roledata roledata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roledata
    ADD CONSTRAINT roledata_pkey PRIMARY KEY (id);


--
-- Name: rolememberdata rolememberdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rolememberdata
    ADD CONSTRAINT rolememberdata_pkey PRIMARY KEY (primarykey);


--
-- Name: servicedata servicedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.servicedata
    ADD CONSTRAINT servicedata_pkey PRIMARY KEY (id);


--
-- Name: userdata userdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userdata
    ADD CONSTRAINT userdata_pkey PRIMARY KEY (username);


--
-- Name: userdatasourcedata userdatasourcedata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userdatasourcedata
    ADD CONSTRAINT userdatasourcedata_pkey PRIMARY KEY (id);


--
-- Name: auditrecorddata_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX auditrecorddata_idx2 ON public.auditrecorddata USING btree (nodeid, sequencenumber);


--
-- Name: auditrecorddata_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auditrecorddata_idx3 ON public.auditrecorddata USING btree ("timestamp");


--
-- Name: auditrecorddata_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auditrecorddata_idx4 ON public.auditrecorddata USING btree (searchdetail2);


--
-- Name: blacklist_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX blacklist_idx1 ON public.blacklistdata USING btree (type, value);


--
-- Name: cadata_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cadata_idx1 ON public.cadata USING btree (name);


--
-- Name: certificatedata_idx11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx11 ON public.certificatedata USING btree (subjectkeyid);


--
-- Name: certificatedata_idx12; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX certificatedata_idx12 ON public.certificatedata USING btree (serialnumber, issuerdn);


--
-- Name: certificatedata_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx2 ON public.certificatedata USING btree (username);


--
-- Name: certificatedata_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx4 ON public.certificatedata USING btree (subjectdn);


--
-- Name: certificatedata_idx5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx5 ON public.certificatedata USING btree (type);


--
-- Name: certificatedata_idx6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx6 ON public.certificatedata USING btree (issuerdn, status);


--
-- Name: certificatedata_idx7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX certificatedata_idx7 ON public.certificatedata USING btree (certificateprofileid);


--
-- Name: crldata_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX crldata_idx3 ON public.crldata USING btree (crlnumber, issuerdn);


--
-- Name: crldata_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX crldata_idx4 ON public.crldata USING btree (issuerdn, deltacrlindicator, crlnumber);


--
-- Name: historydata_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX historydata_idx1 ON public.certreqhistorydata USING btree (username);


--
-- Name: historydata_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX historydata_idx3 ON public.certreqhistorydata USING btree (serialnumber);


--
-- Name: noconflictcertificatedata_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX noconflictcertificatedata_idx1 ON public.noconflictcertificatedata USING btree (serialnumber, issuerdn);


--
-- Name: noconflictcertificatedata_idx2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX noconflictcertificatedata_idx2 ON public.noconflictcertificatedata USING btree (fingerprint);


--
-- Name: noconflictcertificatedata_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX noconflictcertificatedata_idx3 ON public.noconflictcertificatedata USING btree (issuerdn, status);


--
-- Name: noconflictcertificatedata_idx4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX noconflictcertificatedata_idx4 ON public.noconflictcertificatedata USING btree (certificateprofileid);


--
-- Name: publisherqueue_idx3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX publisherqueue_idx3 ON public.publisherqueuedata USING btree (publisherid, publishstatus, timecreated);


--
-- Name: rolemember_idx1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rolemember_idx1 ON public.rolememberdata USING btree (tokentype, roleid);


--
-- Name: userdata_idx10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX userdata_idx10 ON public.userdata USING btree (subjectdn);


--
-- Name: userdata_idx11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX userdata_idx11 ON public.userdata USING btree (status);


--
-- Name: accessrulesdata fkdaev24clq6yofynpsh4kuojno; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accessrulesdata
    ADD CONSTRAINT fkdaev24clq6yofynpsh4kuojno FOREIGN KEY (admingroupdata_accessrules) REFERENCES public.admingroupdata(pk);


--
-- Name: adminentitydata fkgxaatpstfnr3sx8frhueq9q2d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adminentitydata
    ADD CONSTRAINT fkgxaatpstfnr3sx8frhueq9q2d FOREIGN KEY (admingroupdata_adminentities) REFERENCES public.admingroupdata(pk);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      