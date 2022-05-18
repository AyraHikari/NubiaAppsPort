.class public Lcn/nubia/gallery3d/data/BucketHelper;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;
    }
.end annotation


# static fields
.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field public static final INDEX_BUCKET_ID:I = 0x0

.field public static final INDEX_BUCKET_NAME:I = 0x2

.field public static final INDEX_MEDIA_TYPE:I = 0x1

.field public static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BucketHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "bucket_id"

    const-string v1, "media_type"

    const-string v2, "bucket_display_name"

    .line 34
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketName(Lcn/nubia/gallery3d/app/ContentProviderProxy;I)Ljava/lang/String;
    .locals 7

    const-string v0, "external"

    .line 43
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 46
    sget-object v3, Lcn/nubia/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const-string v4, "bucket_id = ?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_0

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BucketHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 57
    throw p1
.end method
