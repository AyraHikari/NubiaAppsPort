.class public Lcn/nubia/gallery3d/util/RecycleHelper;
.super Ljava/lang/Object;
.source "RecycleHelper.java"


# static fields
.field public static final DAY_LIMIT:I = 0x1e

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final ROOT_PATH:Ljava/lang/String; = "/.GalleryRecycled"

.field private static final TAG:Ljava/lang/String; = "RecycleHelper"

.field public static final UNSUPPORT_PATH:Ljava/lang/String; = "unsupported-path"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRecyclePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RecycleHelper"

    if-nez p0, :cond_0

    const-string p0, "Recycle: source path null"

    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v2, 0x2f

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    const-string p0, "directory not support"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    .line 61
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, "/.GalleryRecycled"

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root not support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "unsupported-path"

    return-object p0
.end method

.method public static createRecycledAlbumCover(Landroid/content/Context;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 6

    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {p0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v1

    const-string v2, "count(_id)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v1, v2, v4, v3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->query([Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 121
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    new-instance p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    invoke-direct {p0, v3, v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :try_start_2
    iput v2, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 127
    :cond_0
    :try_start_3
    invoke-static {p0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->startDeleteService(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 131
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v0, p0

    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 134
    throw p0
.end method

.method private static getElapsedDays(J)I
    .locals 2

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static getRecycledDateMillsByCurrentExpired()J
    .locals 4

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRemainingDays(J)I
    .locals 0

    .line 151
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/RecycleHelper;->getElapsedDays(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1e

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isRecycledDateExpired(J)Z
    .locals 0

    .line 143
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/RecycleHelper;->getElapsedDays(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1e

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static recoverItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x0

    .line 92
    invoke-static {p0, p2, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recover: src file not exists:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecycleHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 97
    :cond_0
    invoke-static {p0, v0, p2}, Lcn/nubia/gallery3d/util/RecycleHelper;->renameForMove(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static recycleItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x0

    .line 81
    invoke-static {p0, p2, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recycle: src file not exists:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecycleHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/util/RecycleHelper;->renameForMove(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static renameDstFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "."

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 70
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "_yyMMdd Hms"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/util/RecycleHelper;->renameDstFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static renameForMove(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 101
    new-instance p0, Ljava/io/File;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "RecycleHelper"

    const-string p1, "mkdir failed for method renameForMove"

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 110
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static setupExternalRecycledFolder()V
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.GalleryRecycled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create external recycled folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecycleHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setupRecycledFolder()V
    .locals 0

    .line 175
    invoke-static {}, Lcn/nubia/gallery3d/util/RecycleHelper;->setupExternalRecycledFolder()V

    .line 176
    invoke-static {}, Lcn/nubia/gallery3d/util/RecycleHelper;->setupSdRecycledFolder()V

    return-void
.end method

.method public static setupSdRecycledFolder()V
    .locals 3

    .line 164
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.GalleryRecycled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create sd recycled folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecycleHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
