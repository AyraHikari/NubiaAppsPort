.class public Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pair"
.end annotation


# instance fields
.field public clear:I

.field public encrypted:J

.field final synthetic this$1:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->this$1:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    .line 3
    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    .line 3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    iget-wide v4, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
