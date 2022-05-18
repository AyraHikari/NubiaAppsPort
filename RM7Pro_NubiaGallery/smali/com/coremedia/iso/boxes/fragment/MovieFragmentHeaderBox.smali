.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieFragmentHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mfhd"


# instance fields
.field private sequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mfhd"

    .line 37
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 54
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 47
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J

    return-wide v0
.end method

.method public setSequenceNumber(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieFragmentHeaderBox{sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
