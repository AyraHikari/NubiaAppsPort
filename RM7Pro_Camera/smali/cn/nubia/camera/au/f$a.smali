.class Lcn/nubia/camera/au/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/f;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/f;Landroid/os/Looper;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    .line 470
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 476
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 478
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {p1}, Lcn/nubia/camera/au/f;->a(Lcn/nubia/camera/au/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 479
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v0}, Lcn/nubia/camera/au/f;->b(Lcn/nubia/camera/au/f;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/au/f;->a(Lcn/nubia/camera/au/f;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 481
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 482
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 483
    iget-object v2, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v2}, Lcn/nubia/camera/au/f;->c(Lcn/nubia/camera/au/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/c/f$b;

    if-eqz v3, :cond_1

    .line 485
    iget-object v4, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v4}, Lcn/nubia/camera/au/f;->d(Lcn/nubia/camera/au/f;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v5}, Lcn/nubia/camera/au/f;->e(Lcn/nubia/camera/au/f;)I

    move-result v5

    invoke-interface {v3, v0, v4, v5, v1}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 486
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 489
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v2}, Lcn/nubia/camera/au/f;->f(Lcn/nubia/camera/au/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/c/f$b;

    if-eqz v3, :cond_3

    .line 491
    iget-object v4, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v4}, Lcn/nubia/camera/au/f;->d(Lcn/nubia/camera/au/f;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v5}, Lcn/nubia/camera/au/f;->e(Lcn/nubia/camera/au/f;)I

    move-result v5

    invoke-interface {v3, v0, v4, v5, v1}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 492
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    .line 495
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/au/f$a;->a:Lcn/nubia/camera/au/f;

    invoke-static {v0}, Lcn/nubia/camera/au/f;->f(Lcn/nubia/camera/au/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 496
    monitor-exit p1

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
