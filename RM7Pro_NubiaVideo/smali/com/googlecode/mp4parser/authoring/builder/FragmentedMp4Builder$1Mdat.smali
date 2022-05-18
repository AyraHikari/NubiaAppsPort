.class Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mdat"
.end annotation


# instance fields
.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field final synthetic val$endSample:J

.field final synthetic val$i:I

.field final synthetic val$startSample:J

.field final synthetic val$track:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iput p7, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/builder/ByteBufferHelper;->mergeAdjacentBuffers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 8
    instance-of v1, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v1, :cond_2

    const/16 v1, 0x400

    const/4 v2, 0x0

    :goto_0
    int-to-double v3, v2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    int-to-double v7, v1

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    mul-int/lit16 v3, v2, 0x400

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v4, v2, 0x400

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 11
    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    .line 13
    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v4, v3}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 14
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
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
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
