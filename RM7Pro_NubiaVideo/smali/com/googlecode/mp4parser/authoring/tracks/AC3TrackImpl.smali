.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# instance fields
.field acmod:I

.field bitRateAndFrameSizeTable:[[[[I

.field bitrate:I

.field bsid:I

.field bsmod:I

.field channelCount:I

.field frameSize:I

.field frmsizecod:I

.field fscod:I

.field private inputStream:Ljava/io/InputStream;

.field private lang:Ljava/lang/String;

.field lfeon:I

.field readSamples:Z

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field samplerate:I

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field stts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 8
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 10
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 4
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private calcBitrateAndFrameSize(I)Z
    .locals 7

    ushr-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    and-int/2addr p1, v1

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-gt v0, v3, :cond_1

    if-gt p1, v1, :cond_1

    .line 1
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v6, v5, v0

    aget-object v6, v6, p1

    aget-object v6, v6, v3

    aget v2, v6, v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitrate:I

    .line 3
    aget-object v0, v5, v0

    aget-object p1, v0, p1

    aget-object p1, p1, v3

    aget p1, p1, v1

    mul-int/2addr p1, v4

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method private initBitRateAndFrameSizeTable()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v4, 0x20

    aput v4, v3, v2

    .line 2
    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    const/16 v5, 0x20

    aput v5, v3, v2

    .line 3
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x40

    aput v5, v3, v4

    .line 4
    aget-object v3, v1, v2

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v4

    .line 5
    aget-object v3, v1, v4

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x28

    aput v5, v3, v2

    .line 6
    aget-object v3, v1, v4

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v2

    .line 7
    aget-object v3, v1, v4

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x50

    aput v5, v3, v4

    .line 8
    aget-object v3, v1, v4

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v4

    const/4 v3, 0x2

    .line 9
    aget-object v5, v1, v3

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    const/16 v6, 0x30

    aput v6, v5, v2

    .line 10
    aget-object v5, v1, v3

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    aput v6, v5, v2

    .line 11
    aget-object v5, v1, v3

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    const/16 v6, 0x60

    aput v6, v5, v4

    .line 12
    aget-object v5, v1, v3

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    aput v6, v5, v4

    const/4 v5, 0x3

    .line 13
    aget-object v7, v1, v5

    aget-object v7, v7, v2

    aget-object v7, v7, v2

    const/16 v8, 0x38

    aput v8, v7, v2

    .line 14
    aget-object v7, v1, v5

    aget-object v7, v7, v4

    aget-object v7, v7, v2

    aput v8, v7, v2

    .line 15
    aget-object v7, v1, v5

    aget-object v7, v7, v2

    aget-object v7, v7, v2

    const/16 v8, 0x70

    aput v8, v7, v4

    .line 16
    aget-object v7, v1, v5

    aget-object v7, v7, v4

    aget-object v7, v7, v2

    aput v8, v7, v4

    const/4 v7, 0x4

    .line 17
    aget-object v8, v1, v7

    aget-object v8, v8, v2

    aget-object v8, v8, v2

    const/16 v9, 0x40

    aput v9, v8, v2

    .line 18
    aget-object v8, v1, v7

    aget-object v8, v8, v4

    aget-object v8, v8, v2

    aput v9, v8, v2

    .line 19
    aget-object v8, v1, v7

    aget-object v8, v8, v2

    aget-object v8, v8, v2

    const/16 v9, 0x80

    aput v9, v8, v4

    .line 20
    aget-object v8, v1, v7

    aget-object v8, v8, v4

    aget-object v8, v8, v2

    aput v9, v8, v4

    const/4 v8, 0x5

    .line 21
    aget-object v9, v1, v8

    aget-object v9, v9, v2

    aget-object v9, v9, v2

    const/16 v10, 0x50

    aput v10, v9, v2

    .line 22
    aget-object v9, v1, v8

    aget-object v9, v9, v4

    aget-object v9, v9, v2

    aput v10, v9, v2

    .line 23
    aget-object v9, v1, v8

    aget-object v9, v9, v2

    aget-object v9, v9, v2

    const/16 v10, 0xa0

    aput v10, v9, v4

    .line 24
    aget-object v9, v1, v8

    aget-object v9, v9, v4

    aget-object v9, v9, v2

    aput v10, v9, v4

    const/4 v9, 0x6

    .line 25
    aget-object v10, v1, v9

    aget-object v10, v10, v2

    aget-object v10, v10, v2

    aput v6, v10, v2

    .line 26
    aget-object v10, v1, v9

    aget-object v10, v10, v4

    aget-object v10, v10, v2

    aput v6, v10, v2

    .line 27
    aget-object v10, v1, v9

    aget-object v10, v10, v2

    aget-object v10, v10, v2

    const/16 v11, 0xc0

    aput v11, v10, v4

    .line 28
    aget-object v10, v1, v9

    aget-object v10, v10, v4

    aget-object v10, v10, v2

    aput v11, v10, v4

    const/4 v10, 0x7

    .line 29
    aget-object v12, v1, v10

    aget-object v12, v12, v2

    aget-object v12, v12, v2

    const/16 v13, 0x70

    aput v13, v12, v2

    .line 30
    aget-object v12, v1, v10

    aget-object v12, v12, v4

    aget-object v12, v12, v2

    aput v13, v12, v2

    .line 31
    aget-object v12, v1, v10

    aget-object v12, v12, v2

    aget-object v12, v12, v2

    const/16 v13, 0xe0

    aput v13, v12, v4

    .line 32
    aget-object v12, v1, v10

    aget-object v12, v12, v4

    aget-object v12, v12, v2

    aput v13, v12, v4

    const/16 v12, 0x8

    .line 33
    aget-object v13, v1, v12

    aget-object v13, v13, v2

    aget-object v13, v13, v2

    const/16 v14, 0x80

    aput v14, v13, v2

    .line 34
    aget-object v13, v1, v12

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aput v14, v13, v2

    .line 35
    aget-object v13, v1, v12

    aget-object v13, v13, v2

    aget-object v13, v13, v2

    const/16 v14, 0x100

    aput v14, v13, v4

    .line 36
    aget-object v13, v1, v12

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aput v14, v13, v4

    const/16 v13, 0x9

    .line 37
    aget-object v14, v1, v13

    aget-object v14, v14, v2

    aget-object v14, v14, v2

    const/16 v15, 0xa0

    aput v15, v14, v2

    .line 38
    aget-object v14, v1, v13

    aget-object v14, v14, v4

    aget-object v14, v14, v2

    aput v15, v14, v2

    .line 39
    aget-object v14, v1, v13

    aget-object v14, v14, v2

    aget-object v14, v14, v2

    const/16 v15, 0x140

    aput v15, v14, v4

    .line 40
    aget-object v14, v1, v13

    aget-object v14, v14, v4

    aget-object v14, v14, v2

    aput v15, v14, v4

    const/16 v14, 0xa

    .line 41
    aget-object v15, v1, v14

    aget-object v15, v15, v2

    aget-object v15, v15, v2

    aput v11, v15, v2

    .line 42
    aget-object v15, v1, v14

    aget-object v15, v15, v4

    aget-object v15, v15, v2

    aput v11, v15, v2

    .line 43
    aget-object v15, v1, v14

    aget-object v15, v15, v2

    aget-object v15, v15, v2

    const/16 v16, 0x180

    aput v16, v15, v4

    .line 44
    aget-object v15, v1, v14

    aget-object v15, v15, v4

    aget-object v15, v15, v2

    aput v16, v15, v4

    const/16 v15, 0xb

    .line 45
    aget-object v17, v1, v15

    aget-object v17, v17, v2

    aget-object v17, v17, v2

    const/16 v18, 0xe0

    aput v18, v17, v2

    .line 46
    aget-object v17, v1, v15

    aget-object v17, v17, v4

    aget-object v17, v17, v2

    aput v18, v17, v2

    .line 47
    aget-object v17, v1, v15

    aget-object v17, v17, v2

    aget-object v17, v17, v2

    const/16 v18, 0x1c0

    aput v18, v17, v4

    .line 48
    aget-object v17, v1, v15

    aget-object v17, v17, v4

    aget-object v17, v17, v2

    aput v18, v17, v4

    const/16 v17, 0xc

    .line 49
    aget-object v18, v1, v17

    aget-object v18, v18, v2

    aget-object v18, v18, v2

    const/16 v19, 0x100

    aput v19, v18, v2

    .line 50
    aget-object v18, v1, v17

    aget-object v18, v18, v4

    aget-object v18, v18, v2

    aput v19, v18, v2

    .line 51
    aget-object v18, v1, v17

    aget-object v18, v18, v2

    aget-object v18, v18, v2

    const/16 v19, 0x200

    aput v19, v18, v4

    .line 52
    aget-object v18, v1, v17

    aget-object v18, v18, v4

    aget-object v18, v18, v2

    aput v19, v18, v4

    const/16 v18, 0xd

    .line 53
    aget-object v19, v1, v18

    aget-object v19, v19, v2

    aget-object v19, v19, v2

    const/16 v20, 0x140

    aput v20, v19, v2

    .line 54
    aget-object v19, v1, v18

    aget-object v19, v19, v4

    aget-object v19, v19, v2

    aput v20, v19, v2

    .line 55
    aget-object v19, v1, v18

    aget-object v19, v19, v2

    aget-object v19, v19, v2

    const/16 v20, 0x280

    aput v20, v19, v4

    .line 56
    aget-object v19, v1, v18

    aget-object v19, v19, v4

    aget-object v19, v19, v2

    aput v20, v19, v4

    const/16 v19, 0xe

    .line 57
    aget-object v20, v1, v19

    aget-object v20, v20, v2

    aget-object v20, v20, v2

    aput v16, v20, v2

    .line 58
    aget-object v20, v1, v19

    aget-object v20, v20, v4

    aget-object v20, v20, v2

    aput v16, v20, v2

    .line 59
    aget-object v20, v1, v19

    aget-object v20, v20, v2

    aget-object v20, v20, v2

    const/16 v21, 0x300

    aput v21, v20, v4

    .line 60
    aget-object v20, v1, v19

    aget-object v20, v20, v4

    aget-object v20, v20, v2

    aput v21, v20, v4

    const/16 v20, 0xf

    .line 61
    aget-object v21, v1, v20

    aget-object v21, v21, v2

    aget-object v21, v21, v2

    const/16 v22, 0x1c0

    aput v22, v21, v2

    .line 62
    aget-object v21, v1, v20

    aget-object v21, v21, v4

    aget-object v21, v21, v2

    aput v22, v21, v2

    .line 63
    aget-object v21, v1, v20

    aget-object v21, v21, v2

    aget-object v21, v21, v2

    const/16 v22, 0x380

    aput v22, v21, v4

    .line 64
    aget-object v21, v1, v20

    aget-object v21, v21, v4

    aget-object v21, v21, v2

    aput v22, v21, v4

    const/16 v21, 0x10

    .line 65
    aget-object v22, v1, v21

    aget-object v22, v22, v2

    aget-object v22, v22, v2

    const/16 v23, 0x200

    aput v23, v22, v2

    .line 66
    aget-object v22, v1, v21

    aget-object v22, v22, v4

    aget-object v22, v22, v2

    aput v23, v22, v2

    .line 67
    aget-object v22, v1, v21

    aget-object v22, v22, v2

    aget-object v22, v22, v2

    const/16 v23, 0x400

    aput v23, v22, v4

    .line 68
    aget-object v22, v1, v21

    aget-object v22, v22, v4

    aget-object v22, v22, v2

    aput v23, v22, v4

    const/16 v22, 0x11

    .line 69
    aget-object v23, v1, v22

    aget-object v23, v23, v2

    aget-object v23, v23, v2

    const/16 v24, 0x240

    aput v24, v23, v2

    .line 70
    aget-object v23, v1, v22

    aget-object v23, v23, v4

    aget-object v23, v23, v2

    aput v24, v23, v2

    .line 71
    aget-object v23, v1, v22

    aget-object v23, v23, v2

    aget-object v23, v23, v2

    const/16 v24, 0x480

    aput v24, v23, v4

    .line 72
    aget-object v23, v1, v22

    aget-object v23, v23, v4

    aget-object v23, v23, v2

    aput v24, v23, v4

    const/16 v23, 0x12

    .line 73
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v2

    const/16 v25, 0x280

    aput v25, v24, v2

    .line 74
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v2

    aput v25, v24, v2

    .line 75
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v2

    const/16 v25, 0x500

    aput v25, v24, v4

    .line 76
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v2

    aput v25, v24, v4

    .line 77
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x20

    aput v25, v24, v2

    .line 78
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 79
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x45

    aput v25, v24, v4

    .line 80
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x46

    aput v25, v24, v4

    .line 81
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x28

    aput v25, v24, v2

    .line 82
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 83
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x57

    aput v25, v24, v4

    .line 84
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x58

    aput v25, v24, v4

    .line 85
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x30

    aput v25, v24, v2

    .line 86
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 87
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x68

    aput v25, v24, v4

    .line 88
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x69

    aput v25, v24, v4

    .line 89
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x38

    aput v25, v24, v2

    .line 90
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 91
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x79

    aput v25, v24, v4

    .line 92
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x7a

    aput v25, v24, v4

    .line 93
    aget-object v24, v1, v7

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x40

    aput v25, v24, v2

    .line 94
    aget-object v24, v1, v7

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 95
    aget-object v24, v1, v7

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x8b

    aput v25, v24, v4

    .line 96
    aget-object v24, v1, v7

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x8c

    aput v25, v24, v4

    .line 97
    aget-object v24, v1, v8

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x50

    aput v25, v24, v2

    .line 98
    aget-object v24, v1, v8

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 99
    aget-object v24, v1, v8

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xae

    aput v25, v24, v4

    .line 100
    aget-object v24, v1, v8

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xaf

    aput v25, v24, v4

    .line 101
    aget-object v24, v1, v9

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v6, v24, v2

    .line 102
    aget-object v24, v1, v9

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v6, v24, v2

    .line 103
    aget-object v24, v1, v9

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xd0

    aput v25, v24, v4

    .line 104
    aget-object v24, v1, v9

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xd1

    aput v25, v24, v4

    .line 105
    aget-object v24, v1, v10

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x70

    aput v25, v24, v2

    .line 106
    aget-object v24, v1, v10

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 107
    aget-object v24, v1, v10

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xf3

    aput v25, v24, v4

    .line 108
    aget-object v24, v1, v10

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xf4

    aput v25, v24, v4

    .line 109
    aget-object v24, v1, v12

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x80

    aput v25, v24, v2

    .line 110
    aget-object v24, v1, v12

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 111
    aget-object v24, v1, v12

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x116

    aput v25, v24, v4

    .line 112
    aget-object v24, v1, v12

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x117

    aput v25, v24, v4

    .line 113
    aget-object v24, v1, v13

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xa0

    aput v25, v24, v2

    .line 114
    aget-object v24, v1, v13

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 115
    aget-object v24, v1, v13

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x15c

    aput v25, v24, v4

    .line 116
    aget-object v24, v1, v13

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x15d

    aput v25, v24, v4

    .line 117
    aget-object v24, v1, v14

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v11, v24, v2

    .line 118
    aget-object v24, v1, v14

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v11, v24, v2

    .line 119
    aget-object v24, v1, v14

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1a1

    aput v25, v24, v4

    .line 120
    aget-object v24, v1, v14

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x1a2

    aput v25, v24, v4

    .line 121
    aget-object v24, v1, v15

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xe0

    aput v25, v24, v2

    .line 122
    aget-object v24, v1, v15

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 123
    aget-object v24, v1, v15

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1e7

    aput v25, v24, v4

    .line 124
    aget-object v24, v1, v15

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x1e8

    aput v25, v24, v4

    .line 125
    aget-object v24, v1, v17

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x100

    aput v25, v24, v2

    .line 126
    aget-object v24, v1, v17

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 127
    aget-object v24, v1, v17

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x22d

    aput v25, v24, v4

    .line 128
    aget-object v24, v1, v17

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x22e

    aput v25, v24, v4

    .line 129
    aget-object v24, v1, v18

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x140

    aput v25, v24, v2

    .line 130
    aget-object v24, v1, v18

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 131
    aget-object v24, v1, v18

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x2b8

    aput v25, v24, v4

    .line 132
    aget-object v24, v1, v18

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x2b9

    aput v25, v24, v4

    .line 133
    aget-object v24, v1, v19

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v16, v24, v2

    .line 134
    aget-object v24, v1, v19

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v16, v24, v2

    .line 135
    aget-object v24, v1, v19

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x343

    aput v25, v24, v4

    .line 136
    aget-object v24, v1, v19

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x344

    aput v25, v24, v4

    .line 137
    aget-object v24, v1, v20

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1c0

    aput v25, v24, v2

    .line 138
    aget-object v24, v1, v20

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 139
    aget-object v24, v1, v20

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x3cf

    aput v25, v24, v4

    .line 140
    aget-object v24, v1, v20

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v4

    .line 141
    aget-object v24, v1, v21

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x200

    aput v25, v24, v2

    .line 142
    aget-object v24, v1, v21

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 143
    aget-object v24, v1, v21

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x45a

    aput v25, v24, v4

    .line 144
    aget-object v24, v1, v21

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x45b

    aput v25, v24, v4

    .line 145
    aget-object v24, v1, v22

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x240

    aput v25, v24, v2

    .line 146
    aget-object v24, v1, v22

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 147
    aget-object v24, v1, v22

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x4e5

    aput v25, v24, v4

    .line 148
    aget-object v24, v1, v22

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x4e6

    aput v25, v24, v4

    .line 149
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x280

    aput v25, v24, v2

    .line 150
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 151
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x571

    aput v25, v24, v4

    .line 152
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x572

    aput v25, v24, v4

    .line 153
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x20

    aput v25, v24, v2

    .line 154
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 155
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    aput v6, v24, v4

    .line 156
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v6, v24, v4

    .line 157
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x28

    aput v25, v24, v2

    .line 158
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 159
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x78

    aput v25, v24, v4

    .line 160
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v4

    .line 161
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x30

    aput v25, v24, v2

    .line 162
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 163
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x90

    aput v25, v24, v4

    .line 164
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v4

    .line 165
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x38

    aput v25, v24, v2

    .line 166
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 167
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0xa8

    aput v25, v24, v4

    .line 168
    aget-object v5, v1, v5

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    const/16 v24, 0xa8

    aput v24, v5, v4

    .line 169
    aget-object v5, v1, v7

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v24, 0x40

    aput v24, v5, v2

    .line 170
    aget-object v5, v1, v7

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v24, v5, v2

    .line 171
    aget-object v5, v1, v7

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v11, v5, v4

    .line 172
    aget-object v5, v1, v7

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v11, v5, v4

    .line 173
    aget-object v5, v1, v8

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v7, 0x50

    aput v7, v5, v2

    .line 174
    aget-object v5, v1, v8

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v7, v5, v2

    .line 175
    aget-object v5, v1, v8

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v7, 0xf0

    aput v7, v5, v4

    .line 176
    aget-object v5, v1, v8

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v7, v5, v4

    .line 177
    aget-object v5, v1, v9

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 178
    aget-object v5, v1, v9

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 179
    aget-object v5, v1, v9

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x120

    aput v6, v5, v4

    .line 180
    aget-object v5, v1, v9

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 181
    aget-object v5, v1, v10

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x70

    aput v6, v5, v2

    .line 182
    aget-object v5, v1, v10

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 183
    aget-object v5, v1, v10

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x150

    aput v6, v5, v4

    .line 184
    aget-object v5, v1, v10

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 185
    aget-object v5, v1, v12

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x80

    aput v6, v5, v2

    .line 186
    aget-object v5, v1, v12

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 187
    aget-object v5, v1, v12

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v16, v5, v4

    .line 188
    aget-object v5, v1, v12

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v16, v5, v4

    .line 189
    aget-object v5, v1, v13

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0xa0

    aput v6, v5, v2

    .line 190
    aget-object v5, v1, v13

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 191
    aget-object v5, v1, v13

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x1e0

    aput v6, v5, v4

    .line 192
    aget-object v5, v1, v13

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 193
    aget-object v5, v1, v14

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v11, v5, v2

    .line 194
    aget-object v5, v1, v14

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v11, v5, v2

    .line 195
    aget-object v5, v1, v14

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x240

    aput v6, v5, v4

    .line 196
    aget-object v5, v1, v14

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 197
    aget-object v5, v1, v15

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0xe0

    aput v6, v5, v2

    .line 198
    aget-object v5, v1, v15

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 199
    aget-object v5, v1, v15

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x2a0

    aput v6, v5, v4

    .line 200
    aget-object v5, v1, v15

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 201
    aget-object v5, v1, v17

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x100

    aput v6, v5, v2

    .line 202
    aget-object v5, v1, v17

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 203
    aget-object v5, v1, v17

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x300

    aput v6, v5, v4

    .line 204
    aget-object v5, v1, v17

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 205
    aget-object v5, v1, v18

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x140

    aput v6, v5, v2

    .line 206
    aget-object v5, v1, v18

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 207
    aget-object v5, v1, v18

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x3c0

    aput v6, v5, v4

    .line 208
    aget-object v5, v1, v18

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 209
    aget-object v5, v1, v19

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v16, v5, v2

    .line 210
    aget-object v5, v1, v19

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v16, v5, v2

    .line 211
    aget-object v5, v1, v19

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x480

    aput v6, v5, v4

    .line 212
    aget-object v5, v1, v19

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 213
    aget-object v5, v1, v20

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x1c0

    aput v6, v5, v2

    .line 214
    aget-object v5, v1, v20

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 215
    aget-object v5, v1, v20

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x540

    aput v6, v5, v4

    .line 216
    aget-object v5, v1, v20

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 217
    aget-object v5, v1, v21

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x200

    aput v6, v5, v2

    .line 218
    aget-object v5, v1, v21

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 219
    aget-object v5, v1, v21

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x600

    aput v6, v5, v4

    .line 220
    aget-object v5, v1, v21

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 221
    aget-object v5, v1, v22

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x240

    aput v6, v5, v2

    .line 222
    aget-object v5, v1, v22

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 223
    aget-object v5, v1, v22

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x6c0

    aput v6, v5, v4

    .line 224
    aget-object v5, v1, v22

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 225
    aget-object v5, v1, v23

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x280

    aput v6, v5, v2

    .line 226
    aget-object v5, v1, v23

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 227
    aget-object v5, v1, v23

    aget-object v2, v5, v2

    aget-object v2, v2, v3

    const/16 v5, 0x780

    aput v5, v2, v4

    .line 228
    aget-object v1, v1, v23

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    const/16 v2, 0x780

    aput v2, v1, v4

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[I

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->initBitRateAndFrameSizeTable()V

    .line 5
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readVariables()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 7
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v0, "ac-3"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 9
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x10

    .line 11
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 12
    new-instance v1, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;-><init>()V

    .line 13
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setAcmod(I)V

    .line 14
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    shr-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBitRateCode(I)V

    .line 15
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsid(I)V

    .line 16
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsmod(I)V

    .line 17
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setFscod(I)V

    .line 18
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setLfeon(I)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setReserved(I)V

    .line 20
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 21
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/FullContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 22
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 23
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 24
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 26
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    .line 27
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    nop

    :array_0
    .array-data 4
        0x13
        0x2
        0x3
        0x2
    .end array-data
.end method

.method private readSamples()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const/4 v0, 0x5

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    const/4 v4, -0x1

    .line 4
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v3, 0x4

    .line 5
    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    .line 6
    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    .line 7
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 8
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    new-array v3, v3, [B

    .line 9
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 10
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x600

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->mark(I)V

    move v3, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private readVariables()Z
    .locals 10

    const/16 v0, 0x64

    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 2
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v0, v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x10

    .line 6
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    const/16 v4, 0xb77

    if-eq v2, v4, :cond_1

    return v3

    .line 7
    :cond_1
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v0, 0x2

    .line 8
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v0, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x7d00

    .line 10
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_4
    const v2, 0xac44

    .line 11
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_5
    const v2, 0xbb80

    .line 12
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    .line 13
    :goto_0
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    if-nez v2, :cond_6

    return v3

    :cond_6
    const/4 v2, 0x6

    .line 14
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    .line 15
    invoke-direct {p0, v6}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    move-result v6

    if-nez v6, :cond_7

    return v3

    .line 16
    :cond_7
    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    if-nez v6, :cond_8

    return v3

    :cond_8
    const/4 v6, 0x5

    .line 17
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    .line 18
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    .line 19
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    .line 20
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_9

    .line 21
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    div-int/2addr v2, v0

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_1

    :cond_9
    const/16 v9, 0x8

    if-eq v8, v9, :cond_a

    if-eq v8, v2, :cond_a

    return v3

    :cond_a
    :goto_1
    if-eq v7, v5, :cond_b

    and-int/lit8 v2, v7, 0x1

    if-ne v2, v5, :cond_b

    .line 22
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 23
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 24
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 25
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    if-ne v2, v0, :cond_d

    .line 26
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 27
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 28
    :pswitch_0
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 29
    :pswitch_1
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 30
    :pswitch_2
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 31
    :pswitch_3
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 32
    :pswitch_4
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 33
    :pswitch_5
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 34
    :pswitch_6
    iput v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 35
    :pswitch_7
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    .line 36
    :goto_2
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    if-ne v0, v5, :cond_e

    .line 37
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    :cond_e
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
