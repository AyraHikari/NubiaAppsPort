.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 3
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .param p3, "removed"    # Ljava/lang/StringBuilder;
    .param p4, "lastCharSize"    # I

    .prologue
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 71
    .local v1, "count":I
    sub-int v2, v1, p4

    invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 72
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 74
    .local v0, "c":C
    invoke-virtual {p0, v0, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p4

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 76
    return p4
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .prologue
    .line 169
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 170
    .local v0, "c1":C
    add-int/lit8 v6, p1, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 171
    .local v1, "c2":C
    add-int/lit8 v6, p1, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 172
    .local v2, "c3":C
    mul-int/lit16 v6, v0, 0x640

    mul-int/lit8 v7, v1, 0x28

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    add-int/lit8 v5, v6, 0x1

    .line 173
    .local v5, "v":I
    div-int/lit16 v6, v5, 0x100

    int-to-char v3, v6

    .line 174
    .local v3, "cw1":C
    rem-int/lit16 v6, v5, 0x100

    int-to-char v4, v6

    .line 175
    .local v4, "cw2":C
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [C

    const/4 v8, 0x0

    aput-char v3, v7, v8

    const/4 v8, 0x1

    aput-char v4, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 13
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v2

    .line 32
    .local v2, "c":C
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v4

    .line 36
    .local v4, "lastCharSize":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    shl-int/lit8 v6, v7, 0x1

    .line 38
    .local v6, "unwritten":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7

    add-int v3, v7, v6

    .line 39
    .local v3, "curCodewordCount":I
    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v7

    sub-int v0, v7, v3

    .line 42
    .local v0, "available":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v7

    if-nez v7, :cond_5

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v5, "removed":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-ne v7, v10, :cond_2

    if-lt v0, v10, :cond_1

    if-le v0, v10, :cond_2

    .line 46
    :cond_1
    invoke-direct {p0, p1, v1, v5, v4}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v4

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-ne v7, v11, :cond_6

    if-gt v4, v12, :cond_3

    if-ne v0, v11, :cond_4

    :cond_3
    if-le v4, v12, :cond_6

    .line 50
    :cond_4
    invoke-direct {p0, p1, v1, v5, v4}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v4

    goto :goto_0

    .line 55
    .end local v5    # "removed":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 56
    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v7

    .line 58
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 60
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 65
    .end local v0    # "available":I
    .end local v2    # "c":C
    .end local v3    # "curCodewordCount":I
    .end local v4    # "lastCharSize":I
    .end local v6    # "unwritten":I
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 66
    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 3
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 129
    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    .line 130
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :goto_0
    return v0

    .line 132
    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1

    .line 133
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2

    .line 136
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_2
    if-ltz p1, :cond_3

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_3

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const/16 v2, 0x21

    if-lt p1, v2, :cond_4

    const/16 v2, 0x2f

    if-gt p1, v2, :cond_4

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v0, p1, -0x21

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    const/16 v2, 0x3a

    if-lt p1, v2, :cond_5

    const/16 v2, 0x40

    if-gt p1, v2, :cond_5

    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, p1, -0x3a

    add-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_6

    const/16 v2, 0x5f

    if-gt p1, v2, :cond_6

    .line 151
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, p1, -0x5b

    add-int/lit8 v0, v0, 0x16

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 153
    goto :goto_0

    .line 154
    :cond_6
    const/16 v0, 0x60

    if-lt p1, v0, :cond_7

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_7

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v0, p1, -0x60

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 158
    :cond_7
    const/16 v0, 0x80

    if-lt p1, v0, :cond_8

    .line 159
    const-string v0, "\u0001\u001e"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, p1, -0x80

    int-to-char v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 162
    goto/16 :goto_0

    .line 164
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xfe

    const/4 v5, 0x3

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    shl-int/lit8 v3, v4, 0x1

    .line 92
    .local v3, "unwritten":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v2, v4, 0x3

    .line 94
    .local v2, "rest":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int v1, v4, v3

    .line 95
    .local v1, "curCodewordCount":I
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 96
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    sub-int v0, v4, v1

    .line 98
    .local v0, "available":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 99
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 101
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 125
    :cond_1
    :goto_1
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 126
    return-void

    .line 106
    :cond_2
    if-ne v0, v8, :cond_5

    if-ne v2, v8, :cond_5

    .line 107
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_3

    .line 108
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 114
    :cond_4
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_1

    .line 115
    :cond_5
    if-nez v2, :cond_8

    .line 116
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_6

    .line 117
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 119
    :cond_6
    if-gtz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    :cond_7
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_1

    .line 123
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected case. Please report!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
