.class public Lcom/coremedia/iso/boxes/EditListBox$Entry;
.super Ljava/lang/Object;
.source "EditListBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/EditListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field editListBox:Lcom/coremedia/iso/boxes/EditListBox;

.field private mediaRate:D

.field private mediaTime:J

.field private segmentDuration:J


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/EditListBox;JJD)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p2, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    .line 126
    iput-wide p4, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    .line 127
    iput-wide p6, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    .line 128
    iput-object p1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->editListBox:Lcom/coremedia/iso/boxes/EditListBox;

    return-void
.end method

.method public constructor <init>(Lcom/coremedia/iso/boxes/EditListBox;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/EditListBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    .line 134
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    .line 135
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    .line 138
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    .line 139
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    .line 141
    :goto_0
    iput-object p1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->editListBox:Lcom/coremedia/iso/boxes/EditListBox;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    check-cast p1, Lcom/coremedia/iso/boxes/EditListBox$Entry;

    .line 215
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 216
    :cond_2
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->editListBox:Lcom/coremedia/iso/boxes/EditListBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/EditListBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 231
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 233
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 234
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    :goto_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    return-void
.end method

.method public getMediaRate()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    return-wide v0
.end method

.method public getSegmentDuration()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 223
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMediaRate(D)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    return-void
.end method

.method public setMediaTime(J)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    return-void
.end method

.method public setSegmentDuration(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{segmentDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->segmentDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/EditListBox$Entry;->mediaRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
