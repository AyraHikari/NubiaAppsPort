.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
.super Ljava/lang/Object;
.source "SampleToGroupBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private groupDescriptionIndex:I

.field private sampleCount:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    .line 95
    iput p3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

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

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    .line 133
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    if-eq v2, v3, :cond_2

    return v1

    .line 136
    :cond_2
    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    iget-wide v4, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getGroupDescriptionIndex()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    return v0
.end method

.method public getSampleCount()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 145
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setGroupDescriptionIndex(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    return-void
.end method

.method public setSampleCount(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->sampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupDescriptionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->groupDescriptionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
