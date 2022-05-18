.class Lcn/nubia/camera/ah/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ah/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/e;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ah/e;Landroid/os/Looper;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    .line 379
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 385
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {p1}, Lcn/nubia/camera/ah/e;->f(Lcn/nubia/camera/ah/e;)Lcn/nubia/camera/ah/a$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 404
    iget-object p1, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {p1}, Lcn/nubia/camera/ah/e;->f(Lcn/nubia/camera/ah/e;)Lcn/nubia/camera/ah/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/ah/a$b;->b()V

    goto :goto_1

    .line 387
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {p1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {v0}, Lcn/nubia/camera/ah/e;->b(Lcn/nubia/camera/ah/e;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 390
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 391
    iget-object v2, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {v2}, Lcn/nubia/camera/ah/e;->c(Lcn/nubia/camera/ah/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/c/f$b;

    if-eqz v3, :cond_2

    .line 393
    iget-object v4, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {v4}, Lcn/nubia/camera/ah/e;->d(Lcn/nubia/camera/ah/e;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {v5}, Lcn/nubia/camera/ah/e;->e(Lcn/nubia/camera/ah/e;)I

    move-result v5

    invoke-interface {v3, v0, v4, v5, v1}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 394
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    invoke-static {v0}, Lcn/nubia/camera/ah/e;->c(Lcn/nubia/camera/ah/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/e;Z)Z

    .line 399
    iget-object v0, p0, Lcn/nubia/camera/ah/e$a;->a:Lcn/nubia/camera/ah/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/ah/e;->a(Lcn/nubia/camera/ah/e;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 400
    monitor-exit p1

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
