.class Lcn/nubia/camera/aa/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/f;


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

    .line 464
    iput-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    const-string p2, "LivePhoto"

    const-string v0, "onDataSaveCalled"

    .line 467
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p2, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    monitor-enter p2

    .line 469
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->o(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aj/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/aj/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0, p1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Landroid/net/Uri;)Landroid/net/Uri;

    .line 472
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    .line 473
    invoke-static {p1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    iget-object p1, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->e:Lcn/nubia/camera/aa/b$c;

    if-ne p1, v0, :cond_0

    .line 475
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->f:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 476
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->g(Lcn/nubia/camera/aa/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->p(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    iget-object p1, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->g:Lcn/nubia/camera/aa/b$c;

    if-ne p1, v0, :cond_1

    .line 480
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->f:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 481
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->p(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->g(Lcn/nubia/camera/aa/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    iput-object v0, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 483
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/d/a;

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    iget-object p1, p1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v0, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    if-ne p1, v0, :cond_2

    .line 485
    iget-object p1, p0, Lcn/nubia/camera/aa/b$6;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->i(Lcn/nubia/camera/aa/b;)V

    .line 487
    :cond_2
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
