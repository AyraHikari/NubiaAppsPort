.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 44
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 46
    .local v0, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    if-eqz v0, :cond_2

    .line 48
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    :goto_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .line 67
    return-void

    .line 44
    .end local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_4
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 45
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v0, v2

    goto :goto_0

    .line 50
    .restart local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .restart local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_5
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 17
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v9

    .line 75
    .local v9, "startGuardPattern":[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v13, v12

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v13, :cond_5

    aget-object v6, v12, v11

    .line 77
    .local v6, "reader":Lcom/google/zxing/oned/UPCEANReader;
    :try_start_0
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v6, v0, v1, v9, v2}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v7

    .line 91
    .local v7, "result":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v10

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v10, v14, :cond_1

    .line 92
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x30

    if-ne v10, v14, :cond_1

    const/4 v4, 0x1

    .line 94
    .local v4, "ean13MayBeUPCA":Z
    :goto_1
    if-nez p3, :cond_2

    const/4 v5, 0x0

    .line 96
    .local v5, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_2
    if-eqz v5, :cond_0

    sget-object v10, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 98
    .local v3, "canReturnUPCA":Z
    :goto_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 100
    new-instance v8, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v14

    .line 102
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v15

    sget-object v16, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    invoke-direct {v8, v10, v14, v15, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 104
    .local v8, "resultUPCA":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 107
    .end local v8    # "resultUPCA":Lcom/google/zxing/Result;
    :goto_4
    return-object v8

    .line 92
    .end local v3    # "canReturnUPCA":Z
    .end local v4    # "ean13MayBeUPCA":Z
    .end local v5    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 94
    .restart local v4    # "ean13MayBeUPCA":Z
    :cond_2
    sget-object v10, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 95
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v10

    goto :goto_2

    .line 96
    .restart local v5    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .restart local v3    # "canReturnUPCA":Z
    :cond_4
    move-object v8, v7

    .line 107
    goto :goto_4

    .line 75
    .end local v3    # "canReturnUPCA":Z
    .end local v4    # "ean13MayBeUPCA":Z
    .end local v5    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v7    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v10

    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 113
    .end local v6    # "reader":Lcom/google/zxing/oned/UPCEANReader;
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
