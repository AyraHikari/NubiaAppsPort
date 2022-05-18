.class Lcn/nubia/camera/lightpainting/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/lightpainting/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/lightpainting/a;Landroid/os/Looper;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 465
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 485
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->f(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->f(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->d(Lcn/nubia/camera/lightpainting/a;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v2}, Lcn/nubia/camera/lightpainting/a;->e(Lcn/nubia/camera/lightpainting/a;)I

    move-result v2

    invoke-interface {v0, v3, v1, v2, v3}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 488
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 491
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v4, v3}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 492
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 493
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 494
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->f(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->f(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v2}, Lcn/nubia/camera/lightpainting/a;->d(Lcn/nubia/camera/lightpainting/a;)I

    move-result v2

    iget-object v5, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v5}, Lcn/nubia/camera/lightpainting/a;->e(Lcn/nubia/camera/lightpainting/a;)I

    move-result v5

    invoke-interface {v1, v0, v2, v5, v4}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 496
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 497
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;

    .line 500
    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 467
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 468
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->c(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->c(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->d(Lcn/nubia/camera/lightpainting/a;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v2}, Lcn/nubia/camera/lightpainting/a;->e(Lcn/nubia/camera/lightpainting/a;)I

    move-result v2

    invoke-interface {v0, v3, v1, v2, v3}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;

    goto :goto_1

    .line 472
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/a;->b(Lcn/nubia/camera/lightpainting/a;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 473
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v4, v3}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 474
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 475
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 476
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->c(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 477
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/a;->c(Lcn/nubia/camera/lightpainting/a;)Lcom/android/common/c/f$b;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v2}, Lcn/nubia/camera/lightpainting/a;->d(Lcn/nubia/camera/lightpainting/a;)I

    move-result v2

    iget-object v5, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v5}, Lcn/nubia/camera/lightpainting/a;->e(Lcn/nubia/camera/lightpainting/a;)I

    move-result v5

    invoke-interface {v1, v0, v2, v5, v4}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 478
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 479
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/a$a;->a:Lcn/nubia/camera/lightpainting/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/lightpainting/a;->a(Lcn/nubia/camera/lightpainting/a;Lcom/android/common/c/f$b;)Lcom/android/common/c/f$b;

    .line 482
    :cond_5
    :goto_1
    monitor-exit p1

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
