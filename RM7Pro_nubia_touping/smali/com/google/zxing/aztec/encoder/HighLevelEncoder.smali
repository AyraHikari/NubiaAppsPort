.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 43
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "UPPER"

    aput-object v5, v4, v6

    const-string v5, "LOWER"

    aput-object v5, v4, v10

    const-string v5, "DIGIT"

    aput-object v5, v4, v11

    const/4 v5, 0x3

    const-string v7, "MIXED"

    aput-object v7, v4, v5

    const-string v5, "PUNCT"

    aput-object v5, v4, v12

    sput-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 56
    new-array v4, v8, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v6

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_3

    aput-object v7, v4, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v12

    sput-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 97
    const/16 v4, 0x100

    filled-new-array {v8, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 99
    sput-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v6

    const/16 v5, 0x20

    aput v10, v4, v5

    .line 100
    const/16 v0, 0x41

    .local v0, "c":I
    :goto_0
    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    .line 101
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v6

    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0x2

    aput v5, v4, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v10

    const/16 v5, 0x20

    aput v10, v4, v5

    .line 104
    const/16 v0, 0x61

    :goto_1
    const/16 v4, 0x7a

    if-gt v0, v4, :cond_1

    .line 105
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v10

    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0x2

    aput v5, v4, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v11

    const/16 v5, 0x20

    aput v10, v4, v5

    .line 108
    const/16 v0, 0x30

    :goto_2
    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 109
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v11

    add-int/lit8 v5, v0, -0x30

    add-int/lit8 v5, v5, 0x2

    aput v5, v4, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    :cond_2
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v11

    const/16 v5, 0x2c

    const/16 v7, 0xc

    aput v7, v4, v5

    .line 112
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v11

    const/16 v5, 0x2e

    const/16 v7, 0xd

    aput v7, v4, v5

    .line 113
    const/16 v4, 0x1c

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    .line 118
    .local v2, "mixedTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v4, 0x1c

    if-ge v1, v4, :cond_3

    .line 119
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget v5, v2, v1

    aput v1, v4, v5

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 121
    :cond_3
    const/16 v4, 0x1f

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    .line 126
    .local v3, "punctTable":[I
    const/4 v1, 0x0

    :goto_4
    const/16 v4, 0x1f

    if-ge v1, v4, :cond_5

    .line 127
    aget v4, v3, v1

    if-lez v4, :cond_4

    .line 128
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v12

    aget v5, v3, v1

    aput v1, v4, v5

    .line 126
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    :cond_5
    const/4 v4, 0x6

    const/4 v5, 0x6

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 137
    sput-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v7, v4

    move v5, v6

    :goto_5
    if-ge v5, v7, :cond_6

    aget-object v8, v4, v5

    .line 138
    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 140
    :cond_6
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v4, v4, v6

    aput v6, v4, v12

    .line 142
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v4, v4, v10

    aput v6, v4, v12

    .line 143
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v4, v4, v10

    const/16 v5, 0x1c

    aput v5, v4, v6

    .line 145
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aput v6, v4, v12

    .line 147
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v4, v4, v11

    aput v6, v4, v12

    .line 148
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v4, v4, v11

    const/16 v5, 0xf

    aput v5, v4, v6

    .line 149
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_1
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_2
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_3
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_4
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    .line 113
    :array_5
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 121
    :array_6
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "text"    # [B

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 155
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 288
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 289
    .local v2, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v0, 0x1

    .line 290
    .local v0, "add":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 292
    .local v3, "oldState":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 293
    const/4 v0, 0x0

    .line 300
    .end local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .restart local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 304
    .end local v0    # "add":Z
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    .end local v2    # "newState":Lcom/google/zxing/aztec/encoder/State;
    .end local v3    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_4
    return-object v4
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 10
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v8, v8, p2

    and-int/lit16 v8, v8, 0xff

    int-to-char v1, v8

    .line 218
    .local v1, "ch":C
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-lez v8, :cond_4

    const/4 v2, 0x1

    .line 219
    .local v2, "charInCurrentTable":Z
    :goto_0
    const/4 v7, 0x0

    .line 220
    .local v7, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v5, 0x0

    .local v5, "mode":I
    :goto_1
    const/4 v8, 0x4

    if-gt v5, v8, :cond_5

    .line 221
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v5

    aget v3, v8, v1

    .line 222
    .local v3, "charInMode":I
    if-lez v3, :cond_3

    .line 223
    if-nez v7, :cond_0

    .line 225
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    .line 228
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v8

    if-eq v5, v8, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 233
    :cond_1
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 234
    .local v4, "latchState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v4    # "latchState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    if-nez v2, :cond_3

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v5

    if-ltz v8, :cond_3

    .line 240
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    .line 241
    .local v6, "shiftState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v6    # "shiftState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 218
    .end local v2    # "charInCurrentTable":Z
    .end local v3    # "charInMode":I
    .end local v5    # "mode":I
    .end local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 245
    .restart local v2    # "charInCurrentTable":Z
    .restart local v5    # "mode":I
    .restart local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v8

    if-gtz v8, :cond_6

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-nez v8, :cond_7

    .line 249
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 250
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v0    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_7
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 6
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 265
    .local v2, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 269
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    .line 273
    :cond_1
    rsub-int/lit8 v3, p2, 0x10

    .line 274
    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    const/4 v4, 0x1

    .line 275
    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 276
    .local v1, "digitState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "digitState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 282
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v0    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 208
    .local v1, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0

    .line 210
    .end local v1    # "state":Lcom/google/zxing/aztec/encoder/State;
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 3
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 257
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    .line 161
    sget-object v5, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 164
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v6, v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v1, v5, v6

    .line 165
    .local v1, "nextChar":I
    :goto_1
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v5, v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, "pairCode":I
    :goto_2
    if-lez v2, :cond_5

    .line 184
    invoke-static {v3, v0, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v3

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 162
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "nextChar":I
    .end local v2    # "pairCode":I
    :cond_0
    move v1, v4

    .line 164
    goto :goto_1

    .line 167
    .restart local v1    # "nextChar":I
    :sswitch_0
    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    const/4 v2, 0x2

    .line 168
    .restart local v2    # "pairCode":I
    :goto_4
    goto :goto_2

    .end local v2    # "pairCode":I
    :cond_1
    move v2, v4

    .line 167
    goto :goto_4

    .line 170
    :sswitch_1
    if-ne v1, v7, :cond_2

    const/4 v2, 0x3

    .line 171
    .restart local v2    # "pairCode":I
    :goto_5
    goto :goto_2

    .end local v2    # "pairCode":I
    :cond_2
    move v2, v4

    .line 170
    goto :goto_5

    .line 173
    :sswitch_2
    if-ne v1, v7, :cond_3

    const/4 v2, 0x4

    .line 174
    .restart local v2    # "pairCode":I
    :goto_6
    goto :goto_2

    .end local v2    # "pairCode":I
    :cond_3
    move v2, v4

    .line 173
    goto :goto_6

    .line 176
    :sswitch_3
    if-ne v1, v7, :cond_4

    const/4 v2, 0x5

    .line 177
    .restart local v2    # "pairCode":I
    :goto_7
    goto :goto_2

    .end local v2    # "pairCode":I
    :cond_4
    move v2, v4

    .line 176
    goto :goto_7

    .line 188
    .restart local v2    # "pairCode":I
    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v3

    goto :goto_3

    .line 192
    .end local v1    # "nextChar":I
    .end local v2    # "pairCode":I
    :cond_6
    new-instance v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v4, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/aztec/encoder/State;

    .line 199
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v4, v5}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    return-object v4

    .line 165
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x2c -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_3
    .end sparse-switch
.end method
