.class public Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcn/nubia/gallery3d/ui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcn/nubia/gallery3d/glrenderer/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 74
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcn/nubia/gallery3d/glrenderer/TiledTexture;)V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 85
    iget-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 86
    :try_start_2
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 87
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    invoke-interface {p1, p0}, Lcn/nubia/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 4

    .line 92
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    :goto_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    .line 98
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->access$000(Lcn/nubia/gallery3d/glrenderer/TiledTexture;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->requestRender()V

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 107
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
