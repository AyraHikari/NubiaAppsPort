.class public Lcom/hpplay/sdk/source/protocol/encrypt/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/ByteOrder;

.field private static d:I


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    .line 30
    const/high16 v0, 0x200000

    sput v0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->c:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public static a([BIII)Lcom/hpplay/sdk/source/protocol/encrypt/h;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/h;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;-><init>()V

    move v1, v2

    .line 39
    :goto_0
    if-ge v1, p2, :cond_0

    .line 41
    const-string v3, "tlvp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "src  len --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  parsed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    add-int v3, p1, v1

    invoke-static {p0, v3, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 43
    add-int/lit8 v1, v1, 0x4

    .line 44
    add-int v4, p1, v1

    invoke-static {p0, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 45
    add-int/lit8 v1, v1, 0x4

    .line 47
    sget v5, Lcom/hpplay/sdk/source/protocol/encrypt/h;->d:I

    if-le v4, v5, :cond_1

    .line 48
    const-string v2, "tlvp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dst size  --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  parsed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " type  : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-object v0

    .line 51
    :cond_1
    new-array v5, v4, [B

    .line 52
    add-int v6, p1, v1

    invoke-static {p0, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-virtual {v0, v3, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 54
    add-int/2addr v1, v4

    .line 55
    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/Byte;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 125
    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IB)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 81
    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 83
    return-void
.end method

.method public a(ID)V
    .locals 2

    .prologue
    .line 106
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 108
    return-void
.end method

.method public a(IF)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 103
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 93
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 96
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 98
    return-void
.end method

.method public a(ILcom/hpplay/sdk/source/protocol/encrypt/h;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 116
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 112
    return-void
.end method

.method public a(IS)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 88
    return-void
.end method

.method public a(I[B)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->c:I

    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->c:I

    .line 121
    return-void
.end method

.method public a()[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    .line 60
    .line 61
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->c:I

    new-array v4, v0, [B

    .line 62
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 67
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 68
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 69
    array-length v7, v0

    invoke-static {v0, v3, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    add-int/lit8 v0, v2, 0x4

    .line 71
    array-length v2, v6

    invoke-static {v6, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int/lit8 v0, v0, 0x4

    .line 73
    array-length v2, v1

    invoke-static {v1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v1, v1

    add-int/2addr v0, v1

    move v2, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-object v4
.end method

.method public b(I)Ljava/lang/Short;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 133
    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 141
    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 149
    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public e(I)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 157
    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public f(I)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 165
    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public g(I)Lcom/hpplay/sdk/source/protocol/encrypt/h;
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 173
    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a([BIII)Lcom/hpplay/sdk/source/protocol/encrypt/h;

    move-result-object v0

    goto :goto_0
.end method

.method public h(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 181
    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i(I)[B
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/h;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 189
    return-object v0
.end method
