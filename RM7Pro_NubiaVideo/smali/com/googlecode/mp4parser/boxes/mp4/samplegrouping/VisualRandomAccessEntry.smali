.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rap "


# instance fields
.field private numLeadingSamples:S

.field private numLeadingSamplesKnown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;

    .line 3
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    iget-short v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    iget-boolean p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getNumLeadingSamples()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    add-int/2addr v0, v1

    return v0
.end method

.method public isNumLeadingSamplesKnown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    and-int/lit8 p1, p1, 0x7f

    int-to-short p1, p1

    .line 3
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    return-void
.end method

.method public setNumLeadingSamples(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    return-void
.end method

.method public setNumLeadingSamplesKnown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualRandomAccessEntry"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numLeadingSamplesKnown="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamplesKnown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", numLeadingSamples="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/VisualRandomAccessEntry;->numLeadingSamples:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
