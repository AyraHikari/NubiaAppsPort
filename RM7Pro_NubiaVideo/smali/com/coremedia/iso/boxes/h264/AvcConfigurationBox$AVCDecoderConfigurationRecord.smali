.class public Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCDecoderConfigurationRecord"
.end annotation


# instance fields
.field public avcLevelIndication:I

.field public avcProfileIndication:I

.field public bitDepthChromaMinus8:I

.field public bitDepthChromaMinus8PaddingBits:I

.field public bitDepthLumaMinus8:I

.field public bitDepthLumaMinus8PaddingBits:I

.field public chromaFormat:I

.field public chromaFormatPaddingBits:I

.field public configurationVersion:I

.field public hasExts:Z

.field public lengthSizeMinusOne:I

.field public lengthSizeMinusOnePaddingBits:I

.field public numberOfSequenceParameterSetsPaddingBits:I

.field public pictureParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public profileCompatibility:I

.field public sequenceParameterSetExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public sequenceParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 5
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 7
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v0, 0x3c

    .line 9
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v0, 0x7

    .line 10
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/16 v0, 0x1f

    .line 11
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 12
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 13
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 18
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 20
    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v1, 0x3c

    .line 22
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v1, 0x7

    .line 23
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/16 v1, 0x1f

    .line 24
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 25
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 26
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 27
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    .line 28
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    .line 29
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    .line 30
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    .line 31
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x6

    .line 32
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    iput v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v3, 0x2

    .line 33
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    const/4 v4, 0x3

    .line 34
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/4 v5, 0x5

    .line 35
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    move v6, v0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 37
    new-array v7, v7, [B

    .line 38
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 39
    iget-object v8, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v6, v1

    move v1, v0

    :goto_1
    int-to-long v8, v1

    cmp-long v8, v8, v6

    if-gez v8, :cond_1

    .line 41
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 42
    new-array v8, v8, [B

    .line 43
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v9, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    .line 46
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 47
    :cond_2
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x64

    if-eq v1, v6, :cond_3

    const/16 v6, 0x6e

    if-eq v1, v6, :cond_3

    const/16 v6, 0x7a

    if-eq v1, v6, :cond_3

    const/16 v6, 0x90

    if-ne v1, v6, :cond_4

    .line 48
    :cond_3
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 50
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 51
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 52
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 53
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 54
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 55
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    :goto_2
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_5

    .line 56
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 57
    new-array v3, v3, [B

    .line 58
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 61
    iput p1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 62
    iput p1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    :cond_5
    return-void
.end method


# virtual methods
.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 2
    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 3
    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 5
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 7
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 8
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 9
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 10
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 11
    array-length v6, v1

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 12
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 15
    array-length v6, v1

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 16
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x90

    if-ne v0, v1, :cond_3

    .line 18
    :cond_2
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 19
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 20
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 21
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 22
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 23
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 24
    iget v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 25
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 26
    array-length v2, v1

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 27
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getContentSize()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x2

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-long/2addr v1, v4

    .line 2
    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-long/2addr v1, v4

    .line 4
    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v3, 0x64

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x90

    if-ne v0, v3, :cond_3

    :cond_2
    const-wide/16 v6, 0x4

    add-long/2addr v1, v6

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-long/2addr v1, v4

    .line 7
    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    goto :goto_2

    :cond_3
    return-wide v1
.end method

.method public getPPS()[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    :try_start_0
    invoke-static {v2}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read([B)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSPS()[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "not parsable"

    .line 4
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3
    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
