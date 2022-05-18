.class public Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleAuxiliaryInformationSizesBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "saiz"


# instance fields
.field private auxInfoType:Ljava/lang/String;

.field private auxInfoTypeParameter:Ljava/lang/String;

.field private defaultSampleInfoSize:I

.field private sampleCount:I

.field private sampleInfoSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
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

    const-string v0, "saiz"

    .line 40
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 77
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 78
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    .line 84
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    .line 86
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAuxInfoType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;

    return-object v0
.end method

.method public getAuxInfoTypeParameter()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 58
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 63
    :cond_0
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 65
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 67
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 68
    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 71
    :cond_1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :cond_2
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, 0x5

    .line 51
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDefaultSampleInfoSize()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    return v0
.end method

.method public getSampleInfoSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    return-object v0
.end method

.method public setAuxInfoType(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;

    return-void
.end method

.method public setAuxInfoTypeParameter(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSampleInfoSize(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    return-void
.end method

.method public setSampleCount(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    return-void
.end method

.method public setSampleInfoSizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleInfoSizes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->defaultSampleInfoSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auxInfoType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", auxInfoTypeParameter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox;->auxInfoTypeParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
