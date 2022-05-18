.class public Lcn/nubia/gallery3d/data/NewFolderAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "NewFolderAlbum.java"


# instance fields
.field private mCoverItem:Lcn/nubia/gallery3d/data/ResourceCoverItem;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 13
    invoke-static {}, Lcn/nubia/gallery3d/data/NewFolderAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 14
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NewFolderAlbum;->mName:Ljava/lang/String;

    .line 15
    new-instance p1, Lcn/nubia/gallery3d/data/ResourceCoverItem;

    const v0, 0x7f0800a3

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/data/ResourceCoverItem;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NewFolderAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/ResourceCoverItem;

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 35
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NewFolderAlbum;->mCoverItem:Lcn/nubia/gallery3d/data/ResourceCoverItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NewFolderAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    return-object p0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/NewFolderAlbum;->mDataVersion:J

    return-wide v0
.end method
