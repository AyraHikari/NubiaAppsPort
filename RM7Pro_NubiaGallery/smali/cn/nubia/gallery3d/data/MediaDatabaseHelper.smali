.class public Lcn/nubia/gallery3d/data/MediaDatabaseHelper;
.super Ljava/lang/Object;
.source "MediaDatabaseHelper.java"


# static fields
.field private static final BASE_FILES_PROJECTION:[Ljava/lang/String;

.field private static final BASE_FILES_PROJECTION_GROUPBY:[Ljava/lang/String;

.field public static final COUNT_PROJECTION:[Ljava/lang/String;

.field public static final INDEX_BUCKET_DISPLAY_NAME:I = 0xf

.field public static final INDEX_BUCKET_ID:I = 0xa

.field public static final INDEX_COUNT:I = 0x10

.field public static final INDEX_DATA:I = 0x5

.field public static final INDEX_DATE_ADDED:I = 0x3

.field public static final INDEX_DATE_MODIFIED:I = 0x4

.field public static final INDEX_DATE_TAKEN:I = 0x8

.field public static final INDEX_DURATION:I = 0xd

.field public static final INDEX_HEIGHT:I = 0xc

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_MEDIA_TYPE:I = 0x7

.field public static final INDEX_MIME_TYPE:I = 0x2

.field public static final INDEX_ORIENTATION:I = 0x9

.field public static final INDEX_RESOLUTION:I = 0xe

.field public static final INDEX_SIZE:I = 0x6

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WIDTH:I = 0xb

.field public static final URI_FILES_EXTERNAL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "external"

    .line 14
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    const-string v0, "count(_id)"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "date_added"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "_size"

    const-string v8, "media_type"

    const-string v9, "datetaken"

    const-string v10, "orientation"

    const-string v11, "bucket_id"

    const-string v12, "width"

    const-string v13, "height"

    const-string v14, "duration"

    const-string v15, "resolution"

    const-string v16, "bucket_display_name"

    .line 33
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "date_added"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "_size"

    const-string v8, "media_type"

    const-string v9, "datetaken"

    const-string v10, "orientation"

    const-string v11, "bucket_id"

    const-string v12, "width"

    const-string v13, "height"

    const-string v14, "duration"

    const-string v15, "resolution"

    const-string v16, "bucket_display_name"

    const-string v17, "count(_id)"

    .line 51
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION_GROUPBY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 5

    .line 92
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 94
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    const-string v0, "is_favorite"

    .line 95
    aput-object v0, v2, v1

    return-object v2

    .line 98
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static getProjectionByGroup()[Ljava/lang/String;
    .locals 5

    .line 104
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 106
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    const-string v0, "is_favorite"

    .line 107
    aput-object v0, v2, v1

    return-object v2

    .line 110
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->BASE_FILES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static update(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updateById(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;I)V
    .locals 3

    .line 82
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->update(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static updateByIdSet(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    .line 87
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->update(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
