.class public final Lorg/apache/commons/lang/NumberRange;
.super Ljava/lang/Object;
.source "NumberRange.java"


# instance fields
.field private final max:Ljava/lang/Number;

.field private final min:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Number;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    .line 60
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 4
    .param p1, "min"    # Ljava/lang/Number;
    .param p2, "max"    # Ljava/lang/Number;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The minimum value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The maximum value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 83
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    .line 86
    iput-object p2, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p1, p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/lang/NumberRange;

    if-nez v3, :cond_2

    move v1, v2

    .line 170
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 172
    check-cast v0, Lorg/apache/commons/lang/NumberRange;

    .line 173
    .local v0, "range":Lorg/apache/commons/lang/NumberRange;
    iget-object v3, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    iget-object v4, v0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    iget-object v4, v0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMaximum()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 183
    const/16 v0, 0x11

    .line 184
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 185
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    return v0
.end method

.method public includesNumber(Ljava/lang/Number;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public includesRange(Lorg/apache/commons/lang/NumberRange;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/NumberRange;

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public overlaps(Lorg/apache/commons/lang/NumberRange;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/NumberRange;

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/NumberRange;->includesRange(Lorg/apache/commons/lang/NumberRange;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    const-wide/16 v4, 0x0

    .line 199
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 201
    .local v0, "sb":Lorg/apache/commons/lang/text/StrBuilder;
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 202
    invoke-virtual {v0, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 209
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 211
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 212
    invoke-virtual {v0, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 219
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1
.end method
