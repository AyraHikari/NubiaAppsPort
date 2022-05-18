.class public Lcom/coremedia/iso/boxes/SampleTableBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SampleTableBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stbl"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stbl"

    .line 40
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 72
    instance-of v2, v1, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    if-eqz v2, :cond_0

    .line 73
    check-cast v1, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 108
    instance-of v2, v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 117
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    if-eqz v2, :cond_0

    .line 118
    check-cast v1, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 45
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 54
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    if-eqz v2, :cond_0

    .line 55
    check-cast v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 63
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    if-eqz v2, :cond_0

    .line 64
    check-cast v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 99
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SyncSampleBox;

    if-eqz v2, :cond_0

    .line 100
    check-cast v1, Lcom/coremedia/iso/boxes/SyncSampleBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 90
    instance-of v2, v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChunkOffsetBox(Lcom/coremedia/iso/boxes/ChunkOffsetBox;)V
    .locals 2

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 82
    instance-of v1, v1, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
