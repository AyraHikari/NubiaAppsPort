.class public Lcom/zte/camera/a/a/e$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/a/a/e;


# virtual methods
.method public run()V
    .locals 6

    const v0, 0x19000

    .line 203
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/a/a/e$a;->a:Lcom/zte/camera/a/a/e;

    invoke-static {v1}, Lcom/zte/camera/a/a/e;->a(Lcom/zte/camera/a/a/e;)Landroid/media/MediaExtractor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 211
    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 212
    iget-object v2, p0, Lcom/zte/camera/a/a/e$a;->a:Lcom/zte/camera/a/a/e;

    invoke-static {v2}, Lcom/zte/camera/a/a/e;->a(Lcom/zte/camera/a/a/e;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 213
    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 214
    iget-object v1, p0, Lcom/zte/camera/a/a/e$a;->a:Lcom/zte/camera/a/a/e;

    invoke-static {v1}, Lcom/zte/camera/a/a/e;->a(Lcom/zte/camera/a/a/e;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    iput v1, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 216
    iget-object v1, p0, Lcom/zte/camera/a/a/e$a;->a:Lcom/zte/camera/a/a/e;

    invoke-static {v1, v3}, Lcom/zte/camera/a/a/e;->a(Lcom/zte/camera/a/a/e;Landroid/media/MediaCodec$BufferInfo;)V

    .line 218
    iget-object v1, p0, Lcom/zte/camera/a/a/e$a;->a:Lcom/zte/camera/a/a/e;

    invoke-static {v1}, Lcom/zte/camera/a/a/e;->a(Lcom/zte/camera/a/a/e;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0
.end method
