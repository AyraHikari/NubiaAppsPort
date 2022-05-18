.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieFragmentBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "moof"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "moof"

    .line 36
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 6
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    const-wide/16 v0, 0x0

    move-object v2, p0

    .line 59
    :goto_0
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 60
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getSyncSamples(Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    .line 46
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTrackCount()I
    .locals 2

    .line 73
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackFragmentHeaderBoxes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;",
            ">;"
        }
    .end annotation

    .line 94
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNumbers()[J
    .locals 5

    .line 84
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 88
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getTrackRunBoxes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox;",
            ">;"
        }
    .end annotation

    .line 98
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
