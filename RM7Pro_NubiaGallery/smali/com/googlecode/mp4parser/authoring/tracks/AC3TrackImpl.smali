.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AC3TrackImpl.java"


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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 39
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 39
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 43
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

    .line 246
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v6, v5, v0

    aget-object v6, v6, p1

    aget-object v6, v6, v3

    aget v2, v6, v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitrate:I

    .line 250
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

    .line 280
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v4, 0x20

    aput v4, v3, v2

    .line 281
    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    const/16 v5, 0x20

    aput v5, v3, v2

    .line 282
    aget-object v3, v1, v2

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x40

    aput v5, v3, v4

    .line 283
    aget-object v3, v1, v2

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v4

    .line 284
    aget-object v3, v1, v4

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x28

    aput v5, v3, v2

    .line 285
    aget-object v3, v1, v4

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v2

    .line 286
    aget-object v3, v1, v4

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    const/16 v5, 0x50

    aput v5, v3, v4

    .line 287
    aget-object v3, v1, v4

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput v5, v3, v4

    const/4 v3, 0x2

    .line 288
    aget-object v5, v1, v3

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    const/16 v6, 0x30

    aput v6, v5, v2

    .line 289
    aget-object v5, v1, v3

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    aput v6, v5, v2

    .line 290
    aget-object v5, v1, v3

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    const/16 v6, 0x60

    aput v6, v5, v4

    .line 291
    aget-object v5, v1, v3

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    aput v6, v5, v4

    const/4 v5, 0x3

    .line 292
    aget-object v7, v1, v5

    aget-object v7, v7, v2

    aget-object v7, v7, v2

    const/16 v8, 0x38

    aput v8, v7, v2

    .line 293
    aget-object v7, v1, v5

    aget-object v7, v7, v4

    aget-object v7, v7, v2

    aput v8, v7, v2

    .line 294
    aget-object v7, v1, v5

    aget-object v7, v7, v2

    aget-object v7, v7, v2

    const/16 v8, 0x70

    aput v8, v7, v4

    .line 295
    aget-object v7, v1, v5

    aget-object v7, v7, v4

    aget-object v7, v7, v2

    aput v8, v7, v4

    const/4 v7, 0x4

    .line 296
    aget-object v8, v1, v7

    aget-object v8, v8, v2

    aget-object v8, v8, v2

    const/16 v9, 0x40

    aput v9, v8, v2

    .line 297
    aget-object v8, v1, v7

    aget-object v8, v8, v4

    aget-object v8, v8, v2

    aput v9, v8, v2

    .line 298
    aget-object v8, v1, v7

    aget-object v8, v8, v2

    aget-object v8, v8, v2

    const/16 v9, 0x80

    aput v9, v8, v4

    .line 299
    aget-object v8, v1, v7

    aget-object v8, v8, v4

    aget-object v8, v8, v2

    aput v9, v8, v4

    const/4 v8, 0x5

    .line 300
    aget-object v9, v1, v8

    aget-object v9, v9, v2

    aget-object v9, v9, v2

    const/16 v10, 0x50

    aput v10, v9, v2

    .line 301
    aget-object v9, v1, v8

    aget-object v9, v9, v4

    aget-object v9, v9, v2

    aput v10, v9, v2

    .line 302
    aget-object v9, v1, v8

    aget-object v9, v9, v2

    aget-object v9, v9, v2

    const/16 v10, 0xa0

    aput v10, v9, v4

    .line 303
    aget-object v9, v1, v8

    aget-object v9, v9, v4

    aget-object v9, v9, v2

    aput v10, v9, v4

    const/4 v9, 0x6

    .line 304
    aget-object v10, v1, v9

    aget-object v10, v10, v2

    aget-object v10, v10, v2

    aput v6, v10, v2

    .line 305
    aget-object v10, v1, v9

    aget-object v10, v10, v4

    aget-object v10, v10, v2

    aput v6, v10, v2

    .line 306
    aget-object v10, v1, v9

    aget-object v10, v10, v2

    aget-object v10, v10, v2

    const/16 v11, 0xc0

    aput v11, v10, v4

    .line 307
    aget-object v10, v1, v9

    aget-object v10, v10, v4

    aget-object v10, v10, v2

    aput v11, v10, v4

    const/4 v10, 0x7

    .line 308
    aget-object v12, v1, v10

    aget-object v12, v12, v2

    aget-object v12, v12, v2

    const/16 v13, 0x70

    aput v13, v12, v2

    .line 309
    aget-object v12, v1, v10

    aget-object v12, v12, v4

    aget-object v12, v12, v2

    aput v13, v12, v2

    .line 310
    aget-object v12, v1, v10

    aget-object v12, v12, v2

    aget-object v12, v12, v2

    const/16 v13, 0xe0

    aput v13, v12, v4

    .line 311
    aget-object v12, v1, v10

    aget-object v12, v12, v4

    aget-object v12, v12, v2

    aput v13, v12, v4

    const/16 v12, 0x8

    .line 312
    aget-object v13, v1, v12

    aget-object v13, v13, v2

    aget-object v13, v13, v2

    const/16 v14, 0x80

    aput v14, v13, v2

    .line 313
    aget-object v13, v1, v12

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aput v14, v13, v2

    .line 314
    aget-object v13, v1, v12

    aget-object v13, v13, v2

    aget-object v13, v13, v2

    const/16 v14, 0x100

    aput v14, v13, v4

    .line 315
    aget-object v13, v1, v12

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aput v14, v13, v4

    const/16 v13, 0x9

    .line 316
    aget-object v14, v1, v13

    aget-object v14, v14, v2

    aget-object v14, v14, v2

    const/16 v15, 0xa0

    aput v15, v14, v2

    .line 317
    aget-object v14, v1, v13

    aget-object v14, v14, v4

    aget-object v14, v14, v2

    aput v15, v14, v2

    .line 318
    aget-object v14, v1, v13

    aget-object v14, v14, v2

    aget-object v14, v14, v2

    const/16 v15, 0x140

    aput v15, v14, v4

    .line 319
    aget-object v14, v1, v13

    aget-object v14, v14, v4

    aget-object v14, v14, v2

    aput v15, v14, v4

    const/16 v14, 0xa

    .line 320
    aget-object v15, v1, v14

    aget-object v15, v15, v2

    aget-object v15, v15, v2

    aput v11, v15, v2

    .line 321
    aget-object v15, v1, v14

    aget-object v15, v15, v4

    aget-object v15, v15, v2

    aput v11, v15, v2

    .line 322
    aget-object v15, v1, v14

    aget-object v15, v15, v2

    aget-object v15, v15, v2

    const/16 v16, 0x180

    aput v16, v15, v4

    .line 323
    aget-object v15, v1, v14

    aget-object v15, v15, v4

    aget-object v15, v15, v2

    aput v16, v15, v4

    const/16 v15, 0xb

    .line 324
    aget-object v17, v1, v15

    aget-object v17, v17, v2

    aget-object v17, v17, v2

    const/16 v18, 0xe0

    aput v18, v17, v2

    .line 325
    aget-object v17, v1, v15

    aget-object v17, v17, v4

    aget-object v17, v17, v2

    aput v18, v17, v2

    .line 326
    aget-object v17, v1, v15

    aget-object v17, v17, v2

    aget-object v17, v17, v2

    const/16 v18, 0x1c0

    aput v18, v17, v4

    .line 327
    aget-object v17, v1, v15

    aget-object v17, v17, v4

    aget-object v17, v17, v2

    aput v18, v17, v4

    const/16 v17, 0xc

    .line 328
    aget-object v18, v1, v17

    aget-object v18, v18, v2

    aget-object v18, v18, v2

    const/16 v19, 0x100

    aput v19, v18, v2

    .line 329
    aget-object v18, v1, v17

    aget-object v18, v18, v4

    aget-object v18, v18, v2

    aput v19, v18, v2

    .line 330
    aget-object v18, v1, v17

    aget-object v18, v18, v2

    aget-object v18, v18, v2

    const/16 v19, 0x200

    aput v19, v18, v4

    .line 331
    aget-object v18, v1, v17

    aget-object v18, v18, v4

    aget-object v18, v18, v2

    aput v19, v18, v4

    const/16 v18, 0xd

    .line 332
    aget-object v19, v1, v18

    aget-object v19, v19, v2

    aget-object v19, v19, v2

    const/16 v20, 0x140

    aput v20, v19, v2

    .line 333
    aget-object v19, v1, v18

    aget-object v19, v19, v4

    aget-object v19, v19, v2

    aput v20, v19, v2

    .line 334
    aget-object v19, v1, v18

    aget-object v19, v19, v2

    aget-object v19, v19, v2

    const/16 v20, 0x280

    aput v20, v19, v4

    .line 335
    aget-object v19, v1, v18

    aget-object v19, v19, v4

    aget-object v19, v19, v2

    aput v20, v19, v4

    const/16 v19, 0xe

    .line 336
    aget-object v20, v1, v19

    aget-object v20, v20, v2

    aget-object v20, v20, v2

    aput v16, v20, v2

    .line 337
    aget-object v20, v1, v19

    aget-object v20, v20, v4

    aget-object v20, v20, v2

    aput v16, v20, v2

    .line 338
    aget-object v20, v1, v19

    aget-object v20, v20, v2

    aget-object v20, v20, v2

    const/16 v21, 0x300

    aput v21, v20, v4

    .line 339
    aget-object v20, v1, v19

    aget-object v20, v20, v4

    aget-object v20, v20, v2

    aput v21, v20, v4

    const/16 v20, 0xf

    .line 340
    aget-object v21, v1, v20

    aget-object v21, v21, v2

    aget-object v21, v21, v2

    const/16 v22, 0x1c0

    aput v22, v21, v2

    .line 341
    aget-object v21, v1, v20

    aget-object v21, v21, v4

    aget-object v21, v21, v2

    aput v22, v21, v2

    .line 342
    aget-object v21, v1, v20

    aget-object v21, v21, v2

    aget-object v21, v21, v2

    const/16 v22, 0x380

    aput v22, v21, v4

    .line 343
    aget-object v21, v1, v20

    aget-object v21, v21, v4

    aget-object v21, v21, v2

    aput v22, v21, v4

    const/16 v21, 0x10

    .line 344
    aget-object v22, v1, v21

    aget-object v22, v22, v2

    aget-object v22, v22, v2

    const/16 v23, 0x200

    aput v23, v22, v2

    .line 345
    aget-object v22, v1, v21

    aget-object v22, v22, v4

    aget-object v22, v22, v2

    aput v23, v22, v2

    .line 346
    aget-object v22, v1, v21

    aget-object v22, v22, v2

    aget-object v22, v22, v2

    const/16 v23, 0x400

    aput v23, v22, v4

    .line 347
    aget-object v22, v1, v21

    aget-object v22, v22, v4

    aget-object v22, v22, v2

    aput v23, v22, v4

    const/16 v22, 0x11

    .line 348
    aget-object v23, v1, v22

    aget-object v23, v23, v2

    aget-object v23, v23, v2

    const/16 v24, 0x240

    aput v24, v23, v2

    .line 349
    aget-object v23, v1, v22

    aget-object v23, v23, v4

    aget-object v23, v23, v2

    aput v24, v23, v2

    .line 350
    aget-object v23, v1, v22

    aget-object v23, v23, v2

    aget-object v23, v23, v2

    const/16 v24, 0x480

    aput v24, v23, v4

    .line 351
    aget-object v23, v1, v22

    aget-object v23, v23, v4

    aget-object v23, v23, v2

    aput v24, v23, v4

    const/16 v23, 0x12

    .line 352
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v2

    const/16 v25, 0x280

    aput v25, v24, v2

    .line 353
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v2

    aput v25, v24, v2

    .line 354
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v2

    const/16 v25, 0x500

    aput v25, v24, v4

    .line 355
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v2

    aput v25, v24, v4

    .line 358
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x20

    aput v25, v24, v2

    .line 359
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 360
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x45

    aput v25, v24, v4

    .line 361
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x46

    aput v25, v24, v4

    .line 362
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x28

    aput v25, v24, v2

    .line 363
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 364
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x57

    aput v25, v24, v4

    .line 365
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x58

    aput v25, v24, v4

    .line 366
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x30

    aput v25, v24, v2

    .line 367
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 368
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x68

    aput v25, v24, v4

    .line 369
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x69

    aput v25, v24, v4

    .line 370
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x38

    aput v25, v24, v2

    .line 371
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 372
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x79

    aput v25, v24, v4

    .line 373
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x7a

    aput v25, v24, v4

    .line 374
    aget-object v24, v1, v7

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x40

    aput v25, v24, v2

    .line 375
    aget-object v24, v1, v7

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 376
    aget-object v24, v1, v7

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x8b

    aput v25, v24, v4

    .line 377
    aget-object v24, v1, v7

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x8c

    aput v25, v24, v4

    .line 378
    aget-object v24, v1, v8

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x50

    aput v25, v24, v2

    .line 379
    aget-object v24, v1, v8

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 380
    aget-object v24, v1, v8

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xae

    aput v25, v24, v4

    .line 381
    aget-object v24, v1, v8

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xaf

    aput v25, v24, v4

    .line 382
    aget-object v24, v1, v9

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v6, v24, v2

    .line 383
    aget-object v24, v1, v9

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v6, v24, v2

    .line 384
    aget-object v24, v1, v9

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xd0

    aput v25, v24, v4

    .line 385
    aget-object v24, v1, v9

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xd1

    aput v25, v24, v4

    .line 386
    aget-object v24, v1, v10

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x70

    aput v25, v24, v2

    .line 387
    aget-object v24, v1, v10

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 388
    aget-object v24, v1, v10

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xf3

    aput v25, v24, v4

    .line 389
    aget-object v24, v1, v10

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0xf4

    aput v25, v24, v4

    .line 390
    aget-object v24, v1, v12

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x80

    aput v25, v24, v2

    .line 391
    aget-object v24, v1, v12

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 392
    aget-object v24, v1, v12

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x116

    aput v25, v24, v4

    .line 393
    aget-object v24, v1, v12

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x117

    aput v25, v24, v4

    .line 394
    aget-object v24, v1, v13

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xa0

    aput v25, v24, v2

    .line 395
    aget-object v24, v1, v13

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 396
    aget-object v24, v1, v13

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x15c

    aput v25, v24, v4

    .line 397
    aget-object v24, v1, v13

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x15d

    aput v25, v24, v4

    .line 398
    aget-object v24, v1, v14

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v11, v24, v2

    .line 399
    aget-object v24, v1, v14

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v11, v24, v2

    .line 400
    aget-object v24, v1, v14

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1a1

    aput v25, v24, v4

    .line 401
    aget-object v24, v1, v14

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x1a2

    aput v25, v24, v4

    .line 402
    aget-object v24, v1, v15

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0xe0

    aput v25, v24, v2

    .line 403
    aget-object v24, v1, v15

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 404
    aget-object v24, v1, v15

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1e7

    aput v25, v24, v4

    .line 405
    aget-object v24, v1, v15

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x1e8

    aput v25, v24, v4

    .line 406
    aget-object v24, v1, v17

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x100

    aput v25, v24, v2

    .line 407
    aget-object v24, v1, v17

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 408
    aget-object v24, v1, v17

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x22d

    aput v25, v24, v4

    .line 409
    aget-object v24, v1, v17

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x22e

    aput v25, v24, v4

    .line 410
    aget-object v24, v1, v18

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x140

    aput v25, v24, v2

    .line 411
    aget-object v24, v1, v18

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 412
    aget-object v24, v1, v18

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x2b8

    aput v25, v24, v4

    .line 413
    aget-object v24, v1, v18

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x2b9

    aput v25, v24, v4

    .line 414
    aget-object v24, v1, v19

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    aput v16, v24, v2

    .line 415
    aget-object v24, v1, v19

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v16, v24, v2

    .line 416
    aget-object v24, v1, v19

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x343

    aput v25, v24, v4

    .line 417
    aget-object v24, v1, v19

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x344

    aput v25, v24, v4

    .line 418
    aget-object v24, v1, v20

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x1c0

    aput v25, v24, v2

    .line 419
    aget-object v24, v1, v20

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 420
    aget-object v24, v1, v20

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x3cf

    aput v25, v24, v4

    .line 421
    aget-object v24, v1, v20

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v4

    .line 422
    aget-object v24, v1, v21

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x200

    aput v25, v24, v2

    .line 423
    aget-object v24, v1, v21

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 424
    aget-object v24, v1, v21

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x45a

    aput v25, v24, v4

    .line 425
    aget-object v24, v1, v21

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x45b

    aput v25, v24, v4

    .line 426
    aget-object v24, v1, v22

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x240

    aput v25, v24, v2

    .line 427
    aget-object v24, v1, v22

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 428
    aget-object v24, v1, v22

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x4e5

    aput v25, v24, v4

    .line 429
    aget-object v24, v1, v22

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x4e6

    aput v25, v24, v4

    .line 430
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x280

    aput v25, v24, v2

    .line 431
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    aput v25, v24, v2

    .line 432
    aget-object v24, v1, v23

    aget-object v24, v24, v2

    aget-object v24, v24, v4

    const/16 v25, 0x571

    aput v25, v24, v4

    .line 433
    aget-object v24, v1, v23

    aget-object v24, v24, v4

    aget-object v24, v24, v4

    const/16 v25, 0x572

    aput v25, v24, v4

    .line 436
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x20

    aput v25, v24, v2

    .line 437
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 438
    aget-object v24, v1, v2

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    aput v6, v24, v4

    .line 439
    aget-object v24, v1, v2

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v6, v24, v4

    .line 440
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x28

    aput v25, v24, v2

    .line 441
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 442
    aget-object v24, v1, v4

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x78

    aput v25, v24, v4

    .line 443
    aget-object v24, v1, v4

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v4

    .line 444
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x30

    aput v25, v24, v2

    .line 445
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 446
    aget-object v24, v1, v3

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x90

    aput v25, v24, v4

    .line 447
    aget-object v24, v1, v3

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v4

    .line 448
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0x38

    aput v25, v24, v2

    .line 449
    aget-object v24, v1, v5

    aget-object v24, v24, v4

    aget-object v24, v24, v3

    aput v25, v24, v2

    .line 450
    aget-object v24, v1, v5

    aget-object v24, v24, v2

    aget-object v24, v24, v3

    const/16 v25, 0xa8

    aput v25, v24, v4

    .line 451
    aget-object v5, v1, v5

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    const/16 v24, 0xa8

    aput v24, v5, v4

    .line 452
    aget-object v5, v1, v7

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v24, 0x40

    aput v24, v5, v2

    .line 453
    aget-object v5, v1, v7

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v24, v5, v2

    .line 454
    aget-object v5, v1, v7

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v11, v5, v4

    .line 455
    aget-object v5, v1, v7

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v11, v5, v4

    .line 456
    aget-object v5, v1, v8

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v7, 0x50

    aput v7, v5, v2

    .line 457
    aget-object v5, v1, v8

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v7, v5, v2

    .line 458
    aget-object v5, v1, v8

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v7, 0xf0

    aput v7, v5, v4

    .line 459
    aget-object v5, v1, v8

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v7, v5, v4

    .line 460
    aget-object v5, v1, v9

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 461
    aget-object v5, v1, v9

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 462
    aget-object v5, v1, v9

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x120

    aput v6, v5, v4

    .line 463
    aget-object v5, v1, v9

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 464
    aget-object v5, v1, v10

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x70

    aput v6, v5, v2

    .line 465
    aget-object v5, v1, v10

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 466
    aget-object v5, v1, v10

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x150

    aput v6, v5, v4

    .line 467
    aget-object v5, v1, v10

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 468
    aget-object v5, v1, v12

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x80

    aput v6, v5, v2

    .line 469
    aget-object v5, v1, v12

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 470
    aget-object v5, v1, v12

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v16, v5, v4

    .line 471
    aget-object v5, v1, v12

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v16, v5, v4

    .line 472
    aget-object v5, v1, v13

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0xa0

    aput v6, v5, v2

    .line 473
    aget-object v5, v1, v13

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 474
    aget-object v5, v1, v13

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x1e0

    aput v6, v5, v4

    .line 475
    aget-object v5, v1, v13

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 476
    aget-object v5, v1, v14

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v11, v5, v2

    .line 477
    aget-object v5, v1, v14

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v11, v5, v2

    .line 478
    aget-object v5, v1, v14

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x240

    aput v6, v5, v4

    .line 479
    aget-object v5, v1, v14

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 480
    aget-object v5, v1, v15

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0xe0

    aput v6, v5, v2

    .line 481
    aget-object v5, v1, v15

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 482
    aget-object v5, v1, v15

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x2a0

    aput v6, v5, v4

    .line 483
    aget-object v5, v1, v15

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 484
    aget-object v5, v1, v17

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x100

    aput v6, v5, v2

    .line 485
    aget-object v5, v1, v17

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 486
    aget-object v5, v1, v17

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x300

    aput v6, v5, v4

    .line 487
    aget-object v5, v1, v17

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 488
    aget-object v5, v1, v18

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x140

    aput v6, v5, v2

    .line 489
    aget-object v5, v1, v18

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 490
    aget-object v5, v1, v18

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x3c0

    aput v6, v5, v4

    .line 491
    aget-object v5, v1, v18

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 492
    aget-object v5, v1, v19

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput v16, v5, v2

    .line 493
    aget-object v5, v1, v19

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v16, v5, v2

    .line 494
    aget-object v5, v1, v19

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x480

    aput v6, v5, v4

    .line 495
    aget-object v5, v1, v19

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 496
    aget-object v5, v1, v20

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x1c0

    aput v6, v5, v2

    .line 497
    aget-object v5, v1, v20

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 498
    aget-object v5, v1, v20

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x540

    aput v6, v5, v4

    .line 499
    aget-object v5, v1, v20

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 500
    aget-object v5, v1, v21

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x200

    aput v6, v5, v2

    .line 501
    aget-object v5, v1, v21

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 502
    aget-object v5, v1, v21

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x600

    aput v6, v5, v4

    .line 503
    aget-object v5, v1, v21

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 504
    aget-object v5, v1, v22

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x240

    aput v6, v5, v2

    .line 505
    aget-object v5, v1, v22

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 506
    aget-object v5, v1, v22

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x6c0

    aput v6, v5, v4

    .line 507
    aget-object v5, v1, v22

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v4

    .line 508
    aget-object v5, v1, v23

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/16 v6, 0x280

    aput v6, v5, v2

    .line 509
    aget-object v5, v1, v23

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    aput v6, v5, v2

    .line 510
    aget-object v5, v1, v23

    aget-object v2, v5, v2

    aget-object v2, v2, v3

    const/16 v5, 0x780

    aput v5, v2, v4

    .line 511
    aget-object v1, v1, v23

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    const/16 v2, 0x780

    aput v2, v1, v4

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 52
    fill-array-data p1, :array_0

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[I

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    .line 53
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    .line 54
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->initBitRateAndFrameSizeTable()V

    .line 55
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readVariables()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 60
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v0, "ac-3"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 62
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x10

    .line 64
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 66
    new-instance v1, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;-><init>()V

    .line 67
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setAcmod(I)V

    .line 68
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    shr-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBitRateCode(I)V

    .line 69
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsid(I)V

    .line 70
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsmod(I)V

    .line 71
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setFscod(I)V

    .line 72
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setLfeon(I)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setReserved(I)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 78
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 79
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 80
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 83
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 56
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 258
    :cond_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    const/4 v0, 0x5

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 261
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    const/4 v4, -0x1

    .line 262
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v3, 0x4

    .line 264
    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    .line 265
    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    .line 266
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 267
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    new-array v3, v3, [B

    .line 268
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 269
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x600

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->mark(I)V

    move v3, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private readVariables()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    new-array v1, v0, [B

    .line 133
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 134
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v0, v2, :cond_0

    return v3

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 138
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x10

    .line 140
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    const/16 v4, 0xb77

    if-eq v2, v4, :cond_1

    return v3

    .line 144
    :cond_1
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v0, 0x2

    .line 145
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

    .line 161
    :cond_2
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x7d00

    .line 157
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_4
    const v2, 0xac44

    .line 153
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_0

    :cond_5
    const v2, 0xbb80

    .line 149
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    .line 165
    :goto_0
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    if-nez v2, :cond_6

    return v3

    :cond_6
    const/4 v2, 0x6

    .line 169
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    .line 171
    invoke-direct {p0, v6}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    move-result v6

    if-nez v6, :cond_7

    return v3

    .line 175
    :cond_7
    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    if-nez v6, :cond_8

    return v3

    :cond_8
    const/4 v6, 0x5

    .line 178
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    .line 179
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    .line 180
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    .line 182
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_9

    .line 183
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

    .line 189
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 192
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 193
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 196
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    if-ne v2, v0, :cond_d

    .line 197
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 200
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 230
    :pswitch_0
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 226
    :pswitch_1
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 222
    :pswitch_2
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 218
    :pswitch_3
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 214
    :pswitch_4
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 210
    :pswitch_5
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 206
    :pswitch_6
    iput v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 202
    :pswitch_7
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    .line 235
    :goto_2
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    if-ne v0, v5, :cond_e

    .line 238
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

    .line 100
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

    .line 124
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

    .line 96
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

    .line 92
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

    .line 116
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
