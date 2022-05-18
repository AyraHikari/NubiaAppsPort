.class Lcn/nubia/camera/r/s$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcn/nubia/camera/r/s;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/s;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcn/nubia/camera/r/s$a;->b:Lcn/nubia/camera/r/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 p1, 0x100000

    .line 286
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/s$a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(Landroid/media/MediaExtractor;)Z
    .locals 5

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/r/s$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/r/s$a;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    const-string p1, "EncodeAndMux"

    const-string v0, "audio eos"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 314
    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 315
    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 316
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 317
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/r/s$a;->b:Lcn/nubia/camera/r/s;

    invoke-static {v0}, Lcn/nubia/camera/r/s;->c(Lcn/nubia/camera/r/s;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/r/s$a;->b:Lcn/nubia/camera/r/s;

    invoke-static {v3}, Lcn/nubia/camera/r/s;->b(Lcn/nubia/camera/r/s;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/r/s$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 321
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :goto_0
    return v1
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EncodeAndMux"

    const-string v1, "AudioThread start"

    .line 290
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcn/nubia/camera/r/s$a;->b:Lcn/nubia/camera/r/s;

    invoke-static {v1}, Lcn/nubia/camera/r/s;->a(Lcn/nubia/camera/r/s;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/r/s$a;->a(Landroid/media/MediaExtractor;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "AudioThread end"

    .line 295
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
