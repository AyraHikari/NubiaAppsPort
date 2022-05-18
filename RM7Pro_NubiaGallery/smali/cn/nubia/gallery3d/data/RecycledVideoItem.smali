.class public Lcn/nubia/gallery3d/data/RecycledVideoItem;
.super Lcn/nubia/gallery3d/data/RecycledItem;
.source "RecycledVideoItem.java"


# static fields
.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/recycled/video/item"

    .line 12
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/RecycledVideoItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    .line 21
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object p2

    sget-object v0, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->query([Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/data/RecycledVideoItem;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 30
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

    .line 33
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 34
    throw p1

    .line 24
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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 16
    invoke-virtual {p0, p3}, Lcn/nubia/gallery3d/data/RecycledVideoItem;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/32 v0, 0x8000081

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 39
    new-instance v7, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledVideoItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledVideoItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/RecycledVideoItem;->mDateTaken:J

    iget-object v6, p0, Lcn/nubia/gallery3d/data/RecycledVideoItem;->mFilePath:Ljava/lang/String;

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

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

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
