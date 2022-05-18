.class public Lcom/googlecode/mp4parser/h264/read/BitstreamReader;
.super Ljava/lang/Object;
.source "BitstreamReader.java"


# static fields
.field protected static bitsRead:I


# instance fields
.field private curByte:I

.field protected debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

.field private is:Ljava/io/InputStream;

.field nBit:I

.field private nextByte:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/googlecode/mp4parser/h264/CharCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/h264/CharCache;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    .line 43
    iput-object p1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->is:Ljava/io/InputStream;

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nextByte:I

    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nextByte:I

    iput v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    .line 90
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nextByte:I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getBitPosition()J
    .locals 2

    .line 128
    sget v0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCurBit()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    return v0
.end method

.method public isByteAligned()Z
    .locals 1

    .line 180
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moreRBSPData()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->advance()V

    .line 120
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    shl-int v1, v0, v1

    shl-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    .line 122
    iget v3, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_2

    .line 124
    iget v3, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nextByte:I

    if-ne v3, v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :cond_3
    :goto_1
    return v0
.end method

.method public peakNextBits(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-gt p1, v0, :cond_4

    .line 148
    iget v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    if-ne v1, v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->advance()V

    .line 150
    iget v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 154
    :cond_0
    iget v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    rsub-int/lit8 v2, v1, 0x10

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 158
    iget v6, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    rsub-int/lit8 v7, v1, 0x7

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 162
    iget v6, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nextByte:I

    rsub-int/lit8 v7, v1, 0x7

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_2
    if-ge v3, p1, :cond_3

    shl-int/lit8 v0, v0, 0x1

    .line 168
    aget v1, v2, v3

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v0

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N should be less then 8"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read1Bit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->advance()V

    .line 56
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 60
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    iget v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    rsub-int/lit8 v2, v1, 0x7

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 61
    iput v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    .line 63
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    if-nez v0, :cond_1

    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x31

    :goto_0
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/h264/CharCache;->append(C)V

    .line 64
    sget v1, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    return v0
.end method

.method public readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    if-lez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->advance()V

    .line 104
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->curByte:I

    .line 106
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->advance()V

    return v0
.end method

.method public readNBit(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 82
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->read1Bit()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not readByte more then 64 bit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readRemainingByte()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget v0, p0, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->nBit:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->readNBit(I)J

    move-result-wide v0

    return-wide v0
.end method
