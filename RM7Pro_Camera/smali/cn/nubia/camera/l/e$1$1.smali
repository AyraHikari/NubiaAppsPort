.class Lcn/nubia/camera/l/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/e$1;->onTaking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/e$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/e$1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/k/u;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 165
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object p1, p1, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {p1}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/l/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v0, v0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {v0}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/l/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v1, v1, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {v1}, Lcn/nubia/camera/l/e;->b(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/k/af;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v1, v1, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-virtual {v1}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/l/d;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcn/nubia/camera/l/d;->a(II)V

    .line 169
    iget-object v1, p0, Lcn/nubia/camera/l/e$1$1;->a:Lcn/nubia/camera/l/e$1;

    iget-object v1, v1, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {v1}, Lcn/nubia/camera/l/e;->b(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/k/af;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->b()V

    .line 171
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 171
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 172
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
