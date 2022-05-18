.class public final Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AvcConfigurationBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "avcC"


# instance fields
.field public avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "avcC"

    .line 45
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    return-void
.end method

.method public getAvcLevelIndication()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    return v0
.end method

.method public getAvcProfileIndication()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return v0
.end method

.method public getChromaFormat()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    return v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    return v0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getContent(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getContentSize()J
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getContentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLengthSizeMinusOne()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return v0
.end method

.method public getPPS()[Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getPPS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureParameterSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getPictureParameterSetsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileCompatibility()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    return v0
.end method

.method public getSPS()[Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSPS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSetExts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    return-object v0
.end method

.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSequenceParameterSetExtsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->getSequenceParameterSetsAsStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getavcDecoderConfigurationRecord()Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    return-object v0
.end method

.method public hasExts()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    return v0
.end method

.method public setAvcLevelIndication(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    return-void
.end method

.method public setAvcProfileIndication(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    return-void
.end method

.method public setBitDepthChromaMinus8(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return-void
.end method

.method public setBitDepthLumaMinus8(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return-void
.end method

.method public setChromaFormat(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    return-void
.end method

.method public setConfigurationVersion(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    return-void
.end method

.method public setHasExts(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-boolean p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    return-void
.end method

.method public setLengthSizeMinusOne(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return-void
.end method

.method public setPictureParameterSets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    return-void
.end method

.method public setProfileCompatibility(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    return-void
.end method

.method public setSequenceParameterSetExts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    return-void
.end method

.method public setSequenceParameterSets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;

    iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    return-void
.end method
