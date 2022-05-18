.class public Lcn/nubia/l/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/l/a/a$a;
    }
.end annotation


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;


# instance fields
.field public final a:Z

.field private d:Landroid/net/Uri;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/l/a/a;->b:Ljava/util/ArrayList;

    const-string v0, ""

    .line 58
    sput-object v0, Lcn/nubia/l/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcn/nubia/l/a/a;->d:Landroid/net/Uri;

    .line 62
    invoke-static {p2, p3}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, p4}, Lcn/nubia/l/c/a;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/l/a/a;->e:Landroid/graphics/Bitmap;

    .line 63
    iput-boolean p5, p0, Lcn/nubia/l/a/a;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcn/nubia/l/a/a;IJ)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 81
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    invoke-static {v1, p3, p4}, Lcn/nubia/l/a/a;->a(Landroid/content/ContentResolver;J)Lcn/nubia/l/a/a$a;

    move-result-object v2

    .line 87
    invoke-static {v1, p3, p4}, Lcn/nubia/l/a/a;->b(Landroid/content/ContentResolver;J)Lcn/nubia/l/a/a$a;

    move-result-object p3

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    return v0

    :cond_1
    const/4 p4, 0x1

    if-eqz v2, :cond_5

    if-eqz p3, :cond_2

    .line 95
    iget-wide v3, v2, Lcn/nubia/l/a/a$a;->c:J

    iget-wide v5, p3, Lcn/nubia/l/a/a$a;->c:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 96
    :cond_2
    iget-wide v3, v2, Lcn/nubia/l/a/a$a;->a:J

    const/4 p0, 0x0

    invoke-static {v1, v3, v4, p4, p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 99
    iget-object p3, v2, Lcn/nubia/l/a/a$a;->e:Ljava/lang/String;

    if-eqz p3, :cond_3

    iget-object p3, v2, Lcn/nubia/l/a/a$a;->e:Ljava/lang/String;

    const-string v3, "image/.*dng"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, p4

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_0
    const/16 v3, 0x1d

    .line 103
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_4

    if-nez p3, :cond_4

    move p3, v0

    goto :goto_1

    :cond_4
    iget p3, v2, Lcn/nubia/l/a/a$a;->b:I

    goto :goto_1

    .line 105
    :cond_5
    iget-object v2, p3, Lcn/nubia/l/a/a$a;->d:Landroid/net/Uri;

    invoke-static {p0, v2, p2}, Lcn/nubia/l/a/a;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 107
    iget v2, p3, Lcn/nubia/l/a/a$a;->b:I

    move v7, v2

    move-object v2, p3

    move p3, v7

    .line 110
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastMedia.uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/l/a/a$a;->d:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Thumbnail"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, v2, Lcn/nubia/l/a/a$a;->d:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcn/nubia/l/c/c;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    iget-object v1, v2, Lcn/nubia/l/a/a$a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 114
    iget-object v2, v2, Lcn/nubia/l/a/a$a;->d:Landroid/net/Uri;

    invoke-static {v2, p0, p3, p2, v1}, Lcn/nubia/l/a/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;

    move-result-object p0

    aput-object p0, p1, v0

    return p4

    :cond_6
    const/4 p0, 0x2

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "getVideoFrame fail "

    const-string v1, "Thumbnail"

    const/4 v2, 0x0

    .line 356
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 357
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x9

    .line 358
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    .line 362
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    const/16 p0, 0x3e8

    if-le p1, p0, :cond_1

    const-wide/32 p0, 0xf4240

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    .line 369
    :goto_0
    :try_start_2
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p1, "getFrameAtTime fail: bitmap is null"

    .line 371
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 312
    invoke-static {p0, p1}, Lcn/nubia/l/a/a;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "createVideoThumbnailBitmap fail"

    .line 315
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 321
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 322
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v1, p2, :cond_1

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    .line 325
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 326
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    .line 327
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static a(Landroid/content/ContentResolver;J)Lcn/nubia/l/a/a$a;
    .locals 12

    const-string v0, "Thumbnail"

    .line 196
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 198
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    const-string v3, "orientation"

    const-string v5, "datetaken"

    const-string v6, "mime_type"

    const-string v7, "relative_path"

    .line 199
    filled-new-array {v2, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {}, Lcn/nubia/l/a/a;->c()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND datetaken >\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \' AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " <\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 p1, 0x0

    move-object v3, p0

    move-object v5, v2

    .line 214
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 215
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 216
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 p2, 0x1

    .line 217
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 p2, 0x2

    .line 218
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 p2, 0x3

    .line 219
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 p2, 0x4

    .line 220
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 221
    new-instance p2, Lcn/nubia/l/a/a$a;

    .line 222
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lcn/nubia/l/a/a$a;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p0, p1

    :goto_2
    :try_start_2
    const-string v1, "SQLiteException in thumbnail"

    .line 229
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_3

    goto :goto_1

    :catch_3
    move-exception p2

    move-object p0, p1

    :goto_3
    const-string v1, "SQLiteDiskIOException in thumbnail"

    .line 227
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_4
    return-object p1

    :goto_5
    if-eqz p0, :cond_4

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_4
    throw p1
.end method

.method public static a(Landroid/graphics/Bitmap;II)Lcn/nubia/l/a/a;
    .locals 7

    .line 350
    new-instance v6, Lcn/nubia/l/a/a;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/l/a/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)V

    return-object v6
.end method

.method public static a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;
    .locals 8

    const-string v0, "Thumbnail"

    if-nez p0, :cond_0

    const-string p0, "Failed to create thumbnail from null uri"

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "create thumbnail with null bitmap"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    new-instance v0, Lcn/nubia/l/a/a;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/nubia/l/a/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)V

    return-object v0
