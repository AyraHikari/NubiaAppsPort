.class public Lcom/coremedia/iso/boxes/TimeToSampleBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TimeToSampleBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "stts"


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "stts"

    .line 51
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    return-void
.end method

.method public static blowupTimeToSamples(Ljava/util/List;)[J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;)[J"
        }
    .end annotation

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 134
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    long-to-int v0, v1

    .line 137
    new-array v0, v0, [J

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move v4, v1

    :goto_1
    int-to-long v5, v4

    .line 143
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 144
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    aput-wide v6, v0, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 60
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 61
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 72
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 73
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 75
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 76
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeToSampleBox[entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
