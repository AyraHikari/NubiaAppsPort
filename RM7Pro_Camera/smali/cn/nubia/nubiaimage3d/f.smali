.class public Lcn/nubia/nubiaimage3d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/nubiaimage3d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    .line 23
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/f;->c:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/f;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget v1, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/nubiaimage3d/a;

    .line 53
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    iget v3, v1, Lcn/nubia/nubiaimage3d/a;->a:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 54
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    iget-wide v3, v1, Lcn/nubia/nubiaimage3d/a;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 55
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    iget v1, v1, Lcn/nubia/nubiaimage3d/a;->c:I

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 43
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/f;->b()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDataNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aizhao"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 46
    iget v0, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 31
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 32
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    .line 33
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/f;->b:Ljava/io/RandomAccessFile;

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 35
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/f;->c:Ljava/util/ArrayList;

    new-instance v2, Lcn/nubia/nubiaimage3d/a;

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v3, v3

    const v4, 0x80e8

    div-int/2addr v3, v4

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {v2, v3, v0, v1, v4}, Lcn/nubia/nubiaimage3d/a;-><init>(IJI)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget p1, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/nubiaimage3d/f;->a:I

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",offset:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",mDataList.size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/nubiaimage3d/f;->c:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Image3DFileMuxer"

    .line 37
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
