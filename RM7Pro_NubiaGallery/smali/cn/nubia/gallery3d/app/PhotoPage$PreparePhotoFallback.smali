.class Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparePhotoFallback"
.end annotation


# instance fields
.field private mPhotoFallback:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

.field private mResultReady:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 2043
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    new-instance p1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {p1}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    const/4 p1, 0x0

    .line 2045
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V
    .locals 0

    .line 2043
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 1

    monitor-enter p0

    .line 2048
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    if-nez v0, :cond_0

    .line 2049
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    goto :goto_0

    .line 2051
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 1

    .line 2056
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p2}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$3300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->buildFallbackEffect(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    .line 2057
    monitor-enter p0

    const/4 p1, 0x1

    .line 2058
    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    .line 2059
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2060
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
