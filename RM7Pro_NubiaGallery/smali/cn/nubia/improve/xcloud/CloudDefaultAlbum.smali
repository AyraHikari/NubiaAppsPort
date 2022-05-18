.class public Lcn/nubia/improve/xcloud/CloudDefaultAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "CloudDefaultAlbum.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-static {}, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public reload()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;->mDataVersion:J

    return-wide v0
.end method
