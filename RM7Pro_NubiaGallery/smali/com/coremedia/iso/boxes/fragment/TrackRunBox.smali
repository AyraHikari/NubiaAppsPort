.class public Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackRunBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "trun"


# instance fields
.field private dataOffset:I

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trun"

    .line 156
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 217
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 218
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 220
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 221
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 223
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 226
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v2, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    :cond_1
    const/4 v2, 0x0

    :goto_1
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_6

    .line 230
    new-instance v3, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 232
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 235
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    const/16 v5, 0x400

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    .line 238
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v3, v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$202(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;Lcom/coremedia/iso/boxes/fragment/SampleFlags;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    const/16 v5, 0x800

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$302(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;I)I

    .line 243
    :cond_5
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 188
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 189
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 190
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 193
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :cond_0
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v1, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_3

    .line 201
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :cond_3
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_4

    .line 204
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :cond_4
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_5

    .line 207
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$200(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    :cond_5
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    .line 210
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$300(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected getContentSize()J
    .locals 9

    .line 161
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0xc

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x8

    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    const-wide/16 v5, 0x4

    if-ne v3, v4, :cond_1

    add-long/2addr v1, v5

    :cond_1
    const-wide/16 v3, 0x0

    and-int/lit16 v7, v0, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_2

    move-wide v3, v5

    :cond_2
    and-int/lit16 v7, v0, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_3

    add-long/2addr v3, v5

    :cond_3
    and-int/lit16 v7, v0, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_4

    add-long/2addr v3, v5

    :cond_4
    const/16 v7, 0x800

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_5

    add-long/2addr v3, v5

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getDataOffset()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public getSampleCompositionTimeOffsets()[J
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 131
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleCount()J
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTrackExtendsBox()Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    .locals 8

    .line 139
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v1

    const-class v2, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/MovieBox;

    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 148
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public isDataOffsetPresent()Z
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFirstSampleFlagsPresent()Z
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSampleCompositionTimeOffsetPresent()Z
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSampleDurationPresent()Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSampleFlagsPresent()Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSampleSizePresent()Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDataOffset(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffffe

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 123
    :goto_0
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    return-void
.end method

.method public setDataOffsetPresent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    const v0, 0xfffffe

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setFirstSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V
    .locals 2

    if-nez p1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffffb

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 333
    :goto_0
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-void
.end method

.method public setSampleCompositionTimeOffsetPresent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x800

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    const v0, 0xfff7ff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public setSampleDurationPresent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x100

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    const v0, 0xfffeff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public setSampleFlagsPresent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    const v0, 0xfffbff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public setSampleSizePresent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result p1

    const v0, 0xfffdff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackRunBox"

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{sampleCount="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataOffset="

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataOffsetPresent="

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isDataOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleSizePresent="

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleDurationPresent="

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleFlagsPresentPresent="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleCompositionTimeOffsetPresent="

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstSampleFlags="

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
