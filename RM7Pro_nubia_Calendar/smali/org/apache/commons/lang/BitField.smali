.class public Lorg/apache/commons/lang/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "mask"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "count":I
    move v0, p1

    .line 49
    .local v0, "bit_pattern":I
    if-eqz v0, :cond_0

    .line 50
    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    .line 56
    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1
    .param p1, "holder"    # I

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .locals 1
    .param p1, "holder"    # I

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .locals 2
    .param p1, "holder"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .locals 2
    .param p1, "holder"    # I

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "holder"    # I

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)I
    .locals 1
    .param p1, "holder"    # I

    .prologue
    .line 223
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .locals 1
    .param p1, "holder"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 261
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    goto :goto_0
.end method

.method public setByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .locals 1
    .param p1, "holder"    # B
    .param p2, "flag"    # Z

    .prologue
    .line 287
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->setByte(B)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clearByte(B)B

    move-result v0

    goto :goto_0
.end method

.method public setShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "flag"    # Z

    .prologue
    .line 274
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->setShort(S)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clearShort(S)S

    move-result v0

    goto :goto_0
.end method

.method public setShortValue(SS)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "value"    # S

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .locals 3
    .param p1, "holder"    # I
    .param p2, "value"    # I

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    shl-int v1, p2, v1

    iget v2, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
