.class Lcom/zte/camera/a/a/a$2;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/a/a/a;


# direct methods
.method constructor <init>(Lcom/zte/camera/a/a/a;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 287
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio decoder: onError"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 13

    .line 295
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: onInputBufferAvailable index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->c(Lcom/zte/camera/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->d(Lcom/zte/camera/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->e(Lcom/zte/camera/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->c(Lcom/zte/camera/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 303
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/camera/a/a/e;->h()J

    move-result-wide v1

    .line 304
    iget-object v3, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v3}, Lcom/zte/camera/a/a/a;->g(Lcom/zte/camera/a/a/a;)J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {v3, v4, v5}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;J)J

    .line 305
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio decoder: mPresentationTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v5}, Lcom/zte/camera/a/a/a;->h(Lcom/zte/camera/a/a/a;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sampleTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v3}, Lcom/zte/camera/a/a/a;->i(Lcom/zte/camera/a/a/a;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v5}, Lcom/zte/camera/a/a/a;->h(Lcom/zte/camera/a/a/a;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-gez v3, :cond_1

    .line 308
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio decoder: EOS, send EOS msg."

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v0, v4}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;Z)Z

    .line 311
    iget-object v0, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v0, v4}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;Z)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    move-object v5, p1

    move v6, p2

    .line 312
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v3}, Lcom/zte/camera/a/a/a;->f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/zte/camera/a/a/e;->a(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 317
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio decoder: size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v8}, Lcom/zte/camera/a/a/a;->f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/camera/a/a/e;->i()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->g(Lcom/zte/camera/a/a/a;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-gtz v1, :cond_3

    :cond_2
    const/4 v8, 0x0

    .line 320
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->h(Lcom/zte/camera/a/a/a;)J

    move-result-wide v10

    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/camera/a/a/e;->i()I

    move-result v12

    move-object v6, p1

    move v7, p2

    move v9, v3

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/camera/a/a/e;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1, v5}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;Z)Z

    goto :goto_0

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1, v4}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;Z)Z

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {v1}, Lcom/zte/camera/a/a/a;->h(Lcom/zte/camera/a/a/a;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio decoder: status is wrong"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-ltz v3, :cond_0

    :cond_6
    :goto_1
    return-void

    .line 298
    :cond_7
    :goto_2
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio decoder: status is wrong or done"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move-object v2, p1

    move v3, p2

    .line 299
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 342
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: onOutputBufferAvailable: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 344
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p3

    const-string v0, "audio decoder: codec config buffer"

    invoke-static {p3, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 346
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 349
    :cond_0
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio decoder: presentationTimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1}, Lcom/zte/camera/a/a/a;->j(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object p1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1}, Lcom/zte/camera/a/a/a;->k(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Lcom/zte/camera/a/a/a$2;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 291
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio decoder: onOutputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
