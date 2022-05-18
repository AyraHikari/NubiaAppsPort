.class public Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v0, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 2
    new-instance p0, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v0

    const-class v1, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TrackBox;

    .line 5
    new-instance v2, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;

    invoke-direct {v2, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
