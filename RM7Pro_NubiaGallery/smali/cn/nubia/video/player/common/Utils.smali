.class public Lcn/nubia/video/player/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/Utils$MediaPlayerControl;,
        Lcn/nubia/video/player/common/Utils$Defs;
    }
.end annotation


# static fields
.field private static final CAMRECORDER:Ljava/lang/String; = "VID_"

.field public static final HAS_MEDIA_MUXER:Z

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final SHORTVIDEO:Ljava/lang/String; = "movie_"

.field private static TAG:Ljava/lang/String; = "Utils"

.field private static final TRIMVIDEO:Ljava/lang/String; = "TRIM_"

.field private static mIsPrintLog:Z = false

.field private static sCrcTable:[J = null

.field private static sPixelDensity:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 60
    sput-object v1, Lcn/nubia/video/player/common/Utils;->sCrcTable:[J

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-lt v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcn/nubia/video/player/common/Utils;->HAS_MEDIA_MUXER:Z

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    int-to-long v4, v1

    move v6, v2

    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    long-to-int v7, v4

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    const-wide v7, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_3

    :cond_1
    const-wide/16 v7, 0x0

    :goto_3
    shr-long/2addr v4, v3

    xor-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 206
    :cond_2
    sget-object v6, Lcn/nubia/video/player/common/Utils;->sCrcTable:[J

    aput-wide v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 129
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clamp(JJJ)J
    .locals 1

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    return-wide p4

    :cond_0
    cmp-long p4, p0, p2

    if-gez p4, :cond_1

    return-wide p2

    :cond_1
    return-wide p0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p0}, Lcn/nubia/video/player/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/video/player/common/Utils;->crc64Long([B)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final crc64Long([B)J
    .locals 7

    .line 212
    array-length v0, p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 213
    sget-object v4, Lcn/nubia/video/player/common/Utils;->sCrcTable:[J

    long-to-int v5, v1

    aget-byte v6, p0, v3

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long/2addr v1, v6

    xor-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .line 462
    div-int/lit16 v0, p1, 0xe10

    mul-int/lit16 v1, v0, 0xe10

    sub-int v2, p1, v1

    .line 463
    div-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    const v1, 0x7f100086

    .line 465
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "_data"

    .line 257
    invoke-static {p0, p1, v0}, Lcn/nubia/video/player/common/Utils;->searchVideoDetails(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 7

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 222
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 223
    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getColumnInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 488
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 489
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p1}, Lcn/nubia/video/player/common/Utils;->isStreaming(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "content"

    .line 491
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 494
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 495
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 496
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 499
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 501
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 490
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    return-object v2
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    .line 356
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 361
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 363
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 367
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v7, p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_3
    throw p1
.end method

.method public static getLastPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getListSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "datetaken DESC, _id DESC"

    return-object v0
.end method

.method public static getListWhereClause()Ljava/lang/String;
    .locals 1

    const-string v0, "title != \'\'"

    return-object v0
.end method

.method public static getMainStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 508
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 509
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string p0, "android.os.Environment"

    const-string v1, "getSecondaryStorageDirectory"

    .line 512
    invoke-static {p0, v1}, Lcn/nubia/video/player/common/Utils;->getReflectMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 515
    invoke-static {p0, v0, v1}, Lcn/nubia/video/player/common/Utils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    .line 517
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static getReflectMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 415
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 419
    :catch_0
    :try_start_1
    sget-object p0, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 417
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method public static getReflectMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x0

    .line 429
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 430
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 436
    :catch_0
    :try_start_1
    sget-object p0, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception p0

    .line 434
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_2
    move-exception p0

    .line 432
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getVideoTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const-string v0, "_data"

    .line 470
    invoke-static {p0, p1, v0}, Lcn/nubia/video/player/common/Utils;->getColumnInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2e

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 475
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 477
    invoke-static {p0, p1, v0}, Lcn/nubia/video/player/common/Utils;->getColumnInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const p1, 0x7f1001b7

    .line 481
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 83
    sget v0, Lcn/nubia/video/player/common/Utils;->sPixelDensity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 86
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcn/nubia/video/player/common/Utils;->sPixelDensity:F

    :cond_0
    return-void
.end method

.method public static varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Exception: "

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 447
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 453
    :try_start_1
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 451
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_2
    move-exception p0

    .line 449
    sget-object p1, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method private static is24Hours(Landroid/content/Context;)Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    .line 542
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "24"

    .line 544
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 389
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    .line 388
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 379
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    .line 378
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 399
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isStreaming(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 404
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http"

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcn/nubia/video/player/common/Utils;->mIsPrintLog:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    sget-boolean v0, Lcn/nubia/video/player/common/Utils;->mIsPrintLog:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static nextPowerOf2(I)I
    .locals 3

    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prevPowerOf2(I)I
    .locals 0

    if-lez p0, :cond_0

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static searchVideoDetails(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 274
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 277
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 279
    invoke-static {p1}, Lcn/nubia/video/player/common/Utils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result p2

    const-string v3, ":"

    if-eqz p2, :cond_1

    .line 280
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 282
    aget-object p1, p0, v1

    const-string p2, "primary"

    .line 284
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_1
    invoke-static {p1}, Lcn/nubia/video/player/common/Utils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 294
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://downloads/public_downloads"

    .line 296
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 297
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 295
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 299
    invoke-static {p0, p1, v2, v2}, Lcn/nubia/video/player/common/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :cond_2
    invoke-static {p1}, Lcn/nubia/video/player/common/Utils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 303
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 305
    aget-object p2, p1, v1

    const-string v3, "image"

    .line 308
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    const-string v3, "video"

    .line 310
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 311
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const-string v3, "audio"

    .line 312
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 313
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_5
    :goto_1
    new-array p2, v0, [Ljava/lang/String;

    .line 317
    aget-object p1, p1, v0

    aput-object p1, p2, v1

    const-string p1, "_id=?"

    .line 319
    invoke-static {p0, v2, p1, p2}, Lcn/nubia/video/player/common/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 325
    invoke-static {p0, p1, v2, v2}, Lcn/nubia/video/player/common/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 328
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 329
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_8
    invoke-static {p1}, Lcn/nubia/video/player/common/Utils;->isStreaming(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 331
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v2
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .locals 8

    long-to-int p0, p0

    .line 521
    div-int/lit16 p0, p0, 0x3e8

    .line 522
    rem-int/lit8 p1, p0, 0x3c

    .line 523
    div-int/lit8 v0, p0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 524
    div-int/lit16 p0, p0, 0xe10

    .line 525
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "%d:%02d:%02d"

    const-string v4, "%02d:%02d"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v1, :cond_1

    const-string v1, "ar"

    if-lez p0, :cond_0

    .line 527
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {v4, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 529
    :cond_0
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez p0, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    .line 533
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p0, v7, [Ljava/lang/Object;

    .line 535
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static useSimplePlayer(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "content://gmail-ls/"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://downloads/"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://mms_temp_file/"

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://mms/part/"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file:///storage/sdcard0/Android/data/com.android.contacts/cache/"

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file:///storage/emulated/0/Android/data/com.android.mms/cache/"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/.temp/"

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file:///storage/emulated/0/.nubia_prv_store/"

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file:///storage/sdcard1/.nubia_prv_store/"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "rtsp://"

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.android.email"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 3

    .line 553
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    sget-object v0, Lcn/nubia/video/player/common/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected interrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
