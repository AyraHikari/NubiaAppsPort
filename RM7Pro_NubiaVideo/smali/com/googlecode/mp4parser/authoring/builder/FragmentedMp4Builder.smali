.class public Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Mp4Builder;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-void
.end method

.method private getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide p1

    div-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v0}, Lcom/coremedia/iso/IsoFile;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 6
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method protected createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 2
    new-instance p2, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 3
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    new-instance v0, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/FullContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object p1
.end method

.method public createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 4

    .line 1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "isom"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "iso2"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "avc1"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method protected createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 9

    .line 1
    new-instance v8, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;I)V

    return-object v8
.end method

.method protected createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 2
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(J)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 4
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 5
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    return-object p1
.end method

.method protected createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method protected createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 0

    .line 1
    new-instance p2, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    return-object p2
.end method

.method protected createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;-><init>()V

    int-to-long p2, p6

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->setSequenceNumber(J)V

    return-object p1
.end method

.method protected createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Track;

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 6
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->setMfraSize(J)V

    return-object v0
.end method

.method protected createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method protected createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTraf(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackRunBoxes()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 6
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide p2

    const-wide/16 p4, 0x8

    add-long/2addr p2, p4

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    return-object v0
.end method

.method protected createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            ")",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 4
    iget-object v3, v7, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-object/from16 v11, p1

    invoke-interface {v3, v2, v11}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v3

    .line 5
    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    array-length v2, v3

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    const/4 v12, 0x1

    move v13, v1

    move v0, v12

    :goto_1
    if-ge v13, v10, :cond_5

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1, v13, v9}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    :cond_1
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/googlecode/mp4parser/authoring/Track;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getAllowedHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getAllowedHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 11
    array-length v1, v0

    if-ge v13, v1, :cond_1

    .line 12
    aget-wide v16, v0, v13

    add-int/lit8 v1, v13, 0x1

    .line 13
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-wide v1, v0, v1

    move-wide/from16 v18, v1

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v12

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_3
    cmp-long v0, v16, v18

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    move-object v5, v6

    move-object/from16 v20, v6

    move v6, v15

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v20

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v15, v21

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move v0, v15

    goto :goto_1

    :cond_5
    return-object v8
.end method

