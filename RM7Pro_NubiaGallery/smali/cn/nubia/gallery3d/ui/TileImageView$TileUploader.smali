.class Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView;)V
    .locals 1

    .line 590
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView;Lcn/nubia/gallery3d/ui/TileImageView$1;)V
    .locals 0

    .line 590
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcn/nubia/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    move v1, v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_5

    .line 601
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    monitor-enter v3

    .line 602
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/TileImageView;->access$300(Lcn/nubia/gallery3d/ui/TileImageView;)Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/TileImageView$TileQueue;->pop()Lcn/nubia/gallery3d/ui/TileImageView$Tile;

    move-result-object p2

    .line 603
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    goto :goto_2

    .line 605
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 606
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->isLoaded()Z

    move-result v3

    .line 607
    iget v4, p2, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {v4}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 608
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->updateContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    if-nez v3, :cond_4

    .line 609
    invoke-virtual {p2, p1, v2, v2}, Lcn/nubia/gallery3d/ui/TileImageView$Tile;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 603
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_2
    if-nez p2, :cond_6

    .line 613
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0
.end method
