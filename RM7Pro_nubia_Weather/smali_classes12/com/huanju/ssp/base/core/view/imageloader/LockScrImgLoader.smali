.class public Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;
.super Ljava/lang/Object;
.source "LockScrImgLoader.java"


# static fields
.field private static final THREAD_POOL_NAME:Ljava/lang/String; = "IMAGE_THREAD_POOL"

.field private static imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;

.field private static mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 44
    const-string v0, "IMAGE_THREAD_POOL"

    invoke-static {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 45
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    .line 49
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 50
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 51
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v0

    .line 61
    .local v0, "array":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 62
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    :cond_0
    return-object v1
.end method

.method public static getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 68
    const/4 v5, 0x0

    new-array v0, v5, [B

    .line 70
    .local v0, "data":[B
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    sget-object v5, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v5, p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 73
    if-eqz v0, :cond_0

    array-length v5, v0

    if-gtz v5, :cond_1

    .line 74
    :cond_0
    const-string v5, "loadFromNet"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v5

    iget v4, v5, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    .line 76
    .local v4, "netType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---getByteArray checkNet netType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 77
    if-eqz v4, :cond_1

    .line 78
    invoke-static {v4}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRequstByMobile(I)Z

    move-result v3

    .line 79
    .local v3, "isRequest":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---getByteArray checkNet isRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 80
    if-eqz v3, :cond_1

    .line 81
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v3    # "isRequest":Z
    .end local v4    # "netType":I
    :cond_1
    move-object v1, v0

    .line 93
    .end local v0    # "data":[B
    .local v1, "data":[B
    :goto_0
    return-object v1

    .line 87
    .end local v1    # "data":[B
    .restart local v0    # "data":[B
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->clear()V

    .line 89
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 93
    .end local v0    # "data":[B
    .restart local v1    # "data":[B
    goto :goto_0

    .line 90
    .end local v1    # "data":[B
    .restart local v0    # "data":[B
    :catch_1
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getmThreadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    return-object v0
.end method

.method private static loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 109
    const/4 v7, 0x0

    new-array v2, v7, [B

    .line 110
    .local v2, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    .local v0, "curTime":J
    const-string v7, "start connect "

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 115
    :cond_0
    const/4 v4, 0x0

    .line 117
    .local v4, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_0
    new-instance v5, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    new-instance v7, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader$1;

    sget-object v8, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {v7, v8, p0}, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader$1;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v7, p0}, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader$1;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .local v5, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    move-object v4, v5

    .line 147
    .end local v5    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v4    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end connect cast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 148
    if-eqz p1, :cond_1

    .line 149
    const/4 v7, 0x5

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 152
    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .local v6, "stream":Ljava/io/InputStream;
    if-eqz v6, :cond_4

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    const-string v7, "start loadImageDate "

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_2

    .line 156
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 158
    :cond_2
    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->getByteFromStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end loadImageDate cast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 160
    if-eqz p1, :cond_3

    .line 161
    const/4 v7, 0x7

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 163
    :cond_3
    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 164
    if-eqz v2, :cond_4

    array-length v7, v2

    if-lez v7, :cond_4

    .line 165
    sget-object v7, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v7, p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->putCache(Ljava/lang/String;[B)V

    .line 168
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_4
    return-object v2

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
