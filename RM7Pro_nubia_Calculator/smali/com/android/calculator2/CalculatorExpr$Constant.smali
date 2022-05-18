.class Lcom/android/calculator2/CalculatorExpr$Constant;
.super Lcom/android/calculator2/CalculatorExpr$Token;
.source "CalculatorExpr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constant"
.end annotation


# static fields
.field private static HAS_EXPONENT:I = 0x2

.field private static SAW_DECIMAL:I = 0x1


# instance fields
.field private mExpoBool:Z

.field private mExpoLenDiffAfterDeleted:I

.field private mExpoLenDiffPreAfterDeleted:I

.field private mExpoMinusBool:Z

.field private mExponent:I

.field private mFraction:Ljava/lang/String;

.field private mSawDecimal:Z

.field private mWhole:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    const-string v0, ""

    .line 159
    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    .line 165
    iput v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    .line 166
    iput v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    .line 170
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 171
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 172
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    .line 173
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    .line 174
    sget v1, Lcom/android/calculator2/CalculatorExpr$Constant;->SAW_DECIMAL:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    .line 176
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 179
    iput-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 181
    :goto_0
    sget v1, Lcom/android/calculator2/CalculatorExpr$Constant;->HAS_EXPONENT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    :cond_1
    return-void
.end method

.method private concatAddExponentExpr(III)Z
    .locals 9

    .line 264
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 265
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 266
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 267
    iget-object p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p3, v3

    const/4 v3, 0x1

    add-int/2addr p3, v3

    .line 268
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 269
    iget-object v5, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v3

    .line 271
    iget v6, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-nez v6, :cond_1

    if-ne p1, v1, :cond_0

    .line 273
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    :cond_0
    return v3

    .line 277
    :cond_1
    iget v6, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x2710

    const/4 v8, 0x0

    if-le v6, v7, :cond_2

    return v8

    :cond_2
    if-ne p1, v0, :cond_3

    .line 281
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto/16 :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    if-ge p1, v0, :cond_4

    .line 285
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 288
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto :goto_0

    :cond_4
    if-lt p1, v4, :cond_5

    if-gt p1, p3, :cond_5

    .line 294
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 297
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_5
    iget-object p3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 300
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 302
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    :goto_0
    return v3
.end method

.method private concatAddExponentMinusExpr(III)Z
    .locals 10

    .line 210
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 211
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 212
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 213
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    const/4 p3, 0x1

    sub-int/2addr v3, p3

    .line 214
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    .line 215
    iget-object v5, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p3

    .line 216
    iget-object v6, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, p1, v6

    sub-int/2addr v6, p3

    .line 218
    iget v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-nez v7, :cond_1

    if-ne p1, v1, :cond_0

    .line 220
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    :cond_0
    return p3

    .line 224
    :cond_1
    iget v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x2710

    const/4 v9, 0x0

    if-le v7, v8, :cond_2

    return v9

    :cond_2
    if-ne p1, v0, :cond_3

    .line 228
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto/16 :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    if-ge p1, v0, :cond_4

    .line 232
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    return v9

    :cond_5
    if-lt p1, v5, :cond_6

    if-gt p1, v4, :cond_6

    .line 244
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 247
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_0

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1, v9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 252
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    :goto_0
    return p3
.end method

