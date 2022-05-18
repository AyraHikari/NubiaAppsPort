.class public final Lorg/apache/commons/lang/math/IntRange;
.super Lorg/apache/commons/lang/math/Range;
.source "IntRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9faL


# instance fields
.field private transient hashCode:I

.field private final max:I

.field private transient maxObject:Ljava/lang/Integer;

.field private final min:I

.field private transient minObject:Ljava/lang/Integer;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 73
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 74
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "number1"    # I
    .param p2, "number2"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 109
    if-ge p2, p1, :cond_0

    .line 110
    iput p2, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 111
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 114
    iput p2, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 91
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 92
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 93
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "number":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 95
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 4
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v3, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 55
    iput-object v3, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 63
    iput-object v3, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The numbers must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 135
    .local v0, "number1val":I
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 136
    .local v1, "number2val":I
    if-ge v1, v0, :cond_4

    .line 137
    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 138
    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 139
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 140
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "number2":Ljava/lang/Number;
    iput-object p2, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 142
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 143
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "number1":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 155
    :cond_3
    :goto_0
    return-void

    .line 146
    .restart local p1    # "number1":Ljava/lang/Number;
    .restart local p2    # "number2":Ljava/lang/Number;
    :cond_4
    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    .line 147
    iput v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    .line 148
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "number1":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 151
    :cond_5
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 152
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "number2":Ljava/lang/Number;
    iput-object p2, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public containsInteger(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .prologue
    const/4 v0, 0x0

    .line 304
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    if-ne p1, p0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/lang/math/IntRange;

    if-nez v3, :cond_2

    move v1, v2

    .line 345
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 347
    check-cast v0, Lorg/apache/commons/lang/math/IntRange;

    .line 348
    .local v0, "range":Lorg/apache/commons/lang/math/IntRange;
    iget v3, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    iget v4, v0, Lorg/apache/commons/lang/math/IntRange;->min:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    iget v4, v0, Lorg/apache/commons/lang/math/IntRange;->max:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMaximumDouble()D
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    return v0
.end method

.method public getMaximumLong()J
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->maxObject:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinimumDouble()D
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    return v0
.end method

.method public getMinimumLong()J
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/IntRange;->minObject:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    if-nez v0, :cond_0

    .line 358
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 359
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 360
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 361
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    .line 363
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/math/IntRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .prologue
    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/IntRange;->containsInteger(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toArray()[I
    .locals 4

    .prologue
    .line 393
    iget v2, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    iget v3, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    .line 394
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 395
    iget v2, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    add-int/2addr v2, v1

    aput v2, v0, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 375
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 376
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 377
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->min:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 378
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 379
    iget v1, p0, Lorg/apache/commons/lang/math/IntRange;->max:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 380
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 381
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    .line 383
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/math/IntRange;->toString:Ljava/lang/String;

    return-object v1
.end method
