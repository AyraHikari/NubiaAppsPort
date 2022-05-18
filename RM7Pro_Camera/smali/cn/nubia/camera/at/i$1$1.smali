.class Lcn/nubia/camera/at/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/i$1;->onTaking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/i$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/i$1;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/k/u;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object p1, p1, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-static {p1}, Lcn/nubia/camera/at/i;->a(Lcn/nubia/camera/at/i;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-static {v0}, Lcn/nubia/camera/at/i;->b(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/k/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    iget-object v0, v0, Lcn/nubia/camera/at/i;->b:Lcn/nubia/camera/at/d;

    invoke-virtual {v0}, Lcn/nubia/camera/at/d;->a()V

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/at/i$1$1;->a:Lcn/nubia/camera/at/i$1;

    iget-object v0, v0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-static {v0}, Lcn/nubia/camera/at/i;->b(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/k/af;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->b()V

    .line 131
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
