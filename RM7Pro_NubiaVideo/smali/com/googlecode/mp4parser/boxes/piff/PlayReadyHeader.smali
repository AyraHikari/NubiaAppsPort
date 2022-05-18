.class public Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;
.super Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    }
.end annotation


# instance fields
.field private length:J

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;

    add-int/lit8 v1, v1, 0x4

    .line 2
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-long v1, v1

    .line 4
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32BE(Ljava/nio/ByteBuffer;J)V

    .line 5
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;

    .line 7
    iget v3, v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->type:I

    invoke-static {v0, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 8
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v0, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16BE(Ljava/nio/ByteBuffer;I)V

    .line 9
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32BE(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->length:J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16BE(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->createFor(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayReadyHeader"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{length="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recordCount="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", records="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;->records:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
