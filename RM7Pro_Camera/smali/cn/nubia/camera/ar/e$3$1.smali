.class Lcn/nubia/camera/ar/e$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/e$3;->onConfingSuccess(Lcn/nubia/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/e$3;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/e$3;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/k/u;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object p1, p1, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->e(Lcn/nubia/camera/ar/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ar/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcn/nubia/camera/ar/d;->a(II)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {v0}, Lcn/nubia/camera/ar/e;->f(Lcn/nubia/camera/ar/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e;Z)Z

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/ar/e;Z)Z

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/ar/e$3$1;->a:Lcn/nubia/camera/ar/e$3;

    iget-object v0, v0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {v0}, Lcn/nubia/camera/ar/e;->g(Lcn/nubia/camera/ar/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
