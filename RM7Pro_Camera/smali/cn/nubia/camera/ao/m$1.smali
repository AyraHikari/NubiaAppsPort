.class Lcn/nubia/camera/ao/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/q;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/u;

.field final synthetic b:Lcn/nubia/camera/ao/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/k/u;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/ao/m$1;->b:Lcn/nubia/camera/ao/m;

    iput-object p2, p0, Lcn/nubia/camera/ao/m$1;->a:Lcn/nubia/camera/k/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/k/u;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/m$1;->b:Lcn/nubia/camera/ao/m;

    invoke-static {p1}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/ao/m;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->b:Lcn/nubia/camera/ao/m;

    invoke-static {v0}, Lcn/nubia/camera/ao/m;->b(Lcn/nubia/camera/ao/m;)Lcn/nubia/camera/k/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->b:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ao/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcn/nubia/camera/ao/l;->a(II)V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/ao/m$1;->b:Lcn/nubia/camera/ao/m;

    invoke-static {v0}, Lcn/nubia/camera/ao/m;->b(Lcn/nubia/camera/ao/m;)Lcn/nubia/camera/k/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->b()V

    .line 132
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
