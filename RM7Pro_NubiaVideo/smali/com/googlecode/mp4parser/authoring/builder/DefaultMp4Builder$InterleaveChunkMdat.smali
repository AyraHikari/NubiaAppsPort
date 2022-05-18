.class Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field contentSize:J

.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

.field tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->tracks:Ljava/util/List;

    .line 6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v7, p2

    .line 8
    invoke-virtual {v1, v6, v7}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 10
    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->tracks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/Track;

    .line 11
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    move-wide v11, v2

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_1

    .line 12
    aget v13, v9, v10

    int-to-long v13, v13

    add-long/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 13
    :cond_1
    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v10

    :goto_4
    int-to-long v13, v10

    aget v15, v9, v6

    int-to-long v2, v15

    add-long/2addr v2, v11

    cmp-long v2, v13, v2

    if-gez v2, :cond_2

    .line 14
    iget-object v2, v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 15
    iget-wide v13, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    move v15, v6

    int-to-long v5, v3

    add-long/2addr v13, v5

    iput-wide v13, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    .line 16
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v6, v15

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    move v15, v6

    add-int/lit8 v6, v15, 0x1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;)V

    return-void
.end method

.method private isSmallBox(J)Z
    .locals 2

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    const-wide v0, 0x100000000L

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v1

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    .line 5
    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :goto_0
    const-string v3, "mdat"

    .line 6
    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 12
    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->unifyAdjacentBuffers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    int-to-double v2, v1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v6, v6, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 15
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v2, v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    mul-int v3, v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v2, v1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v2, v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    mul-int/2addr v2, v1

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 17
    :goto_3
    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/ByteBuffer;

    .line 19
    :cond_3
    move-object v3, p1

    check-cast v3, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v3, v2}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 20
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_2

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    :cond_5
    return-void
.end method

.method public getDataOffset()J
    .locals 6

    const-wide/16 v0, 0x10

    move-object v2, p0

    .line 1
    :goto_0
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 4
    :cond_1
    :goto_2
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "mdat"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
