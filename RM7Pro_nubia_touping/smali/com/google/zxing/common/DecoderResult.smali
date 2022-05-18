.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field private final byteSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final ecLevel:Ljava/lang/String;

.field private erasures:Ljava/lang/Integer;

.field private errorsCorrected:Ljava/lang/Integer;

.field private numBits:I

.field private other:Ljava/lang/Object;

.field private final rawBytes:[B

.field private final structuredAppendParity:I

.field private final structuredAppendSequenceNumber:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "rawBytes"    # [B
    .param p2, "text"    # Ljava/lang/String;
    .param p4, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, -0x1

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 46
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .param p1, "rawBytes"    # [B
    .param p2, "text"    # Ljava/lang/String;
    .param p4, "ecLevel"    # Ljava/lang/String;
    .param p5, "saSequence"    # I
    .param p6, "saParity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 55
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/zxing/common/DecoderResult;->numBits:I

    .line 56
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    .line 59
    iput p6, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    .line 60
    iput p5, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    .line 61
    return-void

    .line 55
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getByteSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    return-object v0
.end method

.method public getECLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getErasures()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorsCorrected()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumBits()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->numBits:I

    return v0
.end method

.method public getOther()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    return-object v0
.end method

.method public getStructuredAppendParity()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    return v0
.end method

.method public getStructuredAppendSequenceNumber()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasStructuredAppend()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErasures(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "erasures"    # Ljava/lang/Integer;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;

    .line 127
    return-void
.end method

.method public setErrorsCorrected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "errorsCorrected"    # Ljava/lang/Integer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    .line 116
    return-void
.end method

.method public setNumBits(I)V
    .locals 0
    .param p1, "numBits"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/google/zxing/common/DecoderResult;->numBits:I

    .line 84
    return-void
.end method

.method public setOther(Ljava/lang/Object;)V
    .locals 0
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    .line 138
    return-void
.end method
