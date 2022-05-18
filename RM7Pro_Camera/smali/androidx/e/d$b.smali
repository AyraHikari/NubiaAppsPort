.class Landroidx/e/d$b;
.super Landroidx/e/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/d;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/e/d;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    invoke-direct {p0}, Landroidx/e/c$a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 645
    iget-boolean v0, p0, Landroidx/e/d$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Landroidx/e/d$b;->b:Z

    .line 648
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v0, v0, Landroidx/e/d;->e:Landroidx/e/d$c;

    invoke-virtual {v0, p1}, Landroidx/e/d$c;->a(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/e/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 636
    invoke-direct {p0, p1}, Landroidx/e/d$b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Landroidx/e/c;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 641
    invoke-direct {p0, p2}, Landroidx/e/d$b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Landroidx/e/c;Landroid/media/MediaFormat;)V
    .locals 4

    .line 564
    iget-boolean p1, p0, Landroidx/e/d$b;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 569
    :cond_0
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object p1, p1, Landroidx/e/d;->h:[I

    if-eqz p1, :cond_1

    .line 570
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output format changed after muxer started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/e/d$b;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    :try_start_0
    const-string v0, "grid-rows"

    .line 576
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "grid-cols"

    .line 577
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 578
    iget-object v2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    mul-int/2addr v0, v1

    iput v0, v2, Landroidx/e/d;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iput p1, v0, Landroidx/e/d;->a:I

    .line 584
    :goto_0
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v1, v0, Landroidx/e/d;->c:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/e/d;->h:[I

    .line 587
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v0, v0, Landroidx/e/d;->b:I

    if-lez v0, :cond_2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v1, v1, Landroidx/e/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeifWriter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v0, v0, Landroidx/e/d;->f:Landroid/media/MediaMuxer;

    iget-object v1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v1, v1, Landroidx/e/d;->b:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 591
    :goto_1
    iget-object v2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v2, v2, Landroidx/e/d;->h:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 593
    iget-object v2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v2, v2, Landroidx/e/d;->d:I

    if-ne v1, v2, :cond_3

    move v2, p1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    const-string v3, "is-default"

    invoke-virtual {p2, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 594
    iget-object v2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v2, v2, Landroidx/e/d;->h:[I

    iget-object v3, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v3, v3, Landroidx/e/d;->f:Landroid/media/MediaMuxer;

    invoke-virtual {v3, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :cond_4
    iget-object p2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object p2, p2, Landroidx/e/d;->f:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->start()V

    .line 597
    iget-object p2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object p2, p2, Landroidx/e/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 598
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    invoke-virtual {p1}, Landroidx/e/d;->b()V

    return-void
.end method

.method public a(Landroidx/e/c;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 608
    iget-boolean p1, p0, Landroidx/e/d$b;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object p1, p1, Landroidx/e/d;->h:[I

    if-nez p1, :cond_1

    .line 614
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output buffer received before format info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/e/d$b;->a(Ljava/lang/Exception;)V

    return-void

    .line 619
    :cond_1
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget p1, p1, Landroidx/e/d;->i:I

    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v0, v0, Landroidx/e/d;->c:I

    iget-object v1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v1, v1, Landroidx/e/d;->a:I

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 620
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 621
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 622
    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v0, v0, Landroidx/e/d;->f:Landroid/media/MediaMuxer;

    iget-object v1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget-object v1, v1, Landroidx/e/d;->h:[I

    iget-object v2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v2, v2, Landroidx/e/d;->i:I

    iget-object v3, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v3, v3, Landroidx/e/d;->a:I

    div-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1, p2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 626
    :cond_2
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget p2, p1, Landroidx/e/d;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/e/d;->i:I

    .line 629
    iget-object p1, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget p1, p1, Landroidx/e/d;->i:I

    iget-object p2, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget p2, p2, Landroidx/e/d;->c:I

    iget-object v0, p0, Landroidx/e/d$b;->a:Landroidx/e/d;

    iget v0, v0, Landroidx/e/d;->a:I

    mul-int/2addr p2, v0

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 630
    invoke-direct {p0, p1}, Landroidx/e/d$b;->a(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
