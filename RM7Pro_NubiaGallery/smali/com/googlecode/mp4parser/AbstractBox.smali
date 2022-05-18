.class public abstract Lcom/googlecode/mp4parser/AbstractBox;
.super Ljava/lang/Object;
.source "AbstractBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static LOG:Ljava/util/logging/Logger; = null

.field public static MEM_MAP_THRESHOLD:I = 0x19000


# instance fields
.field private content:Ljava/nio/ByteBuffer;

.field private deadBytes:Ljava/nio/ByteBuffer;

.field private parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field protected type:Ljava/lang/String;

.field private userType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 61
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 65
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B

    return-void
.end method

.method private getHeader(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 265
    invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isSmallBox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 267
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 269
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 270
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getUserType()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private isSmallBox()Z
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v2

    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v2, v0

    :goto_1
    const-wide v4, 0x100000000L

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private verify(Ljava/nio/ByteBuffer;)Z
    .locals 10

    .line 225
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 227
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 238
    sget-object v1, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": remaining differs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " vs. "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v3

    .line 241
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 242
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-lt v2, v1, :cond_4

    .line 243
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 244
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v6, v7, :cond_3

    .line 246
    sget-object v1, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Ljava/util/logging/Logger;

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v8, v2

    const-string v2, "%s: buffers differ at %d: %2X/%2X"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 249
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 251
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original      : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v5}, Lcom/coremedia/iso/Hex;->encodeHex([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconstructed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v5}, Lcom/coremedia/iso/Hex;->encodeHex([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    :cond_4
    return v4
.end method


# virtual methods
.method protected abstract _parseDetails(Ljava/nio/ByteBuffer;)V
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getHeader(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 126
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 134
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 136
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 137
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method protected abstract getContent(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract getContentSize()J
.end method

.method public getIsoFile()Lcom/coremedia/iso/IsoFile;
    .locals 1
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/ContainerBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 6

    .line 175
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    const-wide v2, 0xfffffff8L

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    add-int/2addr v2, v3

    .line 178
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "uuid"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 179
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    :goto_3
    int-to-long v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()[B
    .locals 1
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B

    return-object v0
.end method

.method public isParsed()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 6
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    instance-of p2, p1, Ljava/nio/channels/FileChannel;

    if-eqz p2, :cond_0

    sget p2, Lcom/googlecode/mp4parser/AbstractBox;->MEM_MAP_THRESHOLD:I

    int-to-long v0, p2

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 109
    check-cast p1, Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isParsed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->parseDetails()V

    :cond_1
    return-void
.end method

.method final declared-synchronized parseDetails()V
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->_parseDetails(Ljava/nio/ByteBuffer;)V

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setDeadBytes(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
