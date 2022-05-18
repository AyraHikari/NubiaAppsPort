.class public Lcn/nubia/camera/panorama/d$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/d;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "still in --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MorphoPanoramaAdapter"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->b(Lcn/nubia/camera/panorama/d;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->c(Lcn/nubia/camera/panorama/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->c(Lcn/nubia/camera/panorama/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/panorama/d$c;

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " run attachStillImageExt() start :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/nubia/camera/panorama/d$c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v3, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v3}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/camera/panorama/d$c;->c:Ljava/nio/ByteBuffer;

    iget v5, v0, Lcn/nubia/camera/panorama/d$c;->a:I

    iget-object v6, v0, Lcn/nubia/camera/panorama/d$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5, v6}, Lcom/morpho/core/MorphoPanoramaGP;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    .line 541
    iget-object v4, v0, Lcn/nubia/camera/panorama/d$c;->c:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcn/nubia/algorithm/utils/PanoramaHelper;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 542
    iget-object v0, v0, Lcn/nubia/camera/panorama/d$c;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcn/nubia/algorithm/utils/PanoramaHelper;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 543
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->d(Lcn/nubia/camera/panorama/d;)I

    if-eqz v3, :cond_0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachStillImageExt failed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->e(Lcn/nubia/camera/panorama/d;)Lcn/nubia/camera/panorama/d$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/panorama/d$b;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x64

    .line 552
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 558
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->f(Lcn/nubia/camera/panorama/d;)I

    move-result v0

    iget-object v3, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v3}, Lcn/nubia/camera/panorama/d;->g(Lcn/nubia/camera/panorama/d;)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->c(Lcn/nubia/camera/panorama/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->c(Lcn/nubia/camera/panorama/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/panorama/d$c;

    .line 561
    iget-object v3, v0, Lcn/nubia/camera/panorama/d$c;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcn/nubia/algorithm/utils/PanoramaHelper;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 562
    iget-object v0, v0, Lcn/nubia/camera/panorama/d$c;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcn/nubia/algorithm/utils/PanoramaHelper;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$d;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->d(Lcn/nubia/camera/panorama/d;)I

    goto :goto_1

    .line 566
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "still exit --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
