.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 35
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 36
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 72
    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public get(II)B
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # B

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    .line 60
    return-void
.end method

.method public set(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 64
    return-void
.end method

.method public set(IIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v1, v0, p2

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, p1

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v3, v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v4, v3

    .line 81
    .local v0, "bytesY":[B
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v2, v4, :cond_0

    .line 82
    aget-byte v4, v0, v2

    packed-switch v4, :pswitch_data_0

    .line 90
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :pswitch_0
    const-string v4, " 0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 87
    :pswitch_1
    const-string v4, " 1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 94
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "bytesY":[B
    .end local v2    # "x":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
