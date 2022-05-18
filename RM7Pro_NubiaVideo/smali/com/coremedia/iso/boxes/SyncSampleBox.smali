.class public Lcom/coremedia/iso/boxes/SyncSampleBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stss"


# instance fields
.field private sampleNumber:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stss"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 3
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 4
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSampleNumber()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    return-object v0
.end method

.method public setSampleNumber([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncSampleBox[entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SyncSampleBox;->sampleNumber:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
