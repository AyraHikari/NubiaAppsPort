.class public final Lcom/google/zxing/encoding/EncodingHandler;
.super Ljava/lang/Object;
.source "EncodingHandler.java"


# static fields
.field private static final BLACK:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "logo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p0, :cond_1

    move-object p0, v0

    .line 117
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 88
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 92
    .local v6, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 93
    .local v5, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 94
    .local v3, "logoWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 95
    .local v2, "logoHeight":I
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 96
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 97
    int-to-float v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    int-to-float v9, v3

    div-float v4, v8, v9

    .line 98
    .local v4, "scaleFactor":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    check-cast v8, Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v4, v4, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 104
    sub-int v8, v6, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v9, v8

    sub-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v10, v8

    const/4 v8, 0x0

    check-cast v8, Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    move-object p0, v0

    .line 112
    goto :goto_0

    .line 107
    :catch_0
    move-exception v7

    .line 108
    .local v7, "var9":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 109
    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "scaleFactor":F
    .end local v7    # "var9":Ljava/lang/Exception;
    :cond_2
    move-object p0, v0

    .line 117
    goto :goto_0
.end method

.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "widthAndHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 31
    .local v8, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v5, "utf-8"

    invoke-virtual {v8, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v4, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, p0, v5, p1, p1}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 33
    .local v9, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 34
    .local v3, "width":I
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 35
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 37
    .local v1, "pixels":[I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-ge v11, v7, :cond_2

    .line 38
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v3, :cond_1

    .line 39
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    mul-int v4, v11, v3

    add-int/2addr v4, v10

    const/high16 v5, -0x1000000

    aput v5, v1, v4

    .line 38
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 45
    .end local v10    # "x":I
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 47
    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "widthPix"    # I
    .param p2, "heightPix"    # I
    .param p3, "logoBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    if-eqz p0, :cond_4

    :try_start_0
    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 53
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v8, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 57
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p2

    new-array v10, v3, [I

    .line 59
    .local v10, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 60
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 61
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/high16 v4, -0x1000000

    aput v4, v10, v3

    .line 60
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 64
    :cond_0
    mul-int v3, v20, p1

    add-int v3, v3, v19

    const/4 v4, -0x1

    aput v4, v10, v3
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 79
    .end local v8    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_0
    move-exception v18

    .line 80
    .local v18, "var9":Lcom/google/zxing/WriterException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 81
    const/4 v9, 0x0

    .end local v18    # "var9":Lcom/google/zxing/WriterException;
    :cond_1
    :goto_3
    return-object v9

    .line 59
    .restart local v8    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .restart local v10    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 69
    .end local v19    # "x":I
    :cond_3
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 70
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 71
    if-eqz p3, :cond_1

    .line 72
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/google/zxing/encoding/EncodingHandler;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_3

    .line 77
    .end local v8    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v20    # "y":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method
