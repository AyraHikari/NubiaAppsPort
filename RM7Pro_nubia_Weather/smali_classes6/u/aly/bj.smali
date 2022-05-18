.class public Lu/aly/bj;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field protected static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = ""

.field public static final c:Ljava/lang/String; = "2G/3G"

.field public static final d:Ljava/lang/String; = "Wi-Fi"

.field public static final e:I = 0x8

.field private static final f:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lu/aly/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 947
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 948
    const/16 v2, 0x40

    .line 951
    :try_start_0
    invoke-static {p0}, Lu/aly/bj;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 955
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 956
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 957
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 960
    :try_start_1
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 966
    :goto_1
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 972
    :goto_2
    :try_start_3
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 973
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 974
    invoke-static {v0}, Lu/aly/bj;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    .line 980
    :goto_3
    return-object v1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 961
    :catch_1
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 967
    :catch_2
    move-exception v0

    .line 968
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 975
    :catch_3
    move-exception v0

    .line 976
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 977
    :catch_4
    move-exception v0

    .line 978
    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_3
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1019
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1021
    :cond_0
    :goto_0
    return v0

    .line 1020
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1031
    const/4 v0, 0x0

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1034
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1038
    :goto_0
    return-object v0

    .line 1035
    :catch_0
    move-exception v1

    .line 1036
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lu/aly/bl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1178
    .line 1179
    invoke-static {}, Lu/aly/bj;->e()Ljava/util/Properties;

    move-result-object v1

    .line 1181
    :try_start_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1183
    invoke-static {}, Lu/aly/bj;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1184
    const-string v0, "Flyme"

    .line 1197
    :cond_0
    :goto_0
    return-object v0

    .line 1186
    :cond_1
    invoke-static {v1}, Lu/aly/bj;->a(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    const-string v0, "YunOS"

    goto :goto_0

    .line 1191
    :cond_2
    const-string v0, "MIUI"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1194
    const/4 v0, 0x0

    .line 1195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1210
    .line 1211
    invoke-static {}, Lu/aly/bj;->e()Ljava/util/Properties;

    move-result-object v1

    .line 1213
    :try_start_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    invoke-static {}, Lu/aly/bj;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1217
    :try_start_1
    invoke-static {v1}, Lu/aly/bj;->b(Ljava/util/Properties;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1231
    :cond_0
    :goto_0
    return-object v0

    .line 1222
    :cond_1
    :try_start_2
    invoke-static {v1}, Lu/aly/bj;->a(Ljava/util/Properties;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1228
    const/4 v0, 0x0

    .line 1229
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1218
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1223
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static G(Landroid/content/Context;)Ljava/util/Locale;
    .locals 5

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 638
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 639
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 641
    if-eqz v1, :cond_0

    .line 642
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 649
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 652
    :cond_1
    return-object v0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "fail to read user config locale"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lu/aly/bl;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static H(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 734
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 735
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    .line 739
    :cond_0
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lu/aly/bl;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get mac address."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lu/aly/bl;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    const-string v0, ""

    goto :goto_0
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1052
    const-string v1, ""

    .line 1053
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1055
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 1056
    if-eqz v0, :cond_5

    .line 1058
    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1059
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1060
    :try_start_1
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId, IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1066
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    invoke-static {}, Lu/aly/bj;->d()Ljava/lang/String;

    move-result-object v0

    .line 1068
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId, mc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId, android_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 1075
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 1077
    :cond_0
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId, serial no: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    :cond_1
    :goto_1
    return-object v0

    .line 1062
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1063
    :goto_2
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {v2, v3, v1}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1083
    :cond_2
    if-eqz v0, :cond_3

    .line 1085
    :try_start_2
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1086
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 1092
    :cond_3
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1093
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "No IMEI."

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lu/aly/bl;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    invoke-static {p0}, Lu/aly/bj;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lu/aly/bl;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId: Secure.ANDROID_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1088
    :catch_1
    move-exception v0

    .line 1089
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {v2, v3, v0}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1062
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1116
    const-string v0, ""

    .line 1117
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId, android_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1123
    invoke-static {}, Lu/aly/bj;->d()Ljava/lang/String;

    move-result-object v1

    .line 1124
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId, mc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1126
    if-eqz v0, :cond_5

    .line 1128
    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1129
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1130
    :try_start_1
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId, IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1136
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 1139
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 1141
    :cond_0
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId, serial no: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 1165
    :cond_1
    :goto_1
    return-object v1

    .line 1132
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1133
    :goto_2
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {v2, v3, v1}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId: Secure.ANDROID_ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1150
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "No IMEI."

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lu/aly/bl;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    invoke-static {p0}, Lu/aly/bj;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    if-eqz v0, :cond_1

    .line 1155
    :try_start_2
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 1160
    goto :goto_1

    .line 1158
    :catch_1
    move-exception v0

    .line 1159
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {v2, v3, v0}, Lu/aly/bl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1132
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 813
    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 814
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 815
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 819
    :goto_0
    return v0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 5

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 895
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 896
    sub-long v0, v2, v0

    .line 897
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 288
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    if-eqz v1, :cond_0

    .line 291
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 292
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 293
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 294
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 303
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 304
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_1
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    :try_start_3
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "Could not read from file /proc/cpuinfo"

    invoke-static {v2, v3, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 299
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 300
    :goto_2
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "Could not open file /proc/cpuinfo"

    invoke-static {v2, v3, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 309
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 299
    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 845
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 846
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 847
    return-object v0
.end method

.method private static a(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1241
    const-string v0, "ro.yunos.version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 986
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 987
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 989
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    :cond_0
    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 992
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 993
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 996
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 986
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 871
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 872
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 100
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 160
    :try_start_0
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    const-string v3, "checkSelfPermission"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v2, v0

    .line 177
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 166
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    .line 174
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 208
    const/16 v1, 0x1f00

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    const/16 v2, 0x1f01

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 211
    const/4 v1, 0x1

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "Could not read gpu infor:"

    invoke-static {v1, v2, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    .line 248
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 250
    if-eqz v3, :cond_1

    .line 252
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 257
    if-eqz v3, :cond_0

    .line 259
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 266
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 273
    :cond_1
    :goto_1
    return-object v0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 267
    :catch_1
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 254
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 255
    :goto_2
    :try_start_4
    sget-object v4, Lu/aly/bj;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read from file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    if-eqz v3, :cond_2

    .line 259
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 264
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 266
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 267
    :catch_3
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 260
    :catch_4
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 257
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v3, :cond_3

    .line 259
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 264
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 266
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 269
    :cond_4
    :goto_6
    throw v0

    .line 260
    :catch_5
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 267
    :catch_6
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 257
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 254
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method private static b(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1257
    :try_start_0
    const-string v0, "ro.build.display.id"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    const-string v1, "flyme os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_0
    return-object v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 856
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 857
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 858
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 859
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 126
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 127
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v0, ""

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 227
    sget-boolean v1, Lcom/umeng/analytics/a;->e:Z

    if-eqz v1, :cond_1

    .line 228
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "/sys/class/net/wlan0/address"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string v3, "/sys/class/net/eth0/address"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "/sys/devices/virtual/net/wlan0/address"

    aput-object v3, v2, v1

    .line 231
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 233
    :try_start_0
    aget-object v1, v2, v0

    invoke-static {v1}, Lu/aly/bj;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 243
    :goto_1
    return-object v0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    sget-object v3, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v4, "open file  Failed"

    invoke-static {v3, v4, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 142
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 195
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_0
    const-string v0, ""

    goto :goto_1
.end method

.method private static e()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 1272
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 1273
    const/4 v2, 0x0

    .line 1275
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1280
    if-eqz v1, :cond_0

    .line 1282
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1288
    :cond_0
    :goto_0
    return-object v3

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1277
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1278
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1280
    if-eqz v1, :cond_0

    .line 1282
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1283
    :catch_2
    move-exception v0

    .line 1284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 1282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1285
    :cond_1
    :goto_3
    throw v0

    .line 1283
    :catch_3
    move-exception v1

    .line 1284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1280
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1277
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_ANALYTICS_OEM:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v0}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-static {p0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME_OEM:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 320
    invoke-virtual {v0}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-static {p0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 321
    :cond_0
    invoke-static {p0}, Lu/aly/bj;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lu/aly/bj;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1300
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lu/aly/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-static {p0}, Lu/aly/bj;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mnc:I

    .line 354
    if-eqz v1, :cond_0

    .line 355
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 357
    const-string v0, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 379
    const/4 v1, 0x0

    .line 380
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 396
    const/4 v1, 0x0

    .line 397
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 412
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const-string v0, ""

    .line 421
    :goto_0
    return-object v0

    .line 415
    :cond_0
    if-nez v0, :cond_1

    .line 416
    const-string v0, ""

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 434
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    .line 435
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 437
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 438
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const-string v0, ""

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v1, v2

    const-string v0, ""

    aput-object v0, v1, v3

    .line 460
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v1, v0

    move-object v0, v1

    .line 487
    :goto_0
    return-object v0

    .line 465
    :cond_0
    const-string v0, "connectivity"

    .line 466
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 467
    if-nez v0, :cond_1

    .line 468
    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v1, v0

    move-object v0, v1

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 473
    const/4 v0, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 474
    goto :goto_0

    .line 476
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_3

    .line 478
    const/4 v2, 0x0

    const-string v3, "2G/3G"

    aput-object v3, v1, v2

    .line 479
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 480
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 487
    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 491
    const-string v0, "Wi-Fi"

    invoke-static {p0}, Lu/aly/bj;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 506
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 507
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 513
    :goto_0
    return v0

    .line 511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 539
    :try_start_0
    invoke-static {p0}, Lu/aly/bj;->G(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 540
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return v0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "error in getTimeZone"

    invoke-static {v1, v2, v0}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lu/aly/x$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 573
    goto :goto_0

    .line 576
    :cond_2
    invoke-static {p0}, Lu/aly/bj;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 577
    invoke-static {p0}, Lu/aly/bj;->r(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 578
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 594
    goto :goto_0

    .line 582
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mcc:I

    .line 583
    const/16 v3, 0x1cc

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1cd

    if-eq v2, v3, :cond_0

    .line 585
    if-nez v2, :cond_3

    .line 586
    invoke-static {p0}, Lu/aly/bj;->r(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 587
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 605
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 608
    :try_start_0
    invoke-static {p0}, Lu/aly/bj;->G(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_0

    .line 611
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 612
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 615
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    .line 617
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    const/4 v1, 0x1

    const-string v2, "Unknown"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :cond_2
    :goto_0
    return-object v0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v3, "error in getLocaleInfo"

    invoke-static {v2, v3, v1}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 662
    .line 664
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_1

    .line 668
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "UMENG_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    .line 673
    :cond_0
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getAppkey failed. the applicationinfo is null!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lu/aly/bl;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v1, v2, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 690
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 694
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "UMENG_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    .line 698
    :cond_0
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getToken failed."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lu/aly/bl;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v1, v2, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 715
    invoke-static {}, Lu/aly/bj;->d()Ljava/lang/String;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    .line 717
    invoke-static {p0}, Lu/aly/bj;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lu/aly/bj;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 755
    invoke-static {p0}, Lu/aly/bj;->w(Landroid/content/Context;)[I

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    .line 758
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 759
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 760
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)[I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 777
    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 778
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    .line 779
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_3

    .line 784
    const-string v0, "noncompatWidthPixels"

    invoke-static {v3, v0}, Lu/aly/bj;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 785
    const-string v0, "noncompatHeightPixels"

    invoke-static {v3, v0}, Lu/aly/bj;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 788
    :goto_0
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_2

    .line 789
    :cond_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 790
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move v2, v1

    move v1, v0

    .line 793
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 795
    if-le v2, v1, :cond_1

    .line 796
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 797
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 808
    :goto_2
    return-object v0

    .line 799
    :cond_1
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 800
    const/4 v2, 0x1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 804
    :catch_0
    move-exception v0

    .line 805
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "read resolution fail"

    invoke-static {v1, v2, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    move v1, v2

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    sget-object v1, Lu/aly/bj;->a:Ljava/lang/String;

    const-string v2, "read carrier fail"

    invoke-static {v1, v2, v0}, Lu/aly/bl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 835
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 907
    const-string v1, "Unknown"

    .line 909
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 913
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "UMENG_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_1

    .line 915
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    .line 927
    :goto_0
    return-object v0

    .line 919
    :cond_0
    sget-object v0, Lu/aly/bj;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    sget-object v2, Lu/aly/bj;->a:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lu/aly/bl;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
