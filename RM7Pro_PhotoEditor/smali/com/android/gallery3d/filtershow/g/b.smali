.class public Lcom/android/gallery3d/filtershow/g/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/g/b$f;,
        Lcom/android/gallery3d/filtershow/g/b$e;
    }
.end annotation


# static fields
.field private static h:Z = false


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private final c:Lcom/android/gallery3d/filtershow/g/b$e;

.field private final d:Ljava/io/File;

.field private e:Landroid/net/Uri;

.field private final f:Landroid/graphics/Bitmap;

.field private g:Lcom/android/gallery3d/dng/ImageRGB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/g/b$e;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/g/b;->g:Lcom/android/gallery3d/dng/ImageRGB;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/g/b;->b:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/gallery3d/filtershow/g/b;->c:Lcom/android/gallery3d/filtershow/g/b$e;

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/g/b;->f:Landroid/graphics/Bitmap;

    if-nez p4, :cond_0

    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/g/b;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    :goto_0
    sget-boolean p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0:Z

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    sput-boolean p4, Lcom/android/gallery3d/filtershow/g/b;->h:Z

    new-instance p2, Lcom/android/gallery3d/dng/ImageRGB;

    invoke-direct {p2}, Lcom/android/gallery3d/dng/ImageRGB;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/g/b;->g:Lcom/android/gallery3d/dng/ImageRGB;

    :cond_1
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "_yyyyMMdd_HHmmss"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IMG"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p2, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    move v6, p2

    move v7, p3

    goto :goto_1

    :cond_2
    move v6, p2

    move v7, v6

    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/g/b;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/g/b;->k(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/g/b;->b:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    div-long/2addr p3, v4

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "date_added"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "orientation"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "_data"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "datetaken"

    const-string p3, "latitude"

    const-string p4, "longitude"

    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/android/gallery3d/filtershow/g/b$d;

    invoke-direct {p3, v0}, Lcom/android/gallery3d/filtershow/g/b$d;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/g/b;->q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->g(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/emulated/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object p1
.end method

.method private static d(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SaveImage"

    if-nez p1, :cond_0

    const-string p0, "srcUri is null."

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "scheme is null."

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/g/b$b;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/g/b$b;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/g/b;->q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    goto :goto_1

    :cond_2
    const-string p0, "file"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object p0, v0, v3

    :cond_3
    :goto_1
    aget-object p0, v0, v3

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 7

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->i(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    const-string p1, "_"

    const-string v2, ".dng"

    const-string v3, ".jpg"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/android/gallery3d/filtershow/g/b;->h:Z

    const-string v6, "PANO"

    if-ne p0, v4, :cond_1

    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v5, v4

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v5, v4

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    sget-boolean p0, Lcom/android/gallery3d/filtershow/g/b;->h:Z

    const-string v6, "IMG"

    if-ne p0, v4, :cond_5

    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v5, v4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v5, v4

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method private static g(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static h(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/g/b$c;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/g/b$c;-><init>([Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/g/b;->q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "PANO"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 11

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "width"

    const-string v1, "height"

    const-string v2, "orientation"

    const-string v3, "_data"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, 0x3

    :try_start_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v3, v2

    :cond_1
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10e

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v10, v3

    move v3, p1

    move p1, v10

    goto :goto_0

    :catch_0
    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    throw p1

    :catch_1
    :cond_3
    move p1, v1

    move v3, p1

    :catch_2
    :goto_0
    invoke-static {v0}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->h()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->g()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v0, :cond_6

    :cond_4
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static k(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;JII)Landroid/net/Uri;
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p4, v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "datetaken"

    invoke-virtual {v2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v1, "date_modified"

    invoke-virtual {v2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "date_added"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "orientation"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "_data"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "latitude"

    const-string p3, "longitude"

    filled-new-array {v0, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/android/gallery3d/filtershow/g/b$a;

    invoke-direct {p3, v2}, Lcom/android/gallery3d/filtershow/g/b$a;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/g/b;->q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/g/b;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object p2

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/g/b;->l(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static q(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/g/b;->r(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V

    return-void
.end method

.method private static r(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/g/b$f;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/g/b$f;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :catch_0
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private s()V
    .locals 0

    return-void
.end method

.method private t(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)Landroid/net/Uri;
    .locals 7

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->E()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/g/b;->b:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/g/b;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/g/b;->m(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JZ)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X0()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->a0()Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->h(B)Z

    move-result v5

    const/16 v6, 0x5a

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f(Landroid/content/Context;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private v(Lc/b/a/c/c;J)V
    .locals 2

    sget v0, Lc/b/a/c/c;->h0:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lc/b/a/c/c;->g(II)V

    sget v0, Lc/b/a/c/c;->x:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1, v0, p2, p3, v1}, Lc/b/a/c/c;->a(IJLjava/util/TimeZone;)Z

    sget p2, Lc/b/a/c/c;->n:I

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    invoke-virtual {p1}, Lc/b/a/c/c;->C()V

    return-void
.end method

.method public static w(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method private x(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFile, bitmap.getWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bitmap.getHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SaveImage"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v2, "height"

    invoke-virtual {p3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v2, "datetaken"

    invoke-virtual {p3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v2, "date_modified"

    invoke-virtual {p3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v0, "date_added"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method


# virtual methods
.method public b(Landroid/net/Uri;)Lc/b/a/c/c;
    .locals 6

    const-string v0, "SaveImage"

    new-instance v1, Lc/b/a/c/c;

    invoke-direct {v1}, Lc/b/a/c/c;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/e/b;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/b/a/c/c;->A(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read exif for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {v2}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    :goto_3
    return-object v1
.end method

.method public f(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->J()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lc/b/a/d/a;->a(Ljava/io/InputStream;)Lc/a/a/d;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {p1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_1
    :try_start_2
    const-string v1, "SaveImage"

    const-string v2, "Failed to get XMP data from image: "

    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    invoke-static {v0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p2

    :cond_0
    :goto_3
    return-object v0
.end method

.method public n(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ZIFZ)Landroid/net/Uri;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-string v4, "ProcessAndSaveImage : bitmap recycle"

    const/4 v5, 0x0

    if-eqz p5, :cond_0

    xor-int/lit8 v0, p2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/filtershow/g/b;->t(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_1

    return-object v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processAndSaveImage, mDestinationFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SaveImage"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/g/b;->s()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/imageshow/x;->H()I

    move-result v6

    iget-object v8, v1, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    iget-object v9, v1, Lcom/android/gallery3d/filtershow/g/b;->b:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/gallery3d/filtershow/g/b;->f:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    invoke-virtual {v1, v8, v2}, Lcom/android/gallery3d/filtershow/g/b;->f(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/g/b;->b(Landroid/net/Uri;)Lc/b/a/c/c;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v1, v11, v12, v13}, Lcom/android/gallery3d/filtershow/g/b;->v(Lc/b/a/c/c;J)V

    if-eqz p2, :cond_2

    iget-object v14, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    iget-object v15, v1, Lcom/android/gallery3d/filtershow/g/b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v14, v11, v15, v3}, Lcom/android/gallery3d/filtershow/g/b;->o(Ljava/io/File;Lc/b/a/c/c;Landroid/graphics/Bitmap;I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v1, v11, v10}, Lcom/android/gallery3d/filtershow/g/b;->p(Ljava/io/File;Ljava/lang/Object;)Z

    iget-object v10, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    iget-object v14, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {v10, v11, v14, v12, v13}, Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object v10

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_2
    iget-object v12, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    iget-object v13, v1, Lcom/android/gallery3d/filtershow/g/b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v12, v11, v13, v3}, Lcom/android/gallery3d/filtershow/g/b;->o(Ljava/io/File;Lc/b/a/c/c;Landroid/graphics/Bitmap;I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v1, v11, v10}, Lcom/android/gallery3d/filtershow/g/b;->p(Ljava/io/File;Ljava/lang/Object;)Z

    if-nez p2, :cond_3

    iget-object v10, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {v10, v8, v11, v2}, Lcom/android/gallery3d/filtershow/g/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget-object v10, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    iget-object v12, v1, Lcom/android/gallery3d/filtershow/g/b;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v10, v9, v11, v12}, Lcom/android/gallery3d/filtershow/g/b;->x(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    :cond_3
    :goto_1
    iget-object v10, v1, Lcom/android/gallery3d/filtershow/g/b;->c:Lcom/android/gallery3d/filtershow/g/b$e;

    if-eqz v10, :cond_4

    invoke-interface {v10, v9}, Lcom/android/gallery3d/filtershow/g/b$e;->a(Landroid/net/Uri;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage preview finish, savedUri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v11, 0x1

    move-object v14, v5

    move v12, v6

    move v13, v11

    const/4 v15, 0x0

    move-object v6, v0

    :goto_2
    if-eqz v13, :cond_14

    :try_start_0
    const-string v0, "SaveImage large start"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/gallery3d/filtershow/g/b;->h:Z

    if-ne v0, v11, :cond_6

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->g:Lcom/android/gallery3d/dng/ImageRGB;

    invoke-static {v0, v2}, Lcom/android/gallery3d/dng/b;->a(Lcom/android/gallery3d/dng/ImageRGB;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->g:Lcom/android/gallery3d/dng/ImageRGB;

    sget-object v10, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G0:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/android/gallery3d/dng/ImageRGB;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v11, :cond_6

    move v10, v12

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {v0, v9, v5, v11, v12}, Lcom/android/gallery3d/filtershow/g/b;->w(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object v9

    :cond_6
    move v10, v12

    :try_start_2
    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/filtershow/g/b;->j(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    :cond_7
    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    invoke-static {v0, v5, v10}, Lcom/android/gallery3d/filtershow/e/b;->q(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_9

    const-string v0, "lyg"

    const-string v5, "processAndSaveImage loadBitmap return null"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    const/4 v11, 0x0

    return-object v11

    :cond_9
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v5, :cond_a

    const/4 v12, 0x1

    invoke-virtual {v14, v5, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v0

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_d

    :try_start_4
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int v0, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-float v12, v12

    mul-float v12, v12, p4

    float-to-int v12, v12

    if-eqz v0, :cond_c

    if-nez v12, :cond_b

    goto :goto_3

    :cond_b
    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const/4 v12, 0x1

    :goto_4
    :try_start_5
    invoke-static {v14, v0, v12, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v14, v0

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_d
    const/4 v5, 0x1

    :goto_5
    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v12

    const-string v5, "Saving"

    invoke-direct {v0, v12, v5}, Lcom/android/gallery3d/filtershow/pipeline/c;-><init>(Lcom/android/gallery3d/filtershow/filters/g0;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v2}, Lcom/android/gallery3d/filtershow/pipeline/c;->o(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v1, v8, v2}, Lcom/android/gallery3d/filtershow/g/b;->f(Landroid/net/Uri;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/g/b;->b(Landroid/net/Uri;)Lc/b/a/c/c;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v1, v5, v11, v12}, Lcom/android/gallery3d/filtershow/g/b;->v(Lc/b/a/c/c;J)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v9

    :try_start_6
    iget-object v9, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v1, v9, v5, v14, v3}, Lcom/android/gallery3d/filtershow/g/b;->o(Ljava/io/File;Lc/b/a/c/c;Landroid/graphics/Bitmap;I)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-virtual {v1, v5, v0}, Lcom/android/gallery3d/filtershow/g/b;->p(Ljava/io/File;Ljava/lang/Object;)Z

    if-nez p2, :cond_e

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {v0, v8, v5, v2}, Lcom/android/gallery3d/filtershow/g/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    move-object/from16 v6, v16

    :cond_e
    iget-object v0, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->e:Landroid/net/Uri;

    iget-object v9, v1, Lcom/android/gallery3d/filtershow/g/b;->d:Ljava/io/File;

    invoke-static {v0, v5, v9, v11, v12}, Lcom/android/gallery3d/filtershow/g/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v5, "width"

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "height"

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v1, Lcom/android/gallery3d/filtershow/g/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    move v12, v10

    const/4 v13, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_6
    move-object/from16 v16, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v16, v9

    move v10, v12

    :goto_7
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processAndSaveImage : outOfMemoryErroe :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x5

    if-ge v15, v5, :cond_12

    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 v12, v10, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/g/b;->s()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    :goto_8
    move-object/from16 v9, v16

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_12
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_9
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    throw v0

    :cond_14
    const-string v0, "SaveImage large finish"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public o(Ljava/io/File;Lc/b/a/c/c;Landroid/graphics/Bitmap;I)Z
    .locals 5

    const-string v0, "SaveImage"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget v3, Lc/b/a/c/c;->n0:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object v3

    invoke-virtual {p2, v3}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    sget v3, Lc/b/a/c/c;->o0:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object v3

    invoke-virtual {p2, v3}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lc/b/a/c/c;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    invoke-virtual {p3, v3, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v2, p2

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v2, p2

    goto :goto_1

    :catch_1
    move-exception p3

    move-object v2, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_1
    :try_start_2
    const-string p2, "Could not write exif: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {v2}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_3
    move-exception p3

    :goto_3
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "File not found: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_4
    const/4 v1, 0x0

    :goto_5
    return v1

    :goto_6
    invoke-static {v2}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p1
.end method

.method public p(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lc/b/a/d/a;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
