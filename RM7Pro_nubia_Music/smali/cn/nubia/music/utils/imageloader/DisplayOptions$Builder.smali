.class public Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/utils/imageloader/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private crossFade:Z

.field private crossFadeDuration:I

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private resizeToCircle:Z

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetWidth:I

    .line 70
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetHeight:I

    .line 71
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResForEmptyUri:I

    .line 72
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnLoading:I

    .line 73
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnFail:I

    .line 74
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 75
    iput-boolean v2, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle:Z

    .line 76
    iput-boolean v2, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->crossFade:Z

    .line 77
    iput v1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->crossFadeDuration:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetWidth:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetHeight:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle:Z

    return v0
.end method


# virtual methods
.method public build()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions;-><init>(Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;Lcn/nubia/music/utils/imageloader/DisplayOptions$1;)V

    return-object v0
.end method

.method public configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 108
    :cond_0
    return-object p0
.end method

.method public crossFade(ZI)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->crossFade:Z

    .line 118
    iput p2, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->crossFadeDuration:I

    .line 119
    return-object p0
.end method

.method public displayHeight(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetHeight:I

    .line 101
    return-object p0
.end method

.method public displayWidth(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->targetWidth:I

    .line 96
    return-object p0
.end method

.method public resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle:Z

    .line 113
    return-object p0
.end method

.method public showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResForEmptyUri:I

    .line 86
    return-object p0
.end method

.method public showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnFail:I

    .line 91
    return-object p0
.end method

.method public showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->imageResOnLoading:I

    .line 81
    return-object p0
.end method
