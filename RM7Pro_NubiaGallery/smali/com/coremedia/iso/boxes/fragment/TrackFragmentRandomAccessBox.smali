.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackFragmentRandomAccessBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "tfra"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private lengthSizeOfSampleNum:I

.field private lengthSizeOfTrafNum:I

.field private lengthSizeOfTrunNum:I

.field private reserved:I

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tfra"

    .line 64
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    .line 59
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    .line 60
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 85
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 86
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    .line 87
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const/4 v2, 0x6

    shr-long v2, v0, v2

    long-to-int v2, v2

    .line 88
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I

    const-wide/16 v2, 0x3f

    and-long/2addr v2, v0

    long-to-int v2, v2

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 89
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    const-wide/16 v4, 0xc

    and-long/2addr v4, v0

    long-to-int v2, v4

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 90
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v0, v3

    .line 91
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    .line 92
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 97
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 99
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$002(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 103
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$102(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 105
    :goto_1
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$202(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 106
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$302(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 107
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$402(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J

    .line 109
    iget-object v5, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 117
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 118
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 120
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I

    shl-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    .line 121
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    int-to-long v4, v2

    or-long/2addr v0, v4

    .line 122
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x2

    int-to-long v4, v2

    or-long/2addr v0, v4

    .line 123
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x3

    int-to-long v4, v2

    or-long/2addr v0, v4

    .line 124
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 125
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 127
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    .line 128
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 129
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 130
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 132
    :cond_0
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$000(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 133
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$100(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 135
    :goto_1
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$200(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    invoke-static {v4, v5, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 136
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$300(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v4

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    invoke-static {v4, v5, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 137
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->access$400(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J

    move-result-wide v1

    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    invoke-static {v1, v2, p1, v4}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I

    move-result v0

    const-wide/16 v1, 0x10

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 72
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    :goto_0
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 76
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 77
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 78
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthSizeOfSampleNum()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    return v0
.end method

.method public getLengthSizeOfTrafNum()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    return v0
.end method

.method public getLengthSizeOfTrunNum()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    return v0
.end method

.method public getNumberOfEntries()J
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getReserved()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    return-wide v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setLengthSizeOfSampleNum(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I

    return-void
.end method

.method public setLengthSizeOfTrafNum(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I

    return-void
.end method

.method public setLengthSizeOfTrunNum(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackFragmentRandomAccessBox{trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
