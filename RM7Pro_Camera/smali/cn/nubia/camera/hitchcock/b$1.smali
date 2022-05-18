.class Lcn/nubia/camera/hitchcock/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/hitchcock/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/b;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/b$1;->a:Lcn/nubia/camera/hitchcock/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 277
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/b$1;->a:Lcn/nubia/camera/hitchcock/b;

    monitor-enter p1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b$1;->a:Lcn/nubia/camera/hitchcock/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/hitchcock/b;->a(Lcn/nubia/camera/hitchcock/b;Z)Z

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b$1;->a:Lcn/nubia/camera/hitchcock/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 280
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
