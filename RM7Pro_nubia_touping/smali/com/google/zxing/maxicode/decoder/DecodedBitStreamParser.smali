.class final Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ECI:C = '\ufffa'

.field private static final FS:C = '\u001c'

.field private static final GS:C = '\u001d'

.field private static final LATCHA:C = '\ufff7'

.field private static final LATCHB:C = '\ufff8'

.field private static final LOCK:C = '\ufff9'

.field private static final NS:C = '\ufffb'

.field private static final PAD:C = '\ufffc'

.field private static final RS:C = '\u001e'

.field private static final SETS:[Ljava/lang/String;

.field private static final SHIFTA:C = '\ufff0'

.field private static final SHIFTB:C = '\ufff1'

.field private static final SHIFTC:C = '\ufff2'

.field private static final SHIFTD:C = '\ufff3'

.field private static final SHIFTE:C = '\ufff4'

.field private static final THREESHIFTA:C = '\ufff6'

.field private static final TWOSHIFTA:C = '\ufff5'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb \ufffc\"#$%&\'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{\ufffc}~\u007f;<=>?[\\]^_ ,./:@!|\ufffc\ufff5\ufff6\ufffc\ufff0\ufff2\ufff3\ufff4\ufff7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\ufffa\u001c\u001d\u001e\u00db\u00dc\u00dd\u00de\u00df\u00aa\u00ac\u00b1\u00b2\u00b3\u00b5\u00b9\u00ba\u00bc\u00bd\u00be\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\ufffa\u001c\u001d\u001e\ufffb\u00fb\u00fc\u00fd\u00fe\u00ff\u00a1\u00a8\u00ab\u00af\u00b0\u00b4\u00b7\u00b8\u00bb\u00bf\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a9\u00ad\u00ae\u00b6\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static decode([BI)Lcom/google/zxing/common/DecoderResult;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x1d

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x90

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v3, "result":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v6

    .line 79
    :pswitch_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 80
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2([B)I

    move-result v1

    .line 81
    .local v1, "pc":I
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0000000000"

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2Length([B)I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 82
    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 86
    .end local v1    # "pc":I
    .local v2, "postcode":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "000"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, "threeDigits":Ljava/text/NumberFormat;
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getCountry([B)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "country":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getServiceClass([B)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "service":Ljava/lang/String;
    const/16 v6, 0xa

    const/16 v7, 0x54

    invoke-static {p0, v6, v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[)>\u001e01\u001d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "postcode":Ljava/lang/String;
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "threeDigits":Ljava/text/NumberFormat;
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode3([B)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "postcode":Ljava/lang/String;
    goto :goto_1

    .line 93
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v4    # "service":Ljava/lang/String;
    .restart local v5    # "threeDigits":Ljava/text/NumberFormat;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 97
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "postcode":Ljava/lang/String;
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "threeDigits":Ljava/text/NumberFormat;
    :pswitch_1
    const/16 v6, 0x5d

    invoke-static {p0, v7, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 100
    :pswitch_2
    const/16 v6, 0x4d

    invoke-static {p0, v7, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getBit(I[B)I
    .locals 3
    .param p0, "bit"    # I
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x1

    .line 107
    add-int/lit8 p0, p0, -0x1

    .line 108
    div-int/lit8 v1, p0, 0x6

    aget-byte v1, p1, v1

    rem-int/lit8 v2, p0, 0x6

    rsub-int/lit8 v2, v2, 0x5

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static getCountry([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 123
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data
.end method

.method private static getInt([B[B)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "x"    # [B

    .prologue
    .line 112
    array-length v2, p1

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "val":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 117
    aget-byte v2, p1, v0

    invoke-static {v2, p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getBit(I[B)I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v1
.end method

.method private static getMessage([BII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    .line 155
    .local v6, "shift":I
    const/4 v5, 0x0

    .line 156
    .local v5, "set":I
    const/4 v2, 0x0

    .line 157
    .local v2, "lastset":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v8, p1, p2

    if-ge v1, v8, :cond_1

    .line 158
    sget-object v8, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v8, v8, v5

    aget-byte v9, p0, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 159
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v6

    .line 197
    .end local v6    # "shift":I
    .local v7, "shift":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    if-nez v7, :cond_0

    .line 198
    move v5, v2

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v5, 0x0

    .line 162
    const/4 v6, -0x1

    move v7, v6

    .line 163
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 165
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_2
    const/4 v5, 0x1

    .line 166
    const/4 v6, -0x1

    move v7, v6

    .line 167
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 173
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_3
    move v2, v5

    .line 174
    const v8, 0xfff0

    sub-int v5, v0, v8

    .line 175
    const/4 v6, 0x1

    move v7, v6

    .line 176
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 178
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_4
    move v2, v5

    .line 179
    const/4 v5, 0x0

    .line 180
    const/4 v6, 0x2

    move v7, v6

    .line 181
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 183
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_5
    move v2, v5

    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v6, 0x3

    move v7, v6

    .line 186
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 188
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    aget-byte v8, p0, v1

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v1, v1, 0x1

    aget-byte v9, p0, v1

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    aget-byte v9, p0, v1

    shl-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    aget-byte v9, p0, v1

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    aget-byte v9, p0, v1

    add-int v3, v8, v9

    .line 189
    .local v3, "nsval":I
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "000000000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v10, v3

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v6

    .line 190
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 192
    .end local v3    # "nsval":I
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :pswitch_7
    const/4 v6, -0x1

    move v7, v6

    .line 193
    .end local v6    # "shift":I
    .restart local v7    # "shift":I
    goto :goto_1

    .line 201
    .end local v0    # "c":C
    .end local v7    # "shift":I
    .restart local v6    # "shift":I
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const v9, 0xfffc

    if-ne v8, v9, :cond_2

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 204
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 159
    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getPostCode2([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 135
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getPostCode2Length([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data
.end method

.method private static getPostCode3([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 140
    new-array v0, v5, [C

    sget-object v1, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    .line 142
    invoke-static {p0, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    .line 143
    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_2

    .line 144
    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_3

    .line 145
    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_4

    .line 146
    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-array v3, v5, [B

    fill-array-data v3, :array_5

    .line 147
    invoke-static {p0, v3}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 142
    nop

    :array_1
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    .line 143
    nop

    :array_2
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    .line 144
    nop

    :array_3
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    .line 145
    nop

    :array_4
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    .line 146
    nop

    :array_5
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getServiceClass([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 127
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method
