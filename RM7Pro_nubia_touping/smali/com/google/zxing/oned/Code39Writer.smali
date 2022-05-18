.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .prologue
    const/4 v3, 0x1

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    .line 94
    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p0, v2

    .line 95
    .local v1, "temp":I
    if-nez v1, :cond_0

    move v2, v3

    :goto_1
    aput v2, p1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    .line 97
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/16 v8, 0x20

    const/16 v7, 0x3a

    const/16 v6, 0x2f

    const/16 v5, 0x25

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 101
    .local v3, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, "extendedContent":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, "character":C
    sparse-switch v0, :sswitch_data_0

    .line 120
    if-lez v0, :cond_0

    const/16 v4, 0x1b

    if-ge v0, v4, :cond_0

    .line 121
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :sswitch_0
    const-string v4, "%U"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :sswitch_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :sswitch_2
    const-string v4, "%V"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :sswitch_3
    const-string v4, "%W"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_0
    const/16 v4, 0x1a

    if-le v0, v4, :cond_1

    if-ge v0, v8, :cond_1

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v4, v0, -0x1b

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :cond_1
    if-le v0, v8, :cond_2

    const/16 v4, 0x2d

    if-lt v0, v4, :cond_3

    :cond_2
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_4

    .line 127
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v4, v0, -0x21

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_4
    if-le v0, v6, :cond_5

    if-ge v0, v7, :cond_5

    .line 130
    add-int/lit8 v4, v0, -0x30

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :cond_5
    if-le v0, v7, :cond_6

    if-ge v0, v9, :cond_6

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v4, v0, -0x3b

    add-int/lit8 v4, v4, 0x46

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_6
    if-le v0, v9, :cond_7

    const/16 v4, 0x5b

    if-ge v0, v4, :cond_7

    .line 135
    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_7
    const/16 v4, 0x5a

    if-le v0, v4, :cond_8

    const/16 v4, 0x60

    if-ge v0, v4, :cond_8

    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v4, v0, -0x5b

    add-int/lit8 v4, v4, 0x4b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    :cond_8
    const/16 v4, 0x60

    if-le v0, v4, :cond_9

    const/16 v4, 0x7b

    if-ge v0, v4, :cond_9

    .line 140
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 142
    :cond_9
    const/16 v4, 0x7a

    if-le v0, v4, :cond_a

    const/16 v4, 0x80

    if-ge v0, v4, :cond_a

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v4, v0, -0x7b

    add-int/lit8 v4, v4, 0x50

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 146
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requested content contains a non-encodable character: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v0    # "character":C
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 48
    .local v3, "length":I
    const/16 v9, 0x50

    if-le v3, v9, :cond_0

    .line 49
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 53
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 54
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 55
    if-gez v9, :cond_1

    .line 56
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 58
    const/16 v9, 0x50

    if-le v3, v9, :cond_2

    .line 59
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (extended full ASCII mode)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const/16 v9, 0x9

    new-array v8, v9, [I

    .line 67
    .local v8, "widths":[I
    add-int/lit8 v0, v3, 0x19

    .line 68
    .local v0, "codeWidth":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 69
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 70
    .local v2, "indexInString":I
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 71
    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x9

    if-ge v9, v10, :cond_3

    aget v7, v8, v9

    .line 72
    .local v7, "width":I
    add-int/2addr v0, v7

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 68
    .end local v7    # "width":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v2    # "indexInString":I
    :cond_4
    new-array v6, v0, [Z

    .line 76
    .local v6, "result":[Z
    const/16 v9, 0x94

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 77
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v6, v9, v8, v10}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 78
    .local v5, "pos":I
    const/4 v9, 0x1

    new-array v4, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v4, v9

    .line 79
    .local v4, "narrowWhite":[I
    const/4 v9, 0x0

    invoke-static {v6, v5, v4, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 81
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_5

    .line 82
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 83
    .restart local v2    # "indexInString":I
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 84
    const/4 v9, 0x1

    invoke-static {v6, v5, v8, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 85
    const/4 v9, 0x0

    invoke-static {v6, v5, v4, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    .end local v2    # "indexInString":I
    :cond_5
    const/16 v9, 0x94

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 88
    const/4 v9, 0x1

    invoke-static {v6, v5, v8, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 89
    return-object v6
.end method
