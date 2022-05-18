.class public Lcn/nubia/gallery3d/data/RecycledImageItem;
.super Lcn/nubia/gallery3d/data/RecycledItem;
.source "RecycledImageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/RecycledImageItem$LargeRecycledImageRequest;,
        Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;
    }
.end annotation


# static fields
.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "RecycledImageItem"


# instance fields
.field protected mHeight:I

.field protected mRotation:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/recycled/image/item"

    .line 23
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/RecycledImageItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    .line 37
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object p2

    sget-object v0, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->query([Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 43
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/data/RecycledImageItem;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find data for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 49
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 50
    throw p1

    .line 40
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get cursor for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 31
    invoke-virtual {p0, p3}, Lcn/nubia/gallery3d/data/RecycledImageItem;->loadFromCursor(Landroid/database/Cursor;)V

    .line 32
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/RecycledImageItem;->getImageSize()V

    return-void
.end method

.method private getImageSize()V
    .locals 2

    .line 153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 154
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 156
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mWidth:I

    .line 157
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mHeight:I

    return-void
.end method

.method private isSupportedByRegionDecoder()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 124
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mHeight:I

    return v0
.end method

.method public getItemData(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 162
    iget p1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mRotation:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/data/RecycledItem;->getItemData(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;
    .locals 2

    .line 168
    invoke-super {p0}, Lcn/nubia/gallery3d/data/RecycledItem;->getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;

    move-result-object v0

    .line 169
    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mRotation:I

    iput v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 129
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    .line 135
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/RecycledImageItem;->isSupportedByRegionDecoder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x8000041

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x8000001

    :goto_0
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 119
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mWidth:I

    return v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/data/RecycledItem;->loadFromCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x5

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mRotation:I

    return-void
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v7, Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mDateTaken:J

    iget-object v6, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/gallery3d/data/RecycledImageItem$RecycledImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v7
.end method

.method public requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledImageItem$LargeRecycledImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledImageItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/RecycledImageItem$LargeRecycledImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
