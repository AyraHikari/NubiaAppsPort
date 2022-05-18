.class Lcn/nubia/camera/b/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/b/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 4

    .line 291
    sget-object v0, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    invoke-static {}, Lcn/nubia/camera/b/k;->h()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    .line 292
    invoke-static {v2}, Lcn/nubia/camera/b/k;->c(Lcn/nubia/camera/b/k;)F

    move-result v2

    .line 291
    invoke-static {p1, v0, v1, v2}, Lcn/nubia/camera/b/m;->a([FLjava/util/ArrayList;Ljava/util/ArrayList;F)V

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->d(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/b/j;->a([F)V

    .line 295
    iget-object p1, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    monitor-enter p1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->e(Lcn/nubia/camera/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->f(Lcn/nubia/camera/b/k;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->f(Lcn/nubia/camera/b/k;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->f(Lcn/nubia/camera/b/k;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/b/k$3;->a:Lcn/nubia/camera/b/k;

    invoke-static {v0}, Lcn/nubia/camera/b/k;->f(Lcn/nubia/camera/b/k;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
