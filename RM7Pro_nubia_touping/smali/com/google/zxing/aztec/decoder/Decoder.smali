.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "a"

    aput-object v1, v0, v5

    const-string v1, "b"

    aput-object v1, v0, v6

    const-string v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "\u0001"

    aput-object v1, v0, v5

    const-string v1, "\u0002"

    aput-object v1, v0, v6

    const-string v1, "\u0003"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\r\n"

    aput-object v1, v0, v5

    const-string v1, ". "

    aput-object v1, v0, v6

    const-string v1, ", "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    const-string v1, "1"

    aput-object v1, v0, v6

    const-string v1, "2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .locals 3
    .param p0, "boolArr"    # [Z

    .prologue
    .line 356
    array-length v2, p0

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v0, v2, [B

    .line 357
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 358
    shl-int/lit8 v2, v1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-object v0
.end method

.method private correctBits([Z)[Z
    .locals 17
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 210
    const/4 v2, 0x6

    .line 211
    .local v2, "codewordSize":I
    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 223
    .local v6, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v12

    .line 224
    .local v12, "numDataCodewords":I
    move-object/from16 v0, p1

    array-length v15, v0

    div-int v11, v15, v2

    .line 225
    .local v11, "numCodewords":I
    if-ge v11, v12, :cond_3

    .line 226
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 212
    .end local v2    # "codewordSize":I
    .end local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v11    # "numCodewords":I
    .end local v12    # "numDataCodewords":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 213
    const/16 v2, 0x8

    .line 214
    .restart local v2    # "codewordSize":I
    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 215
    .end local v2    # "codewordSize":I
    .end local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x16

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 216
    const/16 v2, 0xa

    .line 217
    .restart local v2    # "codewordSize":I
    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 219
    .end local v2    # "codewordSize":I
    .end local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    const/16 v2, 0xc

    .line 220
    .restart local v2    # "codewordSize":I
    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v6    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 228
    .restart local v11    # "numCodewords":I
    .restart local v12    # "numDataCodewords":I
    :cond_3
    move-object/from16 v0, p1

    array-length v15, v0

    rem-int v13, v15, v2

    .line 230
    .local v13, "offset":I
    new-array v5, v11, [I

    .line 231
    .local v5, "dataWords":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_4

    .line 232
    move-object/from16 v0, p1

    invoke-static {v0, v13, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v15

    aput v15, v5, v7

    .line 231
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v13, v2

    goto :goto_1

    .line 236
    :cond_4
    :try_start_0
    new-instance v15, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v15, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 237
    sub-int v16, v11, v12

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v15, 0x1

    shl-int/2addr v15, v2

    add-int/lit8 v10, v15, -0x1

    .line 245
    .local v10, "mask":I
    const/4 v14, 0x0

    .line 246
    .local v14, "stuffedBits":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_9

    .line 247
    aget v4, v5, v7

    .line 248
    .local v4, "dataWord":I
    if-eqz v4, :cond_5

    if-ne v4, v10, :cond_6

    .line 249
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 239
    .end local v4    # "dataWord":I
    .end local v10    # "mask":I
    .end local v14    # "stuffedBits":I
    :catch_0
    move-exception v15

    invoke-static {v15}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 250
    .restart local v4    # "dataWord":I
    .restart local v10    # "mask":I
    .restart local v14    # "stuffedBits":I
    :cond_6
    const/4 v15, 0x1

    if-eq v4, v15, :cond_7

    add-int/lit8 v15, v10, -0x1

    if-ne v4, v15, :cond_8

    .line 251
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 246
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    .end local v4    # "dataWord":I
    :cond_9
    mul-int v15, v12, v2

    sub-int/2addr v15, v14

    new-array v3, v15, [Z

    .line 256
    .local v3, "correctedBits":[Z
    const/4 v8, 0x0

    .line 257
    .local v8, "index":I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_e

    .line 258
    aget v4, v5, v7

    .line 259
    .restart local v4    # "dataWord":I
    const/4 v15, 0x1

    if-eq v4, v15, :cond_a

    add-int/lit8 v15, v10, -0x1

    if-ne v4, v15, :cond_c

    .line 261
    :cond_a
    add-int v15, v8, v2

    add-int/lit8 v16, v15, -0x1

    const/4 v15, 0x1

    if-le v4, v15, :cond_b

    const/4 v15, 0x1

    :goto_4
    move/from16 v0, v16

    invoke-static {v3, v8, v0, v15}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 262
    add-int/lit8 v15, v2, -0x1

    add-int/2addr v8, v15

    .line 257
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 261
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 264
    :cond_c
    add-int/lit8 v1, v2, -0x1

    .local v1, "bit":I
    move v9, v8

    .end local v8    # "index":I
    .local v9, "index":I
    :goto_6
    if-ltz v1, :cond_f

    .line 265
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/4 v15, 0x1

    shl-int/2addr v15, v1

    and-int/2addr v15, v4

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    :goto_7
    aput-boolean v15, v3, v9

    .line 264
    add-int/lit8 v1, v1, -0x1

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_6

    .line 265
    .end local v9    # "index":I
    .restart local v8    # "index":I
    :cond_d
    const/4 v15, 0x0

    goto :goto_7

    .line 269
    .end local v1    # "bit":I
    .end local v4    # "dataWord":I
    :cond_e
    return-object v3

    .end local v8    # "index":I
    .restart local v1    # "bit":I
    .restart local v4    # "dataWord":I
    .restart local v9    # "index":I
    :cond_f
    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto :goto_5
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 23
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v7

    .line 279
    .local v7, "compact":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v12

    .line 280
    .local v12, "layers":I
    if-eqz v7, :cond_0

    const/16 v20, 0xb

    :goto_0
    shl-int/lit8 v21, v12, 0x2

    add-int v4, v20, v21

    .line 281
    .local v4, "baseMatrixSize":I
    new-array v3, v4, [I

    .line 282
    .local v3, "alignmentMap":[I
    invoke-static {v12, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 284
    .local v17, "rawbits":[Z
    if-eqz v7, :cond_1

    .line 285
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 286
    aput v9, v3, v9

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 280
    .end local v3    # "alignmentMap":[I
    .end local v4    # "baseMatrixSize":I
    .end local v9    # "i":I
    .end local v17    # "rawbits":[Z
    :cond_0
    const/16 v20, 0xe

    goto :goto_0

    .line 289
    .restart local v3    # "alignmentMap":[I
    .restart local v4    # "baseMatrixSize":I
    .restart local v17    # "rawbits":[Z
    :cond_1
    add-int/lit8 v20, v4, 0x1

    div-int/lit8 v21, v4, 0x2

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v21, v21, 0xf

    mul-int/lit8 v21, v21, 0x2

    add-int v14, v20, v21

    .line 290
    .local v14, "matrixSize":I
    div-int/lit8 v16, v4, 0x2

    .line 291
    .local v16, "origCenter":I
    div-int/lit8 v5, v14, 0x2

    .line 292
    .local v5, "center":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 293
    div-int/lit8 v20, v9, 0xf

    add-int v15, v9, v20

    .line 294
    .local v15, "newOffset":I
    sub-int v20, v16, v9

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v5, v15

    add-int/lit8 v21, v21, -0x1

    aput v21, v3, v20

    .line 295
    add-int v20, v16, v9

    add-int v21, v5, v15

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v20

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 298
    .end local v5    # "center":I
    .end local v14    # "matrixSize":I
    .end local v15    # "newOffset":I
    .end local v16    # "origCenter":I
    :cond_2
    const/4 v9, 0x0

    const/16 v18, 0x0

    .local v18, "rowOffset":I
    :goto_3
    if-ge v9, v12, :cond_6

    .line 299
    sub-int v20, v12, v9

    shl-int/lit8 v21, v20, 0x2

    if-eqz v7, :cond_3

    const/16 v20, 0x9

    :goto_4
    add-int v19, v21, v20

    .line 301
    .local v19, "rowSize":I
    shl-int/lit8 v13, v9, 0x1

    .line 303
    .local v13, "low":I
    add-int/lit8 v20, v4, -0x1

    sub-int v8, v20, v13

    .line 305
    .local v8, "high":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 306
    shl-int/lit8 v6, v10, 0x1

    .line 307
    .local v6, "columnOffset":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 309
    add-int v20, v18, v6

    add-int v20, v20, v11

    add-int v21, v13, v11

    aget v21, v3, v21

    add-int v22, v13, v10

    aget v22, v3, v22

    .line 310
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 312
    mul-int/lit8 v20, v19, 0x2

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    add-int v21, v13, v10

    aget v21, v3, v21

    sub-int v22, v8, v11

    aget v22, v3, v22

    .line 313
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 315
    mul-int/lit8 v20, v19, 0x4

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v11

    aget v21, v3, v21

    sub-int v22, v8, v10

    aget v22, v3, v22

    .line 316
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 318
    mul-int/lit8 v20, v19, 0x6

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v10

    aget v21, v3, v21

    add-int v22, v13, v11

    aget v22, v3, v22

    .line 319
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 307
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 299
    .end local v6    # "columnOffset":I
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_3
    const/16 v20, 0xc

    goto/16 :goto_4

    .line 305
    .restart local v6    # "columnOffset":I
    .restart local v8    # "high":I
    .restart local v10    # "j":I
    .restart local v11    # "k":I
    .restart local v13    # "low":I
    .restart local v19    # "rowSize":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 322
    .end local v6    # "columnOffset":I
    .end local v11    # "k":I
    :cond_5
    shl-int/lit8 v20, v19, 0x3

    add-int v18, v18, v20

    .line 298
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 324
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_6
    return-object v17
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .prologue
    .line 182
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 192
    :goto_0
    return-object v0

    .line 186
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 188
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 190
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 192
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 15
    .param p0, "correctedBits"    # [Z

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0x8

    const/4 v10, 0x5

    .line 96
    array-length v2, p0

    .line 97
    .local v2, "endIndex":I
    sget-object v4, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 98
    .local v4, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 99
    .local v7, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 101
    .local v3, "index":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_7

    .line 102
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v11, :cond_4

    .line 103
    sub-int v11, v2, v3

    if-lt v11, v10, :cond_7

    .line 106
    invoke-static {p0, v3, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    .line 107
    .local v5, "length":I
    add-int/lit8 v3, v3, 0x5

    .line 108
    if-nez v5, :cond_1

    .line 109
    sub-int v11, v2, v3

    if-lt v11, v14, :cond_7

    .line 112
    invoke-static {p0, v3, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    add-int/lit8 v5, v11, 0x1f

    .line 113
    add-int/lit8 v3, v3, 0xb

    .line 115
    :cond_1
    const/4 v0, 0x0

    .local v0, "charCount":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 116
    sub-int v11, v2, v3

    if-ge v11, v13, :cond_3

    .line 117
    move v3, v2

    .line 125
    :cond_2
    move-object v7, v4

    .line 126
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {p0, v3, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 121
    .local v1, "code":I
    int-to-char v11, v1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v3, v3, 0x8

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "charCount":I
    .end local v1    # "code":I
    .end local v5    # "length":I
    :cond_4
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v7, v11, :cond_5

    const/4 v8, 0x4

    .line 128
    .local v8, "size":I
    :goto_2
    sub-int v11, v2, v3

    if-lt v11, v8, :cond_7

    .line 131
    invoke-static {p0, v3, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 132
    .restart local v1    # "code":I
    add-int/2addr v3, v8

    .line 133
    invoke-static {v7, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "str":Ljava/lang/String;
    const-string v11, "CTRL_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 139
    move-object v4, v7

    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v7

    .line 141
    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x4c

    if-ne v11, v12, :cond_0

    .line 142
    move-object v4, v7

    goto :goto_0

    .end local v1    # "code":I
    .end local v8    # "size":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 127
    goto :goto_2

    .line 145
    .restart local v1    # "code":I
    .restart local v8    # "size":I
    .restart local v9    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-object v7, v4

    goto :goto_0

    .line 151
    .end local v1    # "code":I
    .end local v8    # "size":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .prologue
    .line 158
    sparse-switch p0, :sswitch_data_0

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_0
    return-object v0

    .line 160
    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 162
    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 164
    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 166
    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 168
    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1
    .param p0, "correctedBits"    # [Z

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByte([ZI)B
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I

    .prologue
    const/16 v2, 0x8

    .line 345
    array-length v1, p0

    sub-int v0, v1, p1

    .line 346
    .local v0, "n":I
    if-lt v0, v2, :cond_0

    .line 347
    invoke-static {p0, p1, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    int-to-byte v1, v1

    .line 349
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x8

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    goto :goto_0
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "res":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 333
    shl-int/lit8 v1, v1, 0x1

    .line 334
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 335
    or-int/lit8 v1, v1, 0x1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .prologue
    .line 364
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    :goto_0
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x70

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 76
    .local v2, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v4

    .line 77
    .local v4, "rawbits":[Z
    invoke-direct {p0, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v0

    .line 78
    .local v0, "correctedBits":[Z
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v3

    .line 79
    .local v3, "rawBytes":[B
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "result":Ljava/lang/String;
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v1, v3, v5, v6, v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    array-length v6, v0

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 82
    return-object v1
.end method
