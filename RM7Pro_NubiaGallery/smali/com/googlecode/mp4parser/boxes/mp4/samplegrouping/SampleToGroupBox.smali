.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleToGroupBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "sbgp"


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private groupingType:Ljava/lang/String;

.field private groupingTypeParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "sbgp"

    .line 52
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 78
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 79
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingType:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingTypeParameter:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 63
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingTypeParameter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 69
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    .line 70
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 71
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xc

    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getGroupingType()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingTypeParameter()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingTypeParameter:Ljava/lang/String;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setGroupingType(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingType:Ljava/lang/String;

    return-void
.end method

.method public setGroupingTypeParameter(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->groupingTypeParameter:Ljava/lang/String;

    return-void
.end method
