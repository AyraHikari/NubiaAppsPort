.class final Lcn/nubia/gallery3d/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcn/nubia/gallery3d/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcn/nubia/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>([Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcn/nubia/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcn/nubia/gallery3d/data/MediaItem;

    aput-object p2, v0, p1

    return-void
.end method