.method private concatDeleteExponentExpr(II)V
    .locals 7

    .line 476
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 477
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 478
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 479
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p2, v3

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 480
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 481
    iget-object v5, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v3

    .line 483
    iget v6, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-ne p1, v0, :cond_0

    .line 486
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    if-le p1, v1, :cond_2

    .line 488
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v2, v3

    .line 489
    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 490
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    .line 493
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz p1, :cond_1

    .line 494
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    iget p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    .line 495
    iput v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    goto/16 :goto_1

    .line 497
    :cond_1
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    const/4 p1, 0x2

    .line 498
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 502
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 503
    iput v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    .line 504
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    goto/16 :goto_1

    :cond_3
    if-le p1, v4, :cond_4

    if-ge p1, p2, :cond_4

    .line 506
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 507
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    sub-int/2addr v5, v3

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_6

    move p1, v0

    .line 510
    :goto_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 511
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x30

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const-string p1, ""

    .line 514
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 515
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    goto :goto_1

    :cond_6
    if-lez p1, :cond_7

    .line 516
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p1, p2, :cond_7

    .line 517
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 518
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    sub-int/2addr p1, v3

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method private concatDeleteExponentMinusExpr(II)V
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 427
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 428
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 429
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p2, v3

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 430
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 431
    iget-object v5, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v3

    .line 433
    iget v6, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    mul-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-ne p1, v0, :cond_0

    .line 435
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x0

    if-le p1, v1, :cond_2

    if-ge p1, v0, :cond_2

    .line 437
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v2, v3

    .line 438
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 439
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    .line 442
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz p1, :cond_1

    .line 443
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    iget p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    .line 444
    iput v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    goto/16 :goto_1

    .line 446
    :cond_1
    iput-boolean v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    .line 447
    iput-boolean v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    const/4 p1, 0x3

    .line 448
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 452
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    .line 453
    iput-boolean v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    goto/16 :goto_1

    :cond_3
    if-le p1, v4, :cond_4

    if-ge p1, p2, :cond_4

    .line 455
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 456
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    sub-int/2addr v5, v3

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_6

    move p1, v7

    .line 459
    :goto_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 460
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x30

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const-string p1, ""

    .line 463
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 464
    iput-boolean v7, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    goto :goto_1

    :cond_6
    if-lez p1, :cond_7

    .line 465
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p1, p2, :cond_7

    .line 466
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 467
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    sub-int/2addr p1, v3

    invoke-virtual {v0, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method private concatDeleteFractionExpr(II)V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 530
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int p2, p1, p2

    add-int/lit8 p2, p2, -0x1

    .line 532
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 534
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    goto :goto_1

    .line 538
    :cond_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_2

    move p1, v2

    .line 542
    :goto_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 543
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x30

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 547
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 548
    iput-boolean v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    goto :goto_1

    .line 550
    :cond_2
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p1, p2, :cond_3

    if-lez p1, :cond_3

    .line 553
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 556
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public add(II)Z
    .locals 5

    const-string v0, "CalculatorExpr"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Const add in func, distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0a0098

    if-ne p1, v2, :cond_2

    .line 317
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    return v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const v2, 0x7f0a007e

    if-ne p1, v2, :cond_4

    .line 327
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    if-eqz p1, :cond_3

    return v0

    .line 332
    :cond_3
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    return v1

    :cond_4
    const v2, 0x7f0a0158

    if-ne p1, v2, :cond_6

    .line 337
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    if-eqz p1, :cond_5

    return v0

    .line 342
    :cond_5
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    return v1

    :cond_6
    const v2, 0x7f0a014f

    if-ne p1, v2, :cond_8

    .line 349
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    if-eqz p1, :cond_7

    .line 350
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    .line 351
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    return v1

    :cond_7
    return v0

    .line 358
    :cond_8
    invoke-static {p1}, Lcom/android/calculator2/KeyMaps;->digVal(I)I

    move-result p1

    const-string v2, "CalculatorExpr"

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: val = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CalculatorExpr"

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: mWhole = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a

    .line 361
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p2, :cond_9

    if-ne p2, v1, :cond_a

    :cond_9
    const-string p0, "CalculatorExpr"

    const-string p1, "Aaron: do not append, just return."

    .line 362
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 367
    :cond_a
    iget-boolean v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    if-eqz v2, :cond_16

    .line 369
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_10

    .line 371
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_b
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v0, :cond_f

    :cond_e
    const/4 v2, 0x3

    .line 377
    :cond_f
    invoke-direct {p0, p2, p1, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->concatAddExponentMinusExpr(III)Z

    move-result p0

    return p0

    .line 380
    :cond_10
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_11
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_12
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v0, :cond_15

    :cond_14
    move v1, v2

    .line 386
    :cond_15
    invoke-direct {p0, p2, p1, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->concatAddExponentExpr(III)Z

    move-result p0

    return p0

    .line 388
    :cond_16
    iget-boolean v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v2, :cond_19

    .line 389
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_18

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_17

    .line 393
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v1

    invoke-virtual {v2, p2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 395
    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2, p2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 404
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt p2, v3, :cond_1a

    .line 406
    invoke-virtual {v2, p2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 408
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1
    return v1
.end method

.method public addExponent(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 718
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v0}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    .line 719
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 720
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 721
    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    iput-boolean v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    .line 722
    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    iput v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    .line 723
    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    iput-boolean v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    .line 724
    iget-boolean p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    iput-boolean p0, v0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    return-object v0
.end method

.method public delete(II)V
    .locals 5

    const-string v0, "CalculatorExpr"

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Const delete distance == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CalculatorExpr"

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Const delete pos == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 572
    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    if-eqz p2, :cond_5

    .line 574
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 575
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez p2, :cond_3

    :cond_1
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 576
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 577
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x3

    .line 580
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->concatDeleteExponentMinusExpr(II)V

    goto/16 :goto_2

    .line 582
    :cond_5
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_a

    :cond_6
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 583
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez p2, :cond_a

    :cond_7
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 584
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez p2, :cond_a

    :cond_8
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 585
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    .line 588
    :cond_a
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->concatDeleteExponentExpr(II)V

    goto/16 :goto_2

    .line 592
    :cond_b
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_f

    .line 594
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_c

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_c

    .line 595
    invoke-direct {p0, p1, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->concatDeleteFractionExpr(II)V

    goto/16 :goto_2

    .line 596
    :cond_c
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_12

    if-le p1, v2, :cond_d

    .line 599
    :try_start_0
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    add-int/lit8 v0, p1, -0x1

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 600
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    move p1, v3

    .line 606
    :goto_1
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_e

    .line 607
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x30

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_e
    const-string p1, ""

    .line 610
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    .line 611
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    goto :goto_2

    .line 614
    :cond_f
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    if-eqz v0, :cond_10

    .line 615
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    goto :goto_2

    .line 616
    :cond_10
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v0, :cond_11

    .line 618
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    goto :goto_2

    :cond_11
    if-lez p1, :cond_12

    if-gt p1, p2, :cond_12

    const-string v0, "CalculatorExpr"

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Const delete mWhole == "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 624
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 625
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    sub-int/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 627
    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    :cond_12
    :goto_2
    return-void
.end method

.method public getExponentAfterLength()I
    .locals 0

    .line 642
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    return p0
.end method

.method public getExponentPreLength()I
    .locals 0

    .line 645
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExponentGreaterOrLessThanZero()Z
    .locals 1

    .line 638
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public kind()Lcom/android/calculator2/CalculatorExpr$TokenKind;
    .locals 0

    .line 712
    sget-object p0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-object p0
.end method

.method public setExponentAfterLength(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffAfterDeleted:I

    return-void
.end method

.method public setExponentPreLength(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoLenDiffPreAfterDeleted:I

    return-void
.end method

.method public toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 707
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorExpr$Constant;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toRational()Lcom/android/calculator2/BoundedRational;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    .line 686
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    .line 689
    :cond_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$SyntaxException;

    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr$SyntaxException;-><init>()V

    throw p0

    .line 694
    :cond_1
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 695
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 696
    iget v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-lez v2, :cond_2

    .line 697
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    iget v3, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 699
    :cond_2
    iget v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-gez v2, :cond_3

    .line 700
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    neg-int p0, p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 702
    :cond_3
    new-instance p0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {p0, v1, v0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 665
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_0
    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v1, :cond_1

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_1
    iget v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz v1, :cond_2

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "E"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_2
    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/calculator2/CalculatorExpr$Constant;->SAW_DECIMAL:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz v2, :cond_1

    sget v1, Lcom/android/calculator2/CalculatorExpr$Constant;->HAS_EXPONENT:I

    :cond_1
    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 190
    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 191
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mWhole:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 192
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoBool:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 194
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExpoMinusBool:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 195
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mSawDecimal:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mFraction:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 198
    :cond_2
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    if-eqz v0, :cond_3

    .line 199
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;->mExponent:I

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_3
    return-void
.end method
