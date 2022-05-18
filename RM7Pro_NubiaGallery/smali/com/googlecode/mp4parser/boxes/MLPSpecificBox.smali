.class public Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "MLPSpecificBox.java"


# instance fields
.field format_info:I

.field peak_data_rate:I

.field reserved:I

.field reserved2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dmlp"

    .line 18
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 28
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 p1, 0x20

    .line 29
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    const/16 v1, 0xf

    .line 30
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    .line 32
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 38
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 39
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 40
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 41
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getFormat_info()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    return v0
.end method

.method public getPeak_data_rate()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return v0
.end method

.method public setFormat_info(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->format_info:I

    return-void
.end method

.method public setPeak_data_rate(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->peak_data_rate:I

    return-void
.end method

.method public setReserved(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved:I

    return-void
.end method

.method public setReserved2(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/MLPSpecificBox;->reserved2:I

    return-void
.end method
