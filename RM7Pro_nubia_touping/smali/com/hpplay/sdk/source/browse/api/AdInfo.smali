.class public Lcom/hpplay/sdk/source/browse/api/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_3RD_CLICK_URL:Ljava/lang/String; = "tcurl"

.field private static final KEY_3RD_PV_URL:Ljava/lang/String; = "tpurl"

.field private static final KEY_AD_SESSION_ID:Ljava/lang/String; = "ads"

.field private static final KEY_AREA:Ljava/lang/String; = "area"

.field private static final KEY_CLICK_URL:Ljava/lang/String; = "curl"

.field private static final KEY_CREATIVE_ID:Ljava/lang/String; = "cid"

.field private static final KEY_CREATIVE_TYPE:Ljava/lang/String; = "ct"

.field private static final KEY_DURATION:Ljava/lang/String; = "d"

.field private static final KEY_END_TIME:Ljava/lang/String; = "et"

.field private static final KEY_FILE_MD5:Ljava/lang/String; = "md5"

.field private static final KEY_FILE_SIZE:Ljava/lang/String; = "fs"

.field private static final KEY_FILE_TIME:Ljava/lang/String; = "filetime"

.field private static final KEY_IMP_URL:Ljava/lang/String; = "purl"

.field private static final KEY_IS_EFFECTIVE:Ljava/lang/String; = "ef"

.field private static final KEY_IS_INTERACTIVE:Ljava/lang/String; = "itc"

.field private static final KEY_LINK_POS:Ljava/lang/String; = "lpos"

.field private static final KEY_LINK_SHOW_TYPE:Ljava/lang/String; = "lst"

.field private static final KEY_LINK_TYPE:Ljava/lang/String; = "lt"

.field private static final KEY_LOAD_SECOND:Ljava/lang/String; = "lse"

.field private static final KEY_PLATFORM_TYPE:Ljava/lang/String; = "platformtype"

.field private static final KEY_PLAY_TYPE:Ljava/lang/String; = "playtype"

.field private static final KEY_PRECISE:Ljava/lang/String; = "precise"

.field private static final KEY_SHOW_TEXT_POS:Ljava/lang/String; = "tpos"

.field private static final KEY_SOURCE_URL:Ljava/lang/String; = "surl"

.field private static final KEY_START_SHOW_TIME:Ljava/lang/String; = "showt"

.field private static final KEY_START_TIME:Ljava/lang/String; = "st"

.field private static final KEY_SUB_CREATIVE:Ljava/lang/String; = "subCreative"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TXT:Ljava/lang/String; = "txt"

.field private static final KEY_TYPE:Ljava/lang/String; = "t"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private adSessionId:Ljava/lang/String;

.field private area:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private creativeId:I

.field private creativeType:I

.field private duration:I

.field private entTime:I

.field private fileSize:I

.field private fileTime:I

.field private impUrl:Ljava/lang/String;

.field private isEffective:Z

.field private isInteractive:Z

.field private isPrecise:Z

.field private linkPosition:I

.field private linkShowType:I

.field private linkType:I

.field private loadSecond:I

.field private md5:Ljava/lang/String;

.field private platformType:I

.field private playType:I

.field private showTextPosition:I

.field private sourceUrl:Ljava/lang/String;

.field private startShowTime:I

.field private startTime:I

.field private subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

