.class public Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public album:Lcn/nubia/gallery3d/data/MediaSet;

.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public count:I

.field public cover:Lcn/nubia/gallery3d/data/MediaItem;

.field public dateTanken:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    .line 97
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 107
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 111
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    iget p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumEntry [album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateTanken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->dateTanken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
