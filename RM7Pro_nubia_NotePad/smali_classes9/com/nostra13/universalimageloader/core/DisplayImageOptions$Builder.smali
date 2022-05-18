.class public Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private considerExifParams:Z

.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private delayBeforeLoading:I

.field private displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private extraForDownloader:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private imageOnFail:Landroid/graphics/drawable/Drawable;

.field private imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private isSyncLoading:Z

.field private postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private resetViewBeforeLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 210
    iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 211
    iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 212
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 216
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 217
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 218
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 219
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 220
    iput v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 222
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 223
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 224
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 225
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 226
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 227
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method


# virtual methods
.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 396
    return-object p0
.end method

.method public build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V

    return-object v0
.end method

.method public cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 343
    return-object p0
.end method

.method public cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "cacheInMemory"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 349
    return-object p0
.end method

.method public cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .param p1, "cacheOnDisk"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "cacheOnDisk"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 375
    return-object p0
.end method

.method public cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1
    .param p1, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 482
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$1900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 483
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 484
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 485
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 486
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 489
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 490
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 491
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 492
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$2900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 493
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 494
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 495
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 496
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 497
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 498
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 499
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 500
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->access$3700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 501
    return-object p0
.end method

.method public considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "considerExifParams"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 432
    return-object p0
.end method

.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .param p1, "decodingOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decodingOptions can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 411
    return-object p0
.end method

.method public delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "delayInMillis"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 417
    return-object p0
.end method

.method public displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 2
    .param p1, "displayer"    # Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 463
    return-object p0
.end method

.method public extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 426
    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 477
    return-object p0
.end method

.method public imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 385
    return-object p0
.end method

.method public postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "postProcessor"    # Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 452
    return-object p0
.end method

.method public preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "preProcessor"    # Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 442
    return-object p0
.end method

.method public resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 323
    return-object p0
.end method

.method public resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "resetViewBeforeLoading"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 332
    return-object p0
.end method

.method public showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 276
    return-object p0
.end method

.method public showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 288
    return-object p0
.end method

.method public showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 300
    return-object p0
.end method

.method public showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 311
    return-object p0
.end method

.method public showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 252
    return-object p0
.end method

.method public showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 263
    return-object p0
.end method

.method public showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iput p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 240
    return-object p0
.end method

.method syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "isSyncLoading"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    .line 468
    return-object p0
.end method
