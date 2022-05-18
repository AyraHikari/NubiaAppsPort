.class public Lcom/hpplay/sdk/source/common/utils/HapplayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_CHAR:[C

.field private static final NUMBERS:[C

.field private static final TAG:Ljava/lang/String; = "HapplayUtils"

.field private static final USE_LOOPBACK_ADDR:Z = false

.field private static final USE_ONLY_IPV4_ADDR:Z = true

.field private static final USE_ONLY_IPV6_ADDR:Z

.field private static mfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->HEX_CHAR:[C

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->NUMBERS:[C

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->mfMap:Ljava/util/HashMap;

    return-void

    .line 65
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 68
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Encrypt(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 108
    new-array v0, v4, [B

    .line 111
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 112
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 113
    array-length v3, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->strcrypt([BI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 119
    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x78

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const/4 v0, 0x0

    .line 121
    :cond_0
    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 535
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x5

    new-array v2, v1, [C

    .line 537
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 538
    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x30

    aput-char v6, v2, v1

    .line 539
    add-int/lit8 v1, v5, 0x1

    const/16 v6, 0x78

    aput-char v6, v2, v5

    .line 540
    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v1

    .line 541
    add-int/lit8 v6, v5, 0x1

    sget-object v1, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->HEX_CHAR:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v1, v1, v4

    aput-char v1, v2, v5

    .line 542
    add-int/lit8 v1, v6, 0x1

    const/16 v4, 0x2c

    aput-char v4, v2, v6

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static bytesToInt([B)I
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static checkLoaclPort(I)Z
    .locals 3

    .prologue
    .line 821
    const/4 v0, 0x1

    .line 823
    :try_start_0
    const-string v1, "127.0.0.1"

    invoke-static {v1, p0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->isPortUsing(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 827
    :goto_0
    return v0

    .line 824
    :catch_0
    move-exception v1

    .line 825
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static codeEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lebo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 403
    new-instance v2, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 404
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 405
    array-length v3, v0

    invoke-virtual {v2, v0, v3, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->strcrypt([BI[B)V

    .line 406
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 408
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 409
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 415
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public static doubleCompare(DD)Z
    .locals 4

    .prologue
    .line 584
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static drEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, ""

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    const/16 v0, 0x10

    :try_start_0
    new-array v3, v0, [B

    .line 131
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 132
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 133
    array-length v2, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->strcrypt([BI[B)V

    .line 134
    const-string v1, ""

    .line 135
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v1, v3, v2

    .line 136
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const-string v0, ""

    goto :goto_0
.end method

.method public static final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 792
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 793
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 794
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 792
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 795
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 796
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 797
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 798
    return-object v0

    .line 794
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static floatCompare(FF)Z
    .locals 2

    .prologue
    .line 580
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatToMillis(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 270
    const-string v2, "HapplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---formatToMillis --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    :goto_0
    return-wide v0

    .line 274
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 278
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    const-string v3, "HapplayUtils"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 780
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 781
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 783
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 784
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 462
    .line 464
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 466
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return v0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 475
    const-string v0, ""

    .line 477
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 478
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 805
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 806
    const-string v0, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 809
    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 810
    const-string v0, "getApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 811
    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 812
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    return-object v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    const-string v2, "HapplayUtils"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getBody([B)[B
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 520
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 521
    aget-byte v2, p0, v0

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_0

    .line 525
    array-length v2, p0

    add-int/lit8 v3, v0, 0x4

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 526
    add-int/lit8 v3, v0, 0x4

    array-length v4, v2

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    const-string v1, "HapplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body totalLength"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    add-int/lit8 v0, v0, 0x3

    sub-int v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 531
    :goto_1
    return-object v0

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getConfigMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->mfMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getContentLength(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 493
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 495
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 496
    aget-object v3, v2, v0

    const-string v4, "Content-Length:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    :try_start_0
    aget-object v0, v2, v0

    .line 499
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 500
    const-string v2, "HapplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentLength"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 508
    :cond_0
    :goto_1
    return v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v2, "HapplayUtils"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDateTime(J)Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 853
    const-string v0, "GMT+8"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v4

    .line 854
    invoke-virtual {v4, p0, p1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 855
    invoke-virtual {v4, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 857
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 859
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 867
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    :goto_1
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 875
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 881
    :goto_2
    const/16 v3, 0xc

    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 883
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 889
    :goto_3
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    .line 891
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 870
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 878
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 886
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 894
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public static getFileEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 222
    const-string v0, ""

    .line 224
    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    .line 226
    new-instance v2, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 227
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdInit()V

    .line 228
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 230
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 231
    invoke-virtual {v2, v1, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdUpdate([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :goto_1
    return-object v0

    .line 233
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 234
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 235
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdDoFinal([B)V

    .line 236
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 237
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static getHeader([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    array-length v0, p0

    .line 95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 96
    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    new-array v1, v0, [B

    .line 98
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    new-instance v0, Ljava/lang/String;

    array-length v2, v1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 100
    return-object v0
.end method

.method public static final getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    const-string v0, ""

    goto :goto_0
.end method

.method public static final getHostCount()I
    .locals 5

    .prologue
    .line 666
    const/4 v1, 0x0

    .line 668
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 669
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 671
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 672
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 674
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    add-int/lit8 v1, v1, 0x1

    .line 677
    goto :goto_0

    :cond_2
    move v0, v1

    .line 682
    :goto_1
    return v0

    .line 679
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 680
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static final getIpStr(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 702
    const/4 v1, 0x0

    .line 704
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 705
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 707
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 708
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 710
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 712
    if-ge v1, p0, :cond_2

    .line 713
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 714
    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 723
    :goto_1
    return-object v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static getJsonParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 446
    if-eqz p0, :cond_0

    .line 447
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 448
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoaclIp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 307
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 309
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 310
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 312
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-nez v4, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 316
    const-string v5, "127.0.0.1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 321
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v2, "HapplayUtils"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getMac()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 728
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 730
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 734
    if-nez v2, :cond_1

    .line 735
    const-string v0, ""

    .line 750
    :goto_0
    return-object v0

    .line 737
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v1, v2, v0

    .line 739
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 742
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 744
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    :cond_4
    const-string v0, "02:00:00:00:00:00"

    goto :goto_0
.end method

.method public static getMapParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 429
    const-string v0, ""

    .line 430
    if-eqz p0, :cond_0

    .line 431
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    .line 432
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 436
    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 438
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 439
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 441
    :cond_2
    return-object v2
.end method

.method public static getMetaDataValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 248
    const-string v0, "happycast"

    .line 266
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 256
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :cond_1
    if-nez v0, :cond_2

    .line 264
    const-string v0, "happycast"

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const-string v0, "happycast"

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNumsInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 557
    const-string v0, ""

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v2

    .line 559
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_2

    move v1, v2

    .line 560
    :goto_1
    sget-object v4, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->NUMBERS:[C

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 561
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->NUMBERS:[C

    aget-char v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->NUMBERS:[C

    aget-char v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 559
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 567
    :cond_2
    return-object v0
.end method

.method public static final getPort(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x3e8

    .line 340
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    if-gtz v1, :cond_0

    .line 348
    :goto_0
    return v0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getProtocolDivide(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 512
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 513
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_0

    .line 515
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 516
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreaEncrypt(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 198
    const-string v0, ""

    .line 200
    if-nez p0, :cond_0

    .line 201
    :try_start_0
    const-string v0, ""

    .line 218
    :goto_0
    return-object v0

    .line 203
    :cond_0
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 205
    new-instance v2, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 206
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdInit()V

    .line 207
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 208
    invoke-virtual {v2, v1, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdUpdate([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    .line 216
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 212
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdDoFinal([B)V

    .line 213
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 214
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemPropertiesBoolean(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 372
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 373
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 374
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 375
    const-string v1, "HapplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get boolean SystemProperties ----> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    .line 379
    :goto_0
    return p1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getWifiIp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 628
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 629
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 631
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 632
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wlan0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 635
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 636
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    const-string v2, "HapplayUtils"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static initManufacture(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 755
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->mfMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "mfConfig"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 757
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 758
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    :cond_0
    return-void

    .line 764
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 765
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 766
    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 767
    sget-object v2, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->mfMap:Ljava/util/HashMap;

    aget-object v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v2, "HapplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 765
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static intToBytes(I)[B
    .locals 3

    .prologue
    .line 548
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 549
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 550
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 551
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 552
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 553
    return-object v0
.end method

.method public static isAllowCast(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 596
    if-eqz p0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->tid:Ljava/lang/String;

    .line 600
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 601
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainsNewInfo(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/b/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 650
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 652
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 660
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 656
    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 660
    goto :goto_0
.end method

.method public static isPortUsing(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 832
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 833
    const/4 v2, 0x0

    .line 835
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v1, p1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    const/4 v0, 0x1

    .line 840
    if-eqz v3, :cond_0

    .line 842
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 848
    :cond_0
    :goto_0
    return v0

    .line 843
    :catch_0
    move-exception v1

    .line 844
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 837
    :catch_1
    move-exception v1

    .line 838
    :try_start_2
    const-string v3, "HapplayUtils"

    invoke-static {v3, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    if-eqz v2, :cond_0

    .line 842
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 843
    :catch_2
    move-exception v1

    .line 844
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 842
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 845
    :cond_1
    :goto_1
    throw v0

    .line 843
    :catch_3
    move-exception v1

    .line 844
    const-string v2, "HapplayUtils"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 691
    :cond_1
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    move v0, v1

    .line 698
    goto :goto_0
.end method

.method public static makeAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", nonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", response=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string v1, "HapplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  makeAuthorization authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v0
.end method

.method public static millisToFormat(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    const-string v0, "HapplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---Millis   To   Format --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 289
    const-string v0, "00:00:00"

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 293
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parsePort(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 572
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 576
    :goto_0
    return v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeHeader([B)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    array-length v1, p0

    .line 77
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 78
    const-string v0, "\r\n\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 79
    sub-int v0, v1, v3

    add-int/lit8 v4, v0, -0x4

    .line 80
    new-array v0, v4, [B

    .line 81
    add-int/lit8 v3, v3, 0x4

    invoke-static {p0, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 83
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v0, "\r\n\r\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 85
    sub-int v0, v1, v2

    add-int/lit8 v1, v0, -0x6

    .line 86
    new-array v0, v1, [B

    .line 87
    add-int/lit8 v2, v2, 0x6

    invoke-static {p0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_0
    return-object v0
.end method

.method public static secToTime(J)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v2, 0x3c

    .line 904
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 905
    const-string v0, "00:00:00"

    .line 920
    :goto_0
    return-object v0

    .line 907
    :cond_0
    div-long v0, p0, v2

    long-to-int v0, v0

    .line 908
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 909
    rem-long v2, p0, v2

    long-to-int v1, v2

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 912
    :cond_1
    div-int/lit8 v1, v0, 0x3c

    .line 913
    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 914
    const-string v0, "99:59:59"

    goto :goto_0

    .line 915
    :cond_2
    rem-int/lit8 v0, v0, 0x3c

    .line 916
    mul-int/lit16 v2, v1, 0xe10

    int-to-long v2, v2

    sub-long v2, p0, v2

    mul-int/lit8 v4, v0, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static strEncrpyt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x10

    .line 152
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    const/4 v1, 0x0

    .line 161
    new-array v3, v9, [C

    fill-array-data v3, :array_0

    .line 164
    const/16 v4, 0x10

    :try_start_1
    new-array v4, v4, [B

    .line 165
    new-instance v5, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v5}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 166
    array-length v6, v0

    invoke-virtual {v5, v0, v6, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->strcrypt([BI[B)V

    .line 167
    const/16 v0, 0x20

    new-array v5, v0, [C

    move v0, v2

    .line 169
    :goto_1
    if-ge v0, v9, :cond_1

    .line 170
    aget-byte v6, v4, v0

    .line 171
    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v2

    .line 172
    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, ""

    .line 178
    :goto_2
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    .line 176
    const-string v2, "HapplayUtils"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 161
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static strToMdHash(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 183
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 185
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    .line 186
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdInit()V

    .line 188
    array-length v3, v2

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdUpdate([BI)V

    .line 189
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->mdDoFinal([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "HapplayUtils"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unitFormat(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 925
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_0
    return-object v0

    .line 928
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
