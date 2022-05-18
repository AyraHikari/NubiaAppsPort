.class public abstract Lcom/coremedia/iso/AbstractBoxParser;
.super Ljava/lang/Object;
.source "AbstractBoxParser.java"

# interfaces
.implements Lcom/coremedia/iso/BoxParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/coremedia/iso/AbstractBoxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;
.end method

.method public parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const-wide/16 v2, 0x8

    .line 50
    invoke-static {v1, v2, v3}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    if-gez v6, :cond_0

    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 55
    sget-object v0, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Stop parsing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-object v7

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    cmp-long v10, v4, v8

    const-wide/16 v11, 0x10

    const/16 v13, 0x8

    if-nez v10, :cond_1

    .line 65
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    invoke-static {v2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    sub-long v2, v4, v11

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v10, v4, v14

    if-nez v10, :cond_3

    .line 71
    instance-of v4, v1, Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_2

    .line 72
    move-object v4, v1

    check-cast v4, Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v14, v4

    sub-long v4, v14, v2

    goto :goto_0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only FileChannel inputs may use size == 0 (box reaches to the end of file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    sub-long v2, v4, v2

    :goto_1
    const-string v10, "uuid"

    .line 80
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v14, 0x10

    if-eqz v10, :cond_4

    .line 81
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 82
    invoke-interface {v1, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 83
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    sub-long/2addr v2, v11

    :cond_4
    move-wide v10, v2

    .line 87
    invoke-interface/range {p2 .. p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p0

    invoke-virtual {v12, v6, v7, v2}, Lcom/coremedia/iso/AbstractBoxParser;->createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v15

    move-object/from16 v2, p2

    .line 88
    invoke-interface {v15, v2}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 89
    sget-object v2, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sub-long v2, v4, v10

    .line 93
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 97
    :cond_5
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    if-ne v0, v14, :cond_6

    .line 98
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 99
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 100
    invoke-static {v6}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 102
    :cond_6
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    const/16 v8, 0x18

    if-ne v0, v8, :cond_7

    .line 103
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 105
    invoke-static {v6}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 107
    :cond_7
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_8

    .line 108
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 110
    invoke-static {v6}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 112
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :goto_3
    move-object v0, v15

    move-object/from16 v1, p1

    move-wide v3, v10

    move-object/from16 v5, p0

    .line 118
    invoke-interface/range {v0 .. v5}, Lcom/coremedia/iso/boxes/Box;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    return-object v15

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I didn\'t expect that"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
