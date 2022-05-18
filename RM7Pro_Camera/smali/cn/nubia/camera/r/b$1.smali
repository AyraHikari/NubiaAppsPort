.class Lcn/nubia/camera/r/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/b;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcn/nubia/camera/r/b$1;->a:Lcn/nubia/camera/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 358
    iget-object p1, p0, Lcn/nubia/camera/r/b$1;->a:Lcn/nubia/camera/r/b;

    monitor-enter p1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/b$1;->a:Lcn/nubia/camera/r/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/r/b;->a(Lcn/nubia/camera/r/b;Z)Z

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/r/b$1;->a:Lcn/nubia/camera/r/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 361
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
