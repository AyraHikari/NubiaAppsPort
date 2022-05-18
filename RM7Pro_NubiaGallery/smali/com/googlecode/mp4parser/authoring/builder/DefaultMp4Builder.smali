.class public Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Mp4Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field public STEPSIZE:I

.field chunkOffsetBoxes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;",
            ">;"
        }
    .end annotation
.end field

.field private intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

.field track2Sample:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 71
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-void
.end method

.method private createMovieBox(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 14

    .line 140
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 141
    new-instance v1, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 143
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(J)V

    .line 144
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(J)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J

    move-result-wide v2

    .line 149
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/Track;

    .line 150
    invoke-static {v9}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v10

    mul-long/2addr v10, v2

    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v12

    div-long/2addr v10, v12

    cmp-long v9, v10, v7

    if-lez v9, :cond_0

    move-wide v7, v10

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v1, v7, v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 162
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 163
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-gez v4, :cond_2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    .line 165
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 166
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getCreationTime()J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 167
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getModificationTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 168
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 169
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 172
    :cond_5
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 173
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 174
    invoke-direct {p0, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createTrackBox(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createUdta(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 179
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_7
    return-object v0
.end method

.method private createTrackBox(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 196
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating Mp4TrackImpl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 197
    new-instance v3, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 198
    new-instance v4, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 200
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 204
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x2

    .line 208
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x4

    .line 212
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x8

    .line 215
    :cond_3
    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getGroup()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 218
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(J)V

    .line 222
    invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v8

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v10

    div-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 223
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getHeight()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 224
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getWidth()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 225
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLayer()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 226
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(J)V

    .line 227
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getVolume()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 229
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getMatrix()[J

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix([J)V

    .line 230
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getCreationTime()J

    move-result-wide v8

    const-wide v10, 0x100000000L

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    .line 231
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getModificationTime()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    .line 232
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getDuration()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-ltz v5, :cond_5

    .line 233
    :cond_4
    invoke-virtual {v4, v7}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 236
    :cond_5
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 247
    new-instance v4, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 248
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 249
    new-instance v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 250
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(J)V

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 252
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 253
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 255
    new-instance v5, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 256
    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 258
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 260
    new-instance v5, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 261
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 265
    new-instance v8, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 266
    new-instance v9, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 267
    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 268
    new-instance v10, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 269
    invoke-virtual {v10, v7}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 270
    invoke-virtual {v9, v10}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 271
    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 274
    new-instance v7, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 276
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 278
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 279
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 280
    new-instance v8, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 281
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 282
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 285
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 286
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 287
    new-instance v9, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V

    .line 288
    invoke-virtual {v9, v8}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V

    .line 289
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 292
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    if-eqz v8, :cond_8

    .line 293
    array-length v9, v8

    if-lez v9, :cond_8

    .line 294
    new-instance v9, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 295
    invoke-virtual {v9, v8}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 296
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 299
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 300
    new-instance v8, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;-><init>()V

    .line 301
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->setEntries(Ljava/util/List;)V

    .line 302
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 304
    :cond_9
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 306
    invoke-virtual {v0, v10, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 308
    :cond_a
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 310
    new-instance v10, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 311
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    const-wide/32 v11, -0x80000000

    const/4 v13, 0x0

    .line 313
    :goto_2
    array-length v14, v9

    if-ge v13, v14, :cond_c

    .line 318
    aget v14, v9, v13

    int-to-long v14, v14

    cmp-long v14, v11, v14

    if-eqz v14, :cond_b

    .line 319
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    add-int/lit8 v14, v13, 0x1

    int-to-long v14, v14

    aget v6, v9, v13

    move-object/from16 v21, v3

    int-to-long v2, v6

    const-wide/16 v19, 0x1

    move-wide v15, v14

    move-object v14, v12

    move-wide/from16 v17, v2

    invoke-direct/range {v14 .. v20}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    aget v2, v9, v13

    int-to-long v2, v2

    move-wide v11, v2

    goto :goto_3

    :cond_b
    move-object/from16 v21, v3

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    goto :goto_2

    :cond_c
    move-object/from16 v21, v3

    .line 323
    invoke-virtual {v7, v10}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 325
    new-instance v2, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 326
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 328
    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 333
    new-instance v2, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 334
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    array-length v3, v9

    new-array v3, v3, [J

    .line 338
    sget-object v6, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    const-string v10, "Calculating chunk offsets for track_"

    if-eqz v6, :cond_d

    .line 339
    sget-object v6, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_d
    const/4 v6, 0x0

    const-wide/16 v13, 0x0

    .line 343
    :goto_4
    array-length v15, v9

    if-ge v6, v15, :cond_14

    .line 347
    sget-object v15, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v15, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 348
    sget-object v11, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v9

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " chunk "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 350
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 351
    sget-object v11, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 352
    sget-object v11, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding offsets of track_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 354
    :goto_7
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    :goto_8
    if-ge v5, v6, :cond_10

    .line 357
    aget v15, v4, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    int-to-long v8, v15

    add-long/2addr v11, v8

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    goto :goto_8

    :cond_10
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    if-ne v10, v1, :cond_11

    .line 360
    aput-wide v13, v3, v6

    .line 362
    :cond_11
    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    :goto_9
    int-to-long v8, v5

    aget v15, v4, v6

    move-object/from16 v25, v2

    int-to-long v1, v15

    add-long/2addr v1, v11

    cmp-long v1, v8, v1

    if-gez v1, :cond_12

    .line 363
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v1, v1, v5

    add-long/2addr v13, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    goto :goto_9

    :cond_12
    move-object/from16 v1, p1

    move-object/from16 v4, v20

    move-object/from16 v5, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v2, v25

    goto/16 :goto_6

    :cond_13
    move-object/from16 v25, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_4

    :cond_14
    move-object v1, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 367
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 368
    invoke-virtual {v7, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    move-object/from16 v1, v22

    .line 369
    invoke-virtual {v1, v7}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    move-object/from16 v2, v20

    .line 370
    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v21
.end method

.method public static gcd(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    .line 552
    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->gcd(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 7

    .line 534
    invoke-interface {p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 535
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

.method private static sum([I)J
    .locals 6

    .line 526
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p0, v3

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;
    .locals 8

    .line 87
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating movie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Track;

    .line 90
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    .line 91
    invoke-virtual {p0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->putSamples(Lcom/googlecode/mp4parser/authoring/Track;Ljava/util/List;)Ljava/util/List;

    .line 92
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [J

    :goto_1
    if-ge v2, v4, :cond_0

    .line 94
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {p0, v1, v5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->putSampleSizes(Lcom/googlecode/mp4parser/authoring/Track;[J)[J

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v0}, Lcom/coremedia/iso/IsoFile;-><init>()V

    .line 101
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "isom"

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "iso2"

    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "avc1"

    .line 104
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v3, v5, v6, v1}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createMovieBox(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 108
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 115
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->getDataOffset()J

    move-result-wide v3

    .line 116
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    .line 117
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v1

    move v5, v2

    .line 118
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 119
    aget-wide v6, v1, v5

    add-long/2addr v6, v3

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method protected createUdta(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I
    .locals 10

    .line 501
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object p2

    .line 502
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 505
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 506
    aget-wide v2, p2, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 508
    array-length v6, p2

    add-int/lit8 v7, v1, 0x1

    if-ne v6, v7, :cond_0

    .line 509
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    goto :goto_1

    .line 511
    :cond_0
    aget-wide v8, p2, v7

    sub-long v4, v8, v4

    :goto_1
    sub-long/2addr v4, v2

    .line 514
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    aput v2, v0, v1

    move v1, v7

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No fragment intersection finder in default MP4 builder!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J
    .locals 4

    .line 541
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v0

    .line 542
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 543
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->gcd(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method protected putSampleSizes(Lcom/googlecode/mp4parser/authoring/Track;[J)[J
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method protected putSamples(Lcom/googlecode/mp4parser/authoring/Track;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-void
.end method

.method public unifyAdjacentBuffers(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 559
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 560
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 561
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    .line 565
    instance-of v3, v1, Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_1

    .line 567
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    .line 569
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 572
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method
