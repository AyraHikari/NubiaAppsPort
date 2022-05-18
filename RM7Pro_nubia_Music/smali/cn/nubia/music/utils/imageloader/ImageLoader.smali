.class public final enum Lcn/nubia/music/utils/imageloader/ImageLoader;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/utils/imageloader/ImageLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/utils/imageloader/ImageLoader;

.field public static final enum INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcn/nubia/music/utils/imageloader/ImageLoader;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/utils/imageloader/ImageLoader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/nubia/music/utils/imageloader/ImageLoader;

    sget-object v1, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->$VALUES:[Lcn/nubia/music/utils/imageloader/ImageLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance v0, Lcn/nubia/music/utils/imageloader/a;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    .line 21
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 24
    return-void
.end method

.method private assertDestroyed(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private contextDestroyed(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, v0}, Lcn/nubia/music/utils/imageloader/ImageLoader;->assertDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->assertDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/utils/imageloader/ImageLoader;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcn/nubia/music/utils/imageloader/ImageLoader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/utils/imageloader/ImageLoader;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/utils/imageloader/ImageLoader;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->$VALUES:[Lcn/nubia/music/utils/imageloader/ImageLoader;

    invoke-virtual {v0}, [Lcn/nubia/music/utils/imageloader/ImageLoader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/utils/imageloader/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public clearDiskCache(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/IFetcher;->clearDiskCache(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Landroid/app/Notification;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-interface/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/IFetcher;->displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public displayGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/IFetcher;->displayGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public displayImage(Landroid/content/Context;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/IFetcher;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/IFetcher;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/IFetcher;->displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public downloadOnly(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoader;->contextDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mImageFetcher:Lcn/nubia/music/utils/imageloader/IFetcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/music/utils/imageloader/IFetcher;->downloadOnly(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public setBitmapConfig(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmapConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "ARGB_8888"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "ImageLoader"

    const-string v1, "setBitmapConfig ARGB_8888"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "RGB_565"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "ImageLoader"

    const-string v1, "setBitmapConfig RGB_565"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/ImageLoader;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
