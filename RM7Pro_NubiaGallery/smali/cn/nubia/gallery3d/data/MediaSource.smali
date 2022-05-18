.class public abstract Lcn/nubia/gallery3d/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/MediaSource$PathId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    .line 80
    iget-object v3, v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    if-nez v3, :cond_0

    .line 83
    :try_start_0
    iget-object v4, v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p0, v4}, Lcn/nubia/gallery3d/data/MediaSource;->createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create media object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaSource"

    invoke-static {v6, v5, v4}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 89
    iget v2, v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->id:I

    check-cast v3, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-interface {p2, v2, v3}, Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcn/nubia/gallery3d/data/MediaItem;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
