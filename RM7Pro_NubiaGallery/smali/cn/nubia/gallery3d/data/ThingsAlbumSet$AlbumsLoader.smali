.class Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "ThingsAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/ThingsAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/ThingsAlbumSet;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/data/ThingsAlbumSet;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/ThingsAlbumSet;Lcn/nubia/gallery3d/data/ThingsAlbumSet$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/ThingsAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ThingsAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;->loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method
