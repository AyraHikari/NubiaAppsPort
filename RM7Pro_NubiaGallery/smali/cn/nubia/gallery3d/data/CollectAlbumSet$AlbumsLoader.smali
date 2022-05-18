.class Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "CollectAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/CollectAlbumSet;
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
        "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/data/CollectAlbumSet$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->access$000(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 225
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-static {p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->access$100(Lcn/nubia/gallery3d/data/CollectAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    .line 227
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    invoke-static {v1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->access$200(Lcn/nubia/gallery3d/data/CollectAlbumSet;)I

    move-result v3

    iget-object v2, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;->this$0:Lcn/nubia/gallery3d/data/CollectAlbumSet;

    iget-object v4, v2, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget v5, v8, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketId:I

    iget-object v6, v8, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->bucketName:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->access$300(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, v8, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    goto :goto_0

    :cond_1
    return-object v0
.end method
