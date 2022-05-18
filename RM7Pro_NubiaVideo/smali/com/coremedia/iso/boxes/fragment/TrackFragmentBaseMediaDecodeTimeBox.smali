.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tfdt"


# instance fields
.field private baseMediaDecodeTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tfdt"

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    :goto_0
    return-void
.end method

.method public getBaseMediaDecodeTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    return-wide v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :goto_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc

    :goto_0
    return-wide v0
.end method

.method public setBaseMediaDecodeTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->baseMediaDecodeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
