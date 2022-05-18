.class public Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return p0
.end method


# virtual methods
.method public getReserved()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSampleIsDependentOn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public setReserved(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x6

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v0, v0, 0xcf

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x3

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v0, v0, 0xfc

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public setSampleIsDependentOn(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x2

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    and-int/lit16 v0, v0, 0xf3

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getReserved()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleDependsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleIsDependentOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleIsDependentOn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleHasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleHasRedundancy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
