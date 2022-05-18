.class Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    new-instance p1, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;-><init>(Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView;Lcn/nubia/gallery3d/ui/TileImageView$1;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 793
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 806
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 807
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 808
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 810
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/TileImageView;->access$800(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 812
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 813
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 815
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->decodeTile(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/TileImageView;->queueForUpload(Lcn/nubia/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 815
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
