.class public Lorg/apache/commons/lang/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-byte p1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 77
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "operand"    # B

    .prologue
    .line 136
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 137
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 147
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 148
    return-void
.end method

.method public byteValue()B
    .locals 1

    .prologue
    .line 179
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 262
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/mutable/MutableByte;

    .line 263
    .local v1, "other":Lorg/apache/commons/lang/mutable/MutableByte;
    iget-byte v0, v1, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 264
    .local v0, "anotherVal":B
    iget-byte v2, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    if-ge v2, v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-byte v2, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    if-ne v2, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 125
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 126
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 238
    instance-of v1, p1, Lorg/apache/commons/lang/mutable/MutableByte;

    if-eqz v1, :cond_0

    .line 239
    iget-byte v1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    check-cast p1, Lorg/apache/commons/lang/mutable/MutableByte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang/mutable/MutableByte;->byteValue()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 206
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Byte;

    iget-byte v1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 250
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 116
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 117
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 188
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 95
    iput-byte p1, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableByte;->setValue(B)V

    .line 107
    return-void
.end method

.method public subtract(B)V
    .locals 1
    .param p1, "operand"    # B

    .prologue
    .line 157
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 158
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 168
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    .line 169
    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableByte;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-byte v0, p0, Lorg/apache/commons/lang/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