.field private thirdpartyCkMonitorUrls:[Ljava/lang/String;

.field private thirdpartyPvMonitorUrls:[Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private txt:Ljava/lang/String;

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 501
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/AdInfo$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    .line 487
    const-class v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    .line 499
    return-void

    :cond_0
    move v0, v2

    .line 474
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 478
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 482
    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->decode(Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    .line 339
    const-string v0, "area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    .line 340
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    .line 341
    const-string v0, "ct"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    .line 342
    const-string v0, "curl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    .line 343
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    .line 344
    const-string v0, "ef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    .line 345
    const-string v0, "et"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    .line 346
    const-string v0, "filetime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    .line 347
    const-string v0, "fs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    .line 348
    const-string v0, "itc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    .line 349
    const-string v0, "lse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    .line 350
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    .line 351
    const-string v0, "platformtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    .line 352
    const-string v0, "precise"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    .line 353
    const-string v0, "playtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    .line 354
    const-string v0, "purl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    .line 355
    const-string v0, "showt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    .line 356
    const-string v0, "st"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    .line 357
    const-string v0, "subCreative"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 359
    new-instance v1, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    .line 361
    :cond_0
    const-string v0, "surl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    .line 362
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    .line 363
    const-string v0, "tcurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 365
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 366
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    move v0, v2

    .line 367
    :goto_3
    if-ge v0, v3, :cond_4

    .line 368
    iget-object v4, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 344
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 348
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 352
    goto :goto_2

    .line 371
    :cond_4
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    .line 372
    const-string v0, "tpos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    .line 373
    const-string v0, "tpurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v1, :cond_5

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 376
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    .line 377
    :goto_4
    if-ge v2, v0, :cond_5

    .line 378
    iget-object v3, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 381
    :cond_5
    const-string v0, "txt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    .line 382
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    .line 385
    const-string v0, "lpos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    .line 386
    const-string v0, "lst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    .line 387
    const-string v0, "lt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    .line 388
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public getAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    return v0
.end method

.method public getCreativeType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    return v0
.end method

.method public getEntTime()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    return v0
.end method

.method public getFileTime()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    return v0
.end method

.method public getImpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPosition()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    return v0
.end method

.method public getLinkShowType()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    return v0
.end method

.method public getLoadSecond()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    return v0
.end method

.method public getPlayType()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    return v0
.end method

.method public getShowTextPosition()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    return v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartShowTime()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    return v0
.end method

.method public getSubCreative()Lcom/hpplay/sdk/source/browse/api/AdInfo;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    return-object v0
.end method

.method public getThirdpartyCkMonitorUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getThirdpartyPvMonitorUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isEffective()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    return v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    return v0
.end method

.method public setAdSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setCreativeId(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    .line 111
    return-void
.end method

.method public setCreativeType(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    .line 119
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    .line 135
    return-void
.end method

.method public setEffective(Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    .line 143
    return-void
.end method

.method public setEntTime(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    .line 151
    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    .line 167
    return-void
.end method

.method public setFileTime(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    .line 159
    return-void
.end method

.method public setImpUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    .line 175
    return-void
.end method

.method public setLinkPosition(I)V
    .locals 0

    .prologue
    .line 318
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    .line 319
    return-void
.end method

.method public setLinkShowType(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    .line 327
    return-void
.end method

.method public setLinkType(I)V
    .locals 0

    .prologue
    .line 334
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    .line 335
    return-void
.end method

.method public setLoadSecond(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    .line 183
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPlatformType(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    .line 199
    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    .line 215
    return-void
.end method

.method public setPrecise(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    .line 207
    return-void
.end method

.method public setShowTextPosition(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    .line 287
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setStartShowTime(I)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    .line 231
    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    .line 239
    return-void
.end method

.method public setSubCreative(Lcom/hpplay/sdk/source/browse/api/AdInfo;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    .line 247
    return-void
.end method

.method public setThirdpartyCkMonitorUrls([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setThirdpartyPvMonitorUrls([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    .line 263
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfo{adSessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creativeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEffective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInteractive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", md5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPrecise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startShowTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thirdpartyCkMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    .line 415
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showTextPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thirdpartyPvMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    .line 418
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkShowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->adSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->area:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->creativeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isEffective:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 441
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->entTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->fileSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isInteractive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 445
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->loadSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->platformType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->isPrecise:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 449
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->playType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->impUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startShowTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->subCreative:Lcom/hpplay/sdk/source/browse/api/AdInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 454
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyCkMonitorUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->showTextPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->thirdpartyPvMonitorUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkShowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->linkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    return-void

    :cond_0
    move v0, v2

    .line 440
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 444
    goto :goto_1

    :cond_2
    move v1, v2

    .line 448
    goto :goto_2
.end method
