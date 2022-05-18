.class Lcn/nubia/gallery3d/data/ClusterAlbum$2;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/ClusterAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/ClusterAlbum;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/ClusterAlbum;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum$2;->this$0:Lcn/nubia/gallery3d/data/ClusterAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcn/nubia/gallery3d/data/MediaItem;)V
    .locals 4

    .line 130
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->delete()V

    :cond_0
    return-void
.end method
