.class public Lcn/nubia/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "GalleryDebug"

.field private static final INITIALCRC:J = -0x1L

.field private static final IS_DEBUG_BUILD:Z

.field private static final MASK_STRING:Ljava/lang/String; = "********************************"

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 46
    sput-object v1, Lcn/nubia/gallery3d/common/Utils;->sCrcTable:[J

    .line 48
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "userdebug"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcn/nubia/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    int-to-long v4, v1

    move v6, v2

    :goto_3
    const/16 v7, 0x8

    if-ge v6, v7, :cond_3

    long-to-int v7, v4

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    const-wide v7, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_4

    :cond_2
    const-wide/16 v7, 0x0

    :goto_4
    shr-long/2addr v4, v3

    xor-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 158
    :cond_3
    sget-object v6, Lcn/nubia/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static ceilLog2(F)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
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

    .line 72
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

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Utils"

    const-string v1, "fail to close"

    .line 222
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Utils"

    const-string v1, "close fail"

    .line 185
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static compare(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 328
    new-array v0, p1, [Ljava/lang/String;

    .line 329
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 330
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final crc64Long([B)J
    .locals 7

    .line 164
    array-length v0, p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 165
    sget-object v4, Lcn/nubia/gallery3d/common/Utils;->sCrcTable:[J

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

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 346
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryDebug"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 79
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

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 295
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "&#039;"

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "&amp;"

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "&gt;"

    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v3, "&lt;"

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, "&quot;"

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static floorLog2(F)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    shl-int v1, v2, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v0, v2

    return v0
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 6

    .line 361
    div-int/lit16 v0, p0, 0xe10

    mul-int/lit16 v1, v0, 0xe10

    sub-int v2, p0, v1

    .line 362
    div-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    add-int/2addr v1, v3

    sub-int/2addr p0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%1$02d:%2$02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "%1$02d:%2$02d:%3$02d"

    .line 364
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 7

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 173
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

    .line 174
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 175
    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "storage"

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 373
    const-class v0, Landroid/os/storage/StorageManager;

    const-string v1, "getVolumeState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 375
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 311
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p0, v0, v1

    const/4 p0, 0x2

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x3

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x5

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x6

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v1, v0, p0

    const/4 p0, 0x7

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v0, p0

    const/16 p0, 0x8

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v1, v0, p0

    const-string p0, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getPackageInfo failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 281
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 283
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 p0, 0x1

    return p0
.end method

.method public static interpolateAngle(FFF)F
    .locals 3

    sub-float/2addr p1, p0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v2

    :cond_1
    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    cmpg-float p1, p0, v0

    if-gez p1, :cond_2

    add-float/2addr p0, v2

    :cond_2
    return p0
.end method

.method public static interpolateScale(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isOpaque(I)Z
    .locals 1

    ushr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStorageMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 383
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/common/Utils;->getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "mounted"

    .line 384
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTopActivity(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "activity"

    .line 350
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 353
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 341
    sget-boolean v1, Lcn/nubia/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const-string v1, "********************************"

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static nextPowerOf2(I)I
    .locals 1

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

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 251
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 260
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static prevPowerOf2(I)I
    .locals 0

    if-lez p0, :cond_0

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static swap([III)V
    .locals 2

    .line 131
    aget v0, p0, p1

    .line 132
    aget v1, p0, p2

    aput v1, p0, p1

    .line 133
    aput v0, p0, p2

    return-void
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 2

    .line 272
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected interrupt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
