.class public Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trex"


# instance fields
.field private defaultSampleDescriptionIndex:J

.field private defaultSampleDuration:J

.field private defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

.field private defaultSampleSize:J

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trex"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    .line 6
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 4
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 5
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDefaultSampleDescriptionIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    return-wide v0
.end method

.method public getDefaultSampleDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    return-wide v0
.end method

.method public getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public getDefaultSampleFlagsStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSampleSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    return-wide v0
.end method

.method public setDefaultSampleDescriptionIndex(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    return-void
.end method

.method public setDefaultSampleDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    return-void
.end method

.method public setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-void
.end method

.method public setDefaultSampleSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    return-void
.end method
