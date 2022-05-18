.class public Lcom/coremedia/iso/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_0

    :cond_1
    if-eq v1, v2, :cond_2

    return v0

    .line 63
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of file. No more boxes."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 33
    check-cast p0, Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    move-object v1, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-object v0

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    return-void
.end method

.method public static writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
