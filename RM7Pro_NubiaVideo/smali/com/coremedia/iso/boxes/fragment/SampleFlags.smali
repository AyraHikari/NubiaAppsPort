.class public Lcom/coremedia/iso/boxes/fragment/SampleFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private reserved:I

.field private sampleDegradationPriority:I

.field private sampleDependsOn:I

.field private sampleHasRedundancy:I

.field private sampleIsDependedOn:I

.field private sampleIsDifferenceSample:Z

.field private samplePaddingValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    .line 6
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    const/4 p1, 0x3

    .line 8
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    const/16 p1, 0x10

    .line 10
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 3
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    iget-boolean v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    iget p1, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    if-eq v2, p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 3
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 4
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 5
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 6
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 7
    iget-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 8
    iget p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-void
.end method

.method public getReserved()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    return v0
.end method

.method public getSampleDegradationPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    return v0
.end method

.method public getSampleIsDependedOn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    return v0
.end method

.method public getSamplePaddingValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isSampleIsDifferenceSample()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return v0
.end method

.method public setReserved(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    return-void
.end method

.method public setSampleDegradationPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    return-void
.end method

.method public setSampleIsDependedOn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    return-void
.end method

.method public setSampleIsDifferenceSample(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return-void
.end method

.method public setSamplePaddingValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleFlags{reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleDependsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleHasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplePaddingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleIsDifferenceSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleDegradationPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
