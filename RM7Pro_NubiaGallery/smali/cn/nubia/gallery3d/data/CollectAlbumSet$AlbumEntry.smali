.class public Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;
.super Ljava/lang/Object;
.source "CollectAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/CollectAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field album:Lcn/nubia/gallery3d/data/MediaSet;

.field bucketId:I

.field bucketName:Ljava/lang/String;

.field public count:I

.field public cover:Lcn/nubia/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketId:I

    .line 97
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 107
    instance-of v0, p1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    .line 111
    iget v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketId:I

    iget p1, p1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketId:I

    return v0
.end method
