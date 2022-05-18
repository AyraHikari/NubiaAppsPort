.class public Lcn/nubia/analytic/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field public static final SEND_BY_PUSH:I = 0x2

.field public static final SEND_BY_TRAFFIC:I = 0x1

.field public static final SEND_BY_WARE:I = 0x3

.field public static final SEND_BY_ZTE:I = 0x4

.field private static sSendBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToFormatted([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1016
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 1030
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1019
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1020
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    :cond_1
    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 1023
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1025
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static canTransferDataToPush(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 962
    .line 965
    :try_start_0
    const-string v1, "cn.nubia.neopush"

    invoke-static {p0, v1}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 966
    if-eqz v1, :cond_0

    .line 967
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 969
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 974
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canTransferDataToTrafficControl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pushCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :cond_0
    :goto_1
    return v0

    .line 972
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canTransferDataToTrafficControl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static canTransferDataToTrafficControl(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 933
    .line 936
    :try_start_0
    sget-object v1, Lcn/nubia/analytic/sdk/NubiaConfig;->sSdkName:Ljava/lang/String;

    .line 937
    const-string v2, "cn.nubia.trafficcontrol"

    invoke-static {p0, v2}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 938
    if-eqz v2, :cond_0

    .line 939
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 940
    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 941
    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 942
    if-ge v2, v1, :cond_1

    .line 947
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canTransferDataToTrafficControl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficControlCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sdkCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_1
    return v0

    .line 945
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canTransferDataToTrafficControl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 759
    const-string v1, "unKnow"

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 763
    const-string v2, "connectivity"

    .line 762
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 764
    if-nez v0, :cond_0

    .line 765
    const-string v0, "couldn\'t get connectivity manager"

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->d(Ljava/lang/String;)V

    .line 766
    const-string v0, "unKnow"

    .line 843
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccessType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 844
    return-object v0

    .line 768
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_3

    .line 770
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 771
    const-string v0, "WIFI"

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 773
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 774
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 777
    :pswitch_1
    const-string v0, "IDEN"

    goto :goto_0

    .line 781
    :pswitch_2
    const-string v0, "RTT"

    goto :goto_0

    .line 785
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 789
    :pswitch_4
    const-string v0, "EDGE"

    goto :goto_0

    .line 793
    :pswitch_5
    const-string v0, "GPRS"

    goto :goto_0

    .line 797
    :pswitch_6
    const-string v0, "EHRPD"

    goto :goto_0

    .line 801
    :pswitch_7
    const-string v0, "EVDO_0"

    goto :goto_0

    .line 805
    :pswitch_8
    const-string v0, "EVDO_A"

    goto :goto_0

    .line 809
    :pswitch_9
    const-string v0, "EVDO_B"

    goto :goto_0

    .line 813
    :pswitch_a
    const-string v0, "HSDPA"

    goto :goto_0

    .line 817
    :pswitch_b
    const-string v0, "HSPAP"

    goto :goto_0

    .line 821
    :pswitch_c
    const-string v0, "HSUPA"

    goto :goto_0

    .line 825
    :pswitch_d
    const-string v0, "UMTS"

    goto :goto_0

    .line 829
    :pswitch_e
    const-string v0, "LTE"

    goto :goto_0

    .line 833
    :pswitch_f
    const-string v0, "unKnow"

    goto :goto_0

    .line 837
    :cond_2
    const-string v0, "unKnow"

    goto :goto_0

    .line 840
    :cond_3
    const-string v0, "unKnow"

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_e
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAndroidId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 741
    const-string v0, "unKnow"

    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 744
    const-string v1, "phone"

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 745
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const-string v0, "unKnow"

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCarrier:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 750
    return-object v0
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 508
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getCountrySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, "unKnow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string v0, "unKnow"

    .line 516
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCountry:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 517
    return-object v0
.end method

.method private static getCountrySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    const-string v0, "unKnow"

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 528
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 529
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const-string v0, "unKnow"

    .line 533
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCountrySim:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 534
    return-object v0
.end method

.method public static getCpu()Ljava/lang/String;
    .locals 5

    .prologue
    .line 440
    const-string v3, "unKnow"

    .line 441
    const/4 v2, 0x0

    .line 443
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v2, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 446
    const/4 v2, 0x1

    aget-object v0, v0, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 453
    :goto_0
    if-eqz v1, :cond_0

    .line 455
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCpu:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 463
    return-object v0

    .line 447
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 448
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    .line 450
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    move-object v0, v3

    goto :goto_0

    .line 456
    :catch_2
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 449
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 447
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static getDeviceBoard()Ljava/lang/String;
    .locals 5

    .prologue
    .line 472
    const-string v3, "unKnow"

    .line 473
    const/4 v2, 0x0

    .line 475
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 476
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-nez v2, :cond_2

    .line 489
    :goto_0
    if-eqz v1, :cond_1

    .line 491
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 498
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceBoard:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 499
    return-object v2

    .line 477
    :cond_2
    :try_start_3
    const-string v0, "Hardware"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, ":\\s+"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 479
    const/4 v3, 0x1

    aget-object v2, v0, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 484
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 485
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 486
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 492
    :catch_2
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 485
    :catch_3
    move-exception v0

    goto :goto_3

    .line 483
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceBrand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 231
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getBuildId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getBuildId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInternal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 340
    const-string v1, "unKnow"

    .line 342
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 343
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 344
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 343
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 345
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 346
    const-string v5, "ro.build.internal.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unKnow"

    aput-object v5, v3, v4

    .line 345
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 356
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceInternal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 357
    return-object v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 349
    :catch_1
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 351
    :catch_2
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 353
    :catch_3
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDeviceManufature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceManufature:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 241
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceManutime()J
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceManutime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 261
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceModel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 251
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 142
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    invoke-static {v0}, Lcn/nubia/analytic/util/AppUtil;->isImeiValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string v0, "unKnow"

    .line 540
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getIpFromWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 543
    :cond_0
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getIpFromNetworkInterface()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIpFromNetworkInterface()Ljava/lang/String;
    .locals 6

    .prologue
    .line 611
    const-string v1, "unKnow"

    .line 613
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 614
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 632
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIpFromNetworkInterface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 634
    return-object v0

    .line 615
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 616
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 617
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 622
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 623
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 624
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 629
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIpFromNetworkInterface  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIpFromWifi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    const-string v1, "unKnow"

    .line 581
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 582
    const-string v2, "wifi"

    .line 581
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 583
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 586
    invoke-static {v0}, Lcn/nubia/analytic/util/AppUtil;->int2Ip(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 592
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 593
    return-object v0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIpFromWifi  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const-string v0, "unKnow"

    .line 659
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "language:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 660
    return-object v0
.end method

.method public static getLastPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 853
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 854
    array-length v1, v0

    .line 855
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const-string v0, "unKnow"

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    .line 191
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getMacHighM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getMacLowM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMacHighM()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    :try_start_0
    const-string v2, "wlan0"

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    if-nez v2, :cond_0

    .line 106
    const-string v0, "unKnow"

    .line 121
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_1
    array-length v3, v2

    :goto_1
    if-lt v0, v3, :cond_2

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getMacHighM:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_2
    aget-byte v4, v2, v0

    .line 110
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMacHighM  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    .line 117
    const-string v0, "unKnow"

    goto :goto_0
.end method

.method public static getMacLowM(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    const-string v1, "unKnow"

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    const-string v2, "wifi"

    .line 207
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 209
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v0, "unKnow"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMacLowM:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 221
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 217
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacLowM  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getNubiaId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const-string v1, "unKnow"

    .line 77
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/accounts/AccountManager;

    .line 80
    :try_start_0
    const-string v2, "com.ztemt"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 82
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 84
    const-string v3, "userId"

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nubiaId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 90
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getNubiaUserExperiencePlan(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 366
    .line 369
    :try_start_0
    const-string v0, "android.provider.Settings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 370
    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 371
    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 370
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 372
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_experience_plan"

    aput-object v6, v4, v5

    .line 372
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 375
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v2, v0

    .line 385
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExperience:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 387
    return v2

    :cond_0
    move v0, v2

    .line 375
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 378
    :catch_1
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 380
    :catch_2
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 382
    :catch_3
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOsVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 279
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 886
    const/4 v0, 0x0

    .line 889
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 890
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 891
    const/16 v2, 0x4000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    .line 894
    :catch_0
    move-exception v1

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPackageInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolution(Landroid/content/Context;)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    const-string v2, "window"

    .line 399
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    check-cast v0, Landroid/view/WindowManager;

    .line 401
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 404
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 405
    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    .line 406
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    aput v2, v1, v7

    .line 407
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aput v0, v1, v8

    .line 425
    :goto_0
    aget v0, v1, v7

    aget v2, v1, v8

    if-le v0, v2, :cond_0

    .line 426
    aget v0, v1, v7

    .line 427
    aget v2, v1, v8

    aput v2, v1, v7

    .line 428
    aput v0, v1, v8

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v1, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v1, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 431
    return-object v1

    .line 410
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 411
    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    .line 410
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 412
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 413
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/4 v0, 0x0

    iget v2, v3, Landroid/graphics/Point;->x:I

    aput v2, v1, v0

    .line 415
    const/4 v0, 0x1

    iget v2, v3, Landroid/graphics/Point;->y:I

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 420
    :catch_2
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 314
    const-string v1, "unKnow"

    .line 316
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 317
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 318
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 317
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 319
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 320
    const-string v5, "ro.build.rom.internal.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unKnow"

    aput-object v5, v3, v4

    .line 319
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 330
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRoomVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 331
    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 325
    :catch_2
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 327
    :catch_3
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getSendBy(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1043
    sget v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    if-eqz v0, :cond_0

    .line 1044
    sget v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    .line 1058
    :goto_0
    return v0

    .line 1046
    :cond_0
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->canTransferDataToTrafficControl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    const/4 v0, 0x1

    sput v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    .line 1049
    :cond_1
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->canTransferDataToPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    const/4 v0, 0x2

    sput v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    .line 1055
    :cond_2
    const-string v0, "com.zte.neopush"

    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1056
    const/4 v0, 0x4

    sput v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    .line 1058
    :cond_3
    sget v0, Lcn/nubia/analytic/util/AppUtil;->sSendBy:I

    goto :goto_0
.end method

.method public static getSignaturesSha1(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 987
    .line 991
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 992
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 993
    const/16 v3, 0x40

    :try_start_1
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 994
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 995
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 996
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 997
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 998
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1000
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1001
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1002
    invoke-static {v0}, Lcn/nubia/analytic/util/AppUtil;->byteArrayToFormatted([B)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1010
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " getSignaturesSha1:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 1011
    return-object v1

    .line 1003
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 1005
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    move-object v1, v2

    goto :goto_0

    .line 1007
    :catch_2
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 1005
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 1003
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static getSubAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 669
    const-string v1, "unKnow"

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 673
    const-string v2, "connectivity"

    .line 672
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 674
    if-nez v0, :cond_0

    .line 675
    const-string v0, "couldn\'t get connectivity manager"

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->d(Ljava/lang/String;)V

    .line 676
    const-string v0, "unKnow"

    .line 731
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccessType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 732
    return-object v0

    .line 678
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_3

    .line 680
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 681
    const-string v0, "WIFI"

    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 683
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 684
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 695
    :pswitch_1
    const-string v0, "2G"

    goto :goto_0

    .line 713
    :pswitch_2
    const-string v0, "3G"

    goto :goto_0

    .line 717
    :pswitch_3
    const-string v0, "4G"

    goto :goto_0

    .line 721
    :pswitch_4
    const-string v0, "unKnow"

    goto :goto_0

    .line 725
    :cond_2
    const-string v0, "unKnow"

    goto :goto_0

    .line 728
    :cond_3
    const-string v0, "unKnow"

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getTimeZone()I
    .locals 3

    .prologue
    .line 644
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeZone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 646
    return v0
.end method

.method public static getUiVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 288
    const-string v1, "unKnow"

    .line 290
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 291
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 292
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 291
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 293
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.rom.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 294
    const-string v5, "unKnow"

    aput-object v5, v3, v4

    .line 293
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 304
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUiVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 305
    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 299
    :catch_2
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 301
    :catch_3
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 873
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 874
    if-nez v0, :cond_0

    .line 875
    const/4 v0, 0x0

    .line 877
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 865
    if-nez v0, :cond_0

    .line 866
    const-string v0, ""

    .line 868
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static int2Ip(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 983
    invoke-static {p0, p1}, Lcn/nubia/analytic/util/AppUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImeiValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 170
    :cond_1
    return v0
.end method

.method public static isNeoPushInstalled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 910
    const-string v0, "cn.nubia.neopush"

    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNeoPushInstalled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 912
    return v0
.end method

.method public static isNubiaRom(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 921
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNubiaRom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 923
    return v0
.end method

.method public static isTrafficControlInstalled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 904
    const-string v0, "cn.nubia.trafficcontrol"

    invoke-static {p0, v0}, Lcn/nubia/analytic/util/AppUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTrafficControlInstalled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 906
    return v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 555
    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 558
    const-string v2, "connectivity"

    .line 557
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 559
    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static timeAlignment(J)J
    .locals 2

    .prologue
    .line 1039
    sget-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sServerTimeOffset:J

    add-long/2addr v0, p0

    return-wide v0
.end method
