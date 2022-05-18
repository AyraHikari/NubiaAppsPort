.class public abstract Lcn/nubia/gallery3d/data/RecycledItem;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "RecycledItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecycledItem"


# instance fields
.field protected final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field protected mDateRecycled:J

.field protected mDateTaken:J

.field protected mDuration:I

.field protected mFilePath:Ljava/lang/String;

.field public mID:I

.field protected mMediaType:I

.field protected mMimeType:Ljava/lang/String;

.field protected mOriFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/data/RecycledItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 32
    iput-object p2, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    .line 26
    invoke-static {}, Lcn/nubia/gallery3d/data/RecycledItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 27
    iput-object p2, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateTaken:J

    return-wide v0
.end method

.method public getDateRecycled()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateRecycled:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getItemData(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateTaken:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;
    .locals 3

    .line 84
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 85
    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mID:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mOriFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->destPath:Ljava/lang/String;

    .line 88
    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mMediaType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    .line 89
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateTaken:J

    iput-wide v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    .line 90
    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDuration:I

    iput v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    .line 91
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingDays()Ljava/lang/String;
    .locals 5

    .line 62
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateRecycled:J

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/RecycleHelper;->getRemainingDays(J)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0001

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mID:I

    const/4 v0, 0x1

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x2

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateRecycled:J

    const/4 v0, 0x3

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mMediaType:I

    const/4 v0, 0x4

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x6

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDateTaken:J

    const/4 v0, 0x7

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mOriFilePath:Ljava/lang/String;

    const/16 v0, 0x9

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/RecycledItem;->mDuration:I

    return-void
.end method
