.class public Lcom/coremedia/iso/boxes/TrackBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trak"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trak"

    .line 32
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 64
    instance-of v2, v1, Lcom/coremedia/iso/boxes/MediaBox;

    if-eqz v2, :cond_0

    .line 65
    check-cast v1, Lcom/coremedia/iso/boxes/MediaBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 37
    instance-of v2, v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    if-eqz v2, :cond_0

    .line 38
    check-cast v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
