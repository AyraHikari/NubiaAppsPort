.class public Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
.super Lcom/googlecode/mp4parser/h264/read/BitstreamReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private readUE()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->readNBit(I)J

    move-result-wide v2

    const/4 v0, 0x1

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v0, v2

    long-to-int v0, v0

    :cond_1
    return v0
.end method

.method private trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x64

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v2

    sub-int/2addr p1, v2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/CharCache;->clear()V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public read(I)[B
    .locals 3

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->readByte()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readAE()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAEI()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBool(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 2
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readCE(Lcom/googlecode/mp4parser/h264/BTree;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/h264/BTree;->down(I)Lcom/googlecode/mp4parser/h264/BTree;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/BTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal code"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readME(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public readNBit(ILjava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->readNBit(I)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public readSE(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readTE(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    return p1
.end method

.method public readTrailingBits()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->readRemainingByte()J

    return-void
.end method

.method public readU(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public readUE(Ljava/lang/String;)I
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readZeroBitCount(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
