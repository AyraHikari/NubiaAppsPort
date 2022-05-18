.class Lcn/nubia/camera/z/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/z/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/z/b;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v1}, Lcn/nubia/camera/z/b;->c(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/z/f;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/z/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    const-string v0, "GraduationIntervalShot"

    const-string v1, "onStart"

    .line 381
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/z/e;

    .line 384
    invoke-interface {v1}, Lcn/nubia/camera/z/e;->g_()V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0, p1, p2}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;J)V

    return-void
.end method

.method public a(JJI)V
    .locals 0

    .line 392
    iget-object p3, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {p3, p1, p2}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;J)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/z/e;

    .line 406
    invoke-interface {v1}, Lcn/nubia/camera/z/e;->l()V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->d(Lcn/nubia/camera/z/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v1}, Lcn/nubia/camera/z/b;->e(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/a/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v1}, Lcn/nubia/camera/z/b;->e(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/z/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/z/a/d;->b()V

    .line 414
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/b;I)V

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/z/b$1;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0, v1}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/b;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 414
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