.end method

.method public static a([BILandroid/net/Uri;IZ)Lcn/nubia/l/a/a;
    .locals 4

    if-eqz p0, :cond_0

    .line 296
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 297
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 299
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 302
    :try_start_0
    array-length v1, p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 304
    invoke-static {}, Lcn/nubia/l/c/a;->a()V

    .line 305
    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 308
    :goto_0
    invoke-static {p2, p0, p1, p3, p4}, Lcn/nubia/l/a/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 126
    :cond_0
    sget-object v1, Lcn/nubia/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static b(Landroid/content/ContentResolver;J)Lcn/nubia/l/a/a$a;
    .locals 12

    const-string v0, "Thumbnail"

    .line 239
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 241
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    const-string v3, "_data"

    const-string v5, "datetaken"

    const-string v6, "mime_type"

    const-string v7, "relative_path"

    .line 242
    filled-new-array {v2, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {}, Lcn/nubia/l/a/a;->c()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND datetaken >\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \' AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " <\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 p1, 0x0

    move-object v3, p0

    move-object v5, v2

    .line 255
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 256
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastVideoThumbnail: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 258
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 p2, 0x3

    .line 259
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 p2, 0x4

    .line 260
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 261
    new-instance p2, Lcn/nubia/l/a/a$a;

    const/4 v5, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 262
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lcn/nubia/l/a/a$a;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 271
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p0, p1

    :goto_2
    :try_start_2
    const-string v1, "SQLiteException in thumbnail"

    .line 268
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_3

    goto :goto_1

    :catch_3
    move-exception p2

    move-object p0, p1

    :goto_3
    const-string v1, "SQLiteDiskIOException in thumbnail"

    .line 266
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_4
    return-object p1

    :goto_5
    if-eqz p0, :cond_4

    .line 271
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_4
    throw p1
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 279
    sget-object v0, Lcn/nubia/l/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    sget-object v0, Lcn/nubia/l/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "relative_path LIKE \'DCIM/Camera/%\'"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/l/a/a;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/l/a/a;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method
