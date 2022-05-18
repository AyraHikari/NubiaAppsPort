.class public Lcom/google/zxing/oned/rss/DataCharacter;
.super Ljava/lang/Object;
.source "DataCharacter.java"


# instance fields
.field private final checksumPortion:I

.field private final value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "checksumPortion"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 29
    iput p2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v2, p1, Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 51
    .local v0, "that":Lcom/google/zxing/oned/rss/DataCharacter;
    iget v2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    iget v3, v0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    iget v3, v0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getChecksumPortion()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
