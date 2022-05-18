.class public final Lcom/google/zxing/decoding/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final luminances:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 24
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 25
    .local v1, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    mul-int v0, v3, v7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/zxing/decoding/RGBLuminanceSource;->luminances:[B

    .line 28
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    if-ge v14, v7, :cond_2

    .line 29
    mul-int v10, v14, v3

    .line 31
    .local v10, "offset":I
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_1
    if-ge v13, v3, :cond_1

    .line 32
    add-int v0, v10, v13

    aget v11, v1, v0

    .line 33
    .local v11, "pixel":I
    shr-int/lit8 v0, v11, 0x10

    and-int/lit16 v12, v0, 0xff

    .line 34
    .local v12, "r":I
    shr-int/lit8 v0, v11, 0x8

    and-int/lit16 v9, v0, 0xff

    .line 35
    .local v9, "g":I
    and-int/lit16 v8, v11, 0xff

    .line 36
    .local v8, "b":I
    if-ne v12, v9, :cond_0

    if-ne v9, v8, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/zxing/decoding/RGBLuminanceSource;->luminances:[B

    add-int v2, v10, v13

    int-to-byte v4, v12

    aput-byte v4, v0, v2

    .line 31
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/decoding/RGBLuminanceSource;->luminances:[B

    add-int v2, v10, v13

    add-int v4, v12, v9

    add-int/2addr v4, v9

    add-int/2addr v4, v8

    shr-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    goto :goto_2

    .line 28
    .end local v8    # "b":I
    .end local v9    # "g":I
    .end local v11    # "pixel":I
    .end local v12    # "r":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 44
    .end local v10    # "offset":I
    .end local v13    # "x":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p1}, Lcom/google/zxing/decoding/RGBLuminanceSource;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/decoding/RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    return-void
.end method

.method private static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/zxing/decoding/RGBLuminanceSource;->luminances:[B

    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 4
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 47
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/decoding/RGBLuminanceSource;->getHeight()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/google/zxing/decoding/RGBLuminanceSource;->getWidth()I

    move-result v0

    .line 49
    .local v0, "width":I
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 50
    :cond_0
    new-array p2, v0, [B

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/decoding/RGBLuminanceSource;->luminances:[B

    mul-int v2, p1, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object p2

    .line 56
    .end local v0    # "width":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested row is outside the image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