.method protected createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 5
    invoke-virtual {p0, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 7

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;-><init>()V

    .line 2
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 4
    invoke-direct {p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v3

    .line 5
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getFragmentDuration()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    .line 6
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setFragmentDuration(J)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 8
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 9
    invoke-virtual {p0, p1, v2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 13

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(J)V

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(J)V

    .line 5
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/Track;

    .line 7
    invoke-virtual {p0, v8}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v9

    mul-long/2addr v9, v1

    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v11

    div-long/2addr v9, v11

    cmp-long v8, v9, v6

    if-lez v8, :cond_0

    move-wide v6, v9

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 10
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Track;

    .line 11
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v1

    move-wide v4, v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x1

    add-long/2addr v4, v1

    .line 12
    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    return-object v0
.end method

.method protected createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 2
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    new-instance p2, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    new-instance p2, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object p1
.end method

.method protected createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;-><init>()V

    .line 2
    new-instance p2, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 3
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    const-wide/16 p2, -0x1

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setBaseDataOffset(J)V

    .line 5
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    return-object p1
.end method

.method protected createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;
    .locals 31

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/coremedia/iso/boxes/Box;

    .line 6
    instance-of v7, v14, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    if-eqz v7, :cond_a

    .line 7
    move-object v7, v14

    check-cast v7, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v8, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v15

    const/4 v13, 0x0

    .line 8
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_a

    .line 9
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 10
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 11
    const-class v8, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    .line 12
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-ge v11, v7, :cond_9

    .line 13
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 14
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-wide/from16 v17, v5

    const/4 v9, 0x0

    .line 15
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_7

    .line 16
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    const/4 v5, 0x0

    if-nez v9, :cond_0

    .line 17
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v5

    goto :goto_5

    .line 19
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v5

    goto :goto_5

    .line 21
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v6

    const-class v7, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-virtual {v6, v7}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 22
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 23
    const-class v12, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v7, v12}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 24
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 25
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v21

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_3

    .line 26
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v5

    goto :goto_4

    :cond_4
    :goto_5
    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getSampleDependsOn()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 28
    new-instance v12, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    add-int/lit8 v5, v13, 0x1

    int-to-long v6, v5

    add-int/lit8 v5, v11, 0x1

    move/from16 v22, v13

    move-object/from16 v21, v14

    int-to-long v13, v5

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    int-to-long v0, v5

    move-object v5, v12

    move-wide/from16 v25, v6

    move-wide/from16 v6, v17

    move-object/from16 v27, v2

    move-object v2, v8

    move/from16 v28, v9

    move-wide v8, v3

    move-object/from16 v30, v10

    move/from16 v29, v11

    move-wide/from16 v10, v25

    move-wide/from16 v25, v3

    move-object v3, v12

    move/from16 v20, v22

    const/4 v4, 0x0

    move-wide v12, v13

    move-object/from16 v22, v15

    move-wide v14, v0

    invoke-direct/range {v5 .. v15}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;-><init>(JJJJJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v27, v2

    move-wide/from16 v25, v3

    move-object v2, v8

    move/from16 v28, v9

    move-object/from16 v30, v10

    move/from16 v29, v11

    move/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v4, 0x0

    .line 29
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v0

    add-long v17, v17, v0

    add-int/lit8 v9, v28, 0x1

    move-object v8, v2

    move/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v3, v25

    move-object/from16 v2, v27

    move/from16 v11, v29

    move-object/from16 v10, v30

    goto/16 :goto_3

    .line 30
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find any SampleFlags to indicate random access or not"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v27, v2

    move-wide/from16 v25, v3

    move-object v2, v8

    move-object/from16 v30, v10

    move/from16 v29, v11

    move/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v4, 0x0

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v1, v24

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_7
    add-int/lit8 v11, v29, 0x1

    move-wide/from16 v5, v17

    move/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    move-wide/from16 v3, v25

    move-object/from16 v2, v27

    move-object/from16 v10, v30

    goto/16 :goto_2

    :cond_9
    move-object/from16 v23, v0

    move-object/from16 v27, v2

    move-wide/from16 v25, v3

    move/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v4, 0x0

    add-int/lit8 v13, v20, 0x1

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v0, v23

    move-wide/from16 v3, v25

    move-object/from16 v2, v27

    goto/16 :goto_1

    :cond_a
    move-object/from16 v23, v0

    move-object/from16 v27, v2

    move-wide/from16 v25, v3

    move-object/from16 v21, v14

    .line 34
    invoke-interface/range {v21 .. v21}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v2

    add-long v3, v25, v2

    move-object/from16 v0, v23

    move-object/from16 v2, v27

    goto/16 :goto_0

    .line 35
    :cond_b
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setEntries(Ljava/util/List;)V

    .line 36
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setTrackId(J)V

    return-object v0
.end method

.method protected createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    .line 3
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 5
    :cond_1
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    .line 6
    :cond_2
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x8

    .line 7
    :cond_3
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    .line 8
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 9
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(J)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 11
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getHeight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 12
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getWidth()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 13
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLayer()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 14
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(J)V

    .line 15
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 16
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getVolume()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    return-object v0
.end method

.method protected createTraf(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTruns(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coremedia/iso/boxes/Box;

    .line 4
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method protected createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;-><init>()V

    .line 2
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setTrackId(J)V

    const-wide/16 v0, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDescriptionIndex(J)V

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDuration(J)V

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleSize(J)V

    .line 6
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 7
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object p2

    const-string v1, "soun"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 8
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    return-object p1
.end method

.method protected createTruns(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "I)",
            "Ljava/util/List<",
            "+",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleDurationPresent(Z)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleSizePresent(Z)V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    sub-long v4, p3, p1

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v4, Ljava/util/LinkedList;

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-wide/16 v5, 0x1

    sub-long v7, p1, v5

    .line 7
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v9

    :goto_0
    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    sub-long/2addr v7, v9

    .line 8
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 9
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v9

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v7

    .line 10
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Ljava/util/LinkedList;

    .line 11
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 12
    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v8

    int-to-long v11, v8

    goto :goto_2

    :cond_2
    const-wide/16 v11, -0x1

    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    const/4 v15, 0x0

    if-lez v8, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    move v8, v15

    .line 13
    :goto_3
    invoke-virtual {v0, v8}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleCompositionTimeOffsetPresent(Z)V

    move-wide/from16 v16, v5

    :goto_4
    cmp-long v8, v16, p1

    if-gez v8, :cond_5

    if-eqz v7, :cond_4

    sub-long/2addr v11, v5

    cmp-long v8, v11, v13

    if-nez v8, :cond_4

    .line 14
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v8

    if-le v8, v2, :cond_4

    .line 15
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 16
    invoke-interface {v7}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v8

    int-to-long v11, v8

    :cond_4
    add-long v16, v16, v5

    goto :goto_4

    .line 17
    :cond_5
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 18
    :cond_6
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_8

    :cond_7
    move v8, v2

    goto :goto_5

    :cond_8
    move v8, v15

    .line 19
    :goto_5
    invoke-virtual {v0, v8}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleFlagsPresent(Z)V

    move v13, v15

    .line 20
    :goto_6
    array-length v14, v1

    if-ge v13, v14, :cond_11

    .line 21
    new-instance v14, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v14}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 22
    aget-wide v5, v1, v13

    invoke-virtual {v14, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleSize(J)V

    if-eqz v8, :cond_c

    .line 23
    new-instance v5, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 24
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 25
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    .line 26
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 27
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleIsDependentOn()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 28
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleHasRedundancy()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleHasRedundancy(I)V

    .line 29
    :cond_9
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_b

    .line 30
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    move-object v6, v0

    move-object/from16 v18, v1

    int-to-long v0, v13

    add-long v0, p1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_a

    .line 31
    invoke-virtual {v5, v15}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    const/4 v0, 0x2

    .line 32
    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    goto :goto_7

    :cond_a
    const/4 v0, 0x1

    .line 33
    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 34
    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    goto :goto_7

    :cond_b
    move-object v6, v0

    move-object/from16 v18, v1

    .line 35
    :goto_7
    invoke-virtual {v14, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    goto :goto_8

    :cond_c
    move-object v6, v0

    move-object/from16 v18, v1

    .line 36
    :goto_8
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleDuration(J)V

    const-wide/16 v0, 0x1

    sub-long/2addr v9, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-nez v2, :cond_d

    .line 37
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 38
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 39
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v0

    move-wide v9, v0

    :cond_d
    if-eqz v7, :cond_f

    .line 40
    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleCompositionTimeOffset(I)V

    const-wide/16 v0, 0x1

    sub-long/2addr v11, v0

    const-wide/16 v16, 0x0

    cmp-long v2, v11, v16

    if-nez v2, :cond_e

    .line 41
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_10

    .line 42
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 43
    invoke-interface {v7}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v2

    int-to-long v11, v2

    goto :goto_9

    :cond_e
    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const-wide/16 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v16, 0x0

    .line 44
    :cond_10
    :goto_9
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move v2, v5

    move-wide/from16 v19, v0

    move-object v0, v6

    move-wide/from16 v5, v19

    move-object/from16 v1, v18

    goto/16 :goto_6

    :cond_11
    move-object v6, v0

    .line 45
    invoke-virtual {v6, v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setEntries(Ljava/util/List;)V

    .line 46
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "soun"

    const-string v1, "vide"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 2
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-object v0
.end method

.method protected getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p3, p2, [J

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    .line 3
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    int-to-long p5, p5

    aput-wide p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method protected getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "I)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object p5

    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p5, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-void
.end method

.method protected sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;I",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[J>;)",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;Ljava/util/Map;I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
