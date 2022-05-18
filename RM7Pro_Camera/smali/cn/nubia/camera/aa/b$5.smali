.class Lcn/nubia/camera/aa/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 434
    iget-object p1, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    monitor-enter p1

    .line 435
    :try_start_0
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    iget-object p2, p2, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "LivePhoto"

    const-string v0, "onCaptureStarted"

    .line 438
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->l(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/b$b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 441
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->l(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/b$b;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/camera/aa/b$b;->j_()V

    .line 443
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p2

    sget-object v0, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 444
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->m(Lcn/nubia/camera/aa/b;)V

    .line 445
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->d:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p2, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 447
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->n(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/a;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 448
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p2}, Lcn/nubia/camera/aa/b;->n(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/aa/a;->a()V

    .line 449
    iget-object p2, p0, Lcn/nubia/camera/aa/b$5;->a:Lcn/nubia/camera/aa/b;

    sget-object v0, Lcn/nubia/camera/aa/b$a;->c:Lcn/nubia/camera/aa/b$a;

    iput-object v0, p2, Lcn/nubia/camera/aa/b;->b:Lcn/nubia/camera/aa/b$a;

    .line 451
    :cond_2
    monitor-exit p1

    return-void

    .line 436
    :cond_3
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 451
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b()V
    .locals 0

    return-void
.end method
