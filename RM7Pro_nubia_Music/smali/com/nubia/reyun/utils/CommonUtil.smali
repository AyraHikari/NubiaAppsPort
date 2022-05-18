.class public Lcom/nubia/reyun/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mIsShowLog:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/nubia/reyun/sdk/ReYunSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x0

    .line 145
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 150
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 152
    :goto_1
    array-length v1, v2

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 153
    :cond_0
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    .line 154
    const/16 v4, 0xf

    if-gt v1, v4, :cond_1

    .line 155
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 650
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 651
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 652
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 653
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 654
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 661
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_1
    return-object v0

    .line 655
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 657
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 659
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 665
    const-string v0, ""

    goto :goto_1
.end method

.method public static addRecordToDbase(Landroid/content/Context;Ljava/lang/String;[B)J
    .locals 9

    .prologue
    .line 558
    const-wide/16 v2, -0x1

    .line 561
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 562
    const-string v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 564
    const-string v1, "priority"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    invoke-static {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 568
    invoke-virtual {v4, v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->insertToGame(Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 569
    :try_start_1
    invoke-virtual {v4}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :goto_0
    sget-object v2, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addRecordToDbase with id->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-wide v0

    .line 570
    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    .line 571
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 570
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static canAesToPush(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 714
    .line 717
    :try_start_0
    const-string v1, "cn.nubia.neopush"

    invoke-static {p0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_0

    .line 719
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 721
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 726
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canTransferDataToTrafficControl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 731
    :cond_0
    :goto_1
    return v0

    .line 724
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 728
    :catch_0
    move-exception v1

    .line 729
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

.method public static canAesToTrafficControl(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 695
    .line 698
    :try_start_0
    const-string v1, "cn.nubia.trafficcontrol"

    .line 697
    invoke-static {p0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_0

    .line 700
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
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

    goto :goto_0
.end method

.method public static checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 63
    :goto_0
    if-nez v0, :cond_0

    .line 64
    sget-object v1, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Required permission ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPhoneState(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 228
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 227
    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 493
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/nubia/reyun/utils/CommonUtil;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    return-object p0
.end method

.method public static checkSum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearExpiredRecordFromDbase(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 590
    :try_start_0
    invoke-static {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 592
    invoke-virtual {v0, p1}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->deleteFromGameByExpiredSeconds(I)V

    .line 593
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-object p0

    .line 532
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 533
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 534
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->compress(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 535
    const-string v0, "iso-8859-1"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static compress(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    const/16 v1, 0x830

    new-array v1, v1, [B

    .line 546
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 550
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 552
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 553
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 554
    return-void

    .line 547
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getAllImei(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    const-string v4, "config.pre_primary_slot"

    const/4 v5, 0x0

    .line 738
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 741
    const-string v0, "Apputil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "primarySlot="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 744
    const-string v0, "Apputil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "clz="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v0, v6

    .line 746
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    .line 747
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 748
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 749
    const-string v0, "Apputil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "instance="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "isMultiSimEnabled"

    const/4 v7, 0x0

    .line 751
    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 754
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 756
    const-string v7, "Apputil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isMultiSimEnabled = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v7, "getImei"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 759
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 758
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 760
    const-string v8, "getImei"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 762
    if-eqz v0, :cond_3

    .line 763
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 764
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v5

    .line 763
    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 765
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 766
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 770
    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    .line 769
    invoke-virtual {v7, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_1
    :goto_1
    return-object v3

    :cond_2
    move v0, v2

    .line 770
    goto :goto_0

    .line 776
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 775
    check-cast v0, Ljava/lang/String;

    .line 777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 782
    :catch_0
    move-exception v0

    .line 783
    const-string v1, "Apputil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exceoption="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 162
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v0, ""

    .line 166
    :cond_0
    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 170
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static getConnectType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/nubia/reyun/utils/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 387
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v0, "WIFI"

    .line 401
    :goto_0
    return-object v0

    .line 390
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    const-string v0, "unknown"

    goto :goto_0

    .line 398
    :cond_2
    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    const-string v1, "lost----> android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getCurVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    const-string v1, ""

    .line 270
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 272
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-gtz v1, :cond_1

    .line 274
    :cond_0
    const-string v0, ""

    .line 282
    :cond_1
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 277
    :goto_1
    const/16 v2, 0x40

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "VersionInfo"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    .line 102
    invoke-static {p1}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_0
    return-object p1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    .line 133
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public static getLastDay(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    .line 632
    const-string v0, "ry"

    .line 631
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 633
    const-string v1, "lastDay"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMillisSecondsString(JJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    sub-long v0, p2, p0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    .line 307
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 308
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 309
    const-string v0, "UNKOWN"

    .line 310
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 311
    const-string v0, "CDMA"

    .line 312
    const-string v0, "2G"

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 314
    const-string v0, "EDGE"

    .line 315
    const-string v0, "2G"

    goto :goto_0

    .line 316
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 317
    const-string v0, "EVDO_0"

    .line 318
    const-string v0, "3G"

    goto :goto_0

    .line 319
    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 320
    const-string v0, "EVDO_A"

    .line 321
    const-string v0, "3G"

    goto :goto_0

    .line 322
    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 323
    const-string v0, "GPRS"

    .line 324
    const-string v0, "2G"

    goto :goto_0

    .line 325
    :cond_5
    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 326
    const-string v0, "HSDPA"

    .line 327
    const-string v0, "3G"

    goto :goto_0

    .line 328
    :cond_6
    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    .line 329
    const-string v0, "HSPA"

    goto :goto_0

    .line 330
    :cond_7
    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    .line 331
    const-string v0, "HSUPA"

    goto :goto_0

    .line 332
    :cond_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 333
    const-string v0, "UMTS"

    .line 334
    const-string v0, "3G"

    goto :goto_0

    .line 335
    :cond_9
    const/16 v2, 0xd

    if-ne v1, v2, :cond_a

    .line 336
    const-string v0, "4G"

    goto :goto_0

    .line 337
    :cond_a
    if-nez v1, :cond_0

    .line 338
    const-string v0, "UNKOWN"

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 679
    const/4 v0, 0x0

    .line 682
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 683
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 684
    const/16 v2, 0x4000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 687
    :catch_0
    move-exception v1

    .line 688
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

.method public static getPhoneResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    const-string v0, "unknown"

    .line 209
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    check-cast v0, Landroid/view/WindowManager;

    .line 210
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method public static getRid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 675
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41ddcd64ffc00000L    # 1.999999999E9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0x40

    .line 242
    const-string v0, ""

    .line 243
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->checkPhoneState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 245
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "android_osVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OsVerson"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "android_osVersion"

    const-string v1, "OsVerson get failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/nubia/reyun/utils/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    .line 193
    goto :goto_0
.end method

.method public static getTelNo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 805
    const-string v1, ""

    .line 807
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 808
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    .line 809
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0xe10

    .line 84
    if-lez v0, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUTCTime(J)J
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 72
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 73
    const/16 v3, 0xe

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    .line 109
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    const-string v0, "uuid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "uuid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_0
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 411
    const-string v1, ""

    .line 413
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 415
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-gtz v1, :cond_1

    .line 417
    :cond_0
    const-string v0, ""

    .line 422
    :cond_1
    :goto_0
    return-object v0

    .line 419
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 420
    :goto_1
    sget-object v2, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 502
    const/4 v1, 0x0

    .line 504
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 505
    const/4 v3, 0x0

    .line 504
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 509
    :goto_0
    if-nez v0, :cond_0

    .line 512
    :goto_1
    return-object p1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isHaveGravity(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 291
    .line 292
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    check-cast v0, Landroid/hardware/SensorManager;

    .line 293
    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isImeiValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 139
    invoke-static {p0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedGzip(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 669
    if-nez p0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 471
    .line 472
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 473
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_0

    move v0, v1

    .line 476
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 483
    :cond_0
    :goto_1
    return v1

    .line 477
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 478
    const/4 v1, 0x1

    goto :goto_1

    .line 476
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkTypeWifi(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 352
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/nubia/reyun/utils/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 355
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 361
    goto :goto_0

    .line 364
    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->TAG:Ljava/lang/String;

    const-string v2, "lost----> android.permission.INTERNET"

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 791
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 792
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 796
    :goto_0
    return v0

    .line 793
    :catch_0
    move-exception v0

    .line 796
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 432
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 444
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    return-void
.end method

.method public static packData(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 616
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 617
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 619
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    :try_start_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_1
    return-object v1

    .line 619
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 620
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs packData([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 601
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 602
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 603
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 608
    :try_start_0
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_1
    return-object v1

    .line 603
    :cond_0
    aget-object v4, p0, v0

    .line 604
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/CommonUtil;->mIsShowLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    :cond_1
    return-void
.end method

.method public static removeRecordFromDbase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 579
    :try_start_0
    invoke-static {p0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;)Lcom/nubia/reyun/utils/ReYunDatabaseUtil;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->open()V

    .line 581
    invoke-virtual {v0, p1}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->deleteFromGameById(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Lcom/nubia/reyun/utils/ReYunDatabaseUtil;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLastDay(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 637
    .line 638
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 639
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastDay"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 641
    return-void
.end method

.method public static zip(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->zip([B)[B

    move-result-object v0

    .line 517
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static zip([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 522
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 523
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 524
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 525
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
