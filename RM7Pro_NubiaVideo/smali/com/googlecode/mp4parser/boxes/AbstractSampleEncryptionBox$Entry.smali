.class public Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    }
.end annotation


# instance fields
.field public iv:[B

.field public pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPair(IJ)Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    .locals 1

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 3
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    iget v0, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v0, v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    .line 2
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
