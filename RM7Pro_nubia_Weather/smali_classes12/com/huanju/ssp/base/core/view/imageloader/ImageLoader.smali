.class public Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


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

    .line 36
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 40
    const-string v0, "IMAGE_THREAD_POOL"

    invoke-static {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 41
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    .line 46
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 47
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 48
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->setImageSafe(Landroid/view/View;Ljava/lang/String;[B)V

    return-void
.end method

.method public static adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 202
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 191
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 192
    .local v2, "dst":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "fileType":Ljava/lang/String;
    const-string v5, "47494638"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eq v5, v6, :cond_3

    .line 196
    :cond_2
    const/4 v5, 0x0

    array-length v6, p1

    sget-object v7, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2    # "dst":[B
    .end local v4    # "fileType":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v1, v0

    .line 202
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 198
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static asyncLoad(Landroid/view/View;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 77
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;Landroid/view/View;)V

    .line 87
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v0

    .line 93
    .local v0, "array":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 94
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    :cond_0
    return-object v1
.end method

.method public static getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 100
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 102
    .local v0, "data":[B
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    sget-object v3, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v3, p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 115
    .end local v0    # "data":[B
    .local v1, "data":[B
    :goto_0
    return-object v1

    .line 109
    .end local v1    # "data":[B
    .restart local v0    # "data":[B
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->clear()V

    .line 111
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 115
    .end local v0    # "data":[B
    .restart local v1    # "data":[B
    goto :goto_0

    .line 112
    .end local v1    # "data":[B
    .restart local v0    # "data":[B
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getmThreadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    return-object v0
.end method

.method public static load(Landroid/view/View;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v1, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    .local v0, "data":[B
    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0, p1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->setImageSafe(Landroid/view/View;Ljava/lang/String;[B)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->asyncLoad(Landroid/view/View;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)V

    goto :goto_0
.end method

.method private static loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/common/ImgDownListener;

    .prologue
    .line 122
    const/4 v7, 0x0

    new-array v2, v7, [B

    .line 123
    .local v2, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "curTime":J
    const-string v7, "start connect "

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 130
    .local v4, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_0
    new-instance v5, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    new-instance v7, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;

    sget-object v8, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {v7, v8, p0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v7, p0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .local v5, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    move-object v4, v5

    .line 160
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

    .line 161
    if-eqz p1, :cond_1

    .line 162
    const/4 v7, 0x5

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 165
    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .local v6, "stream":Ljava/io/InputStream;
    if-eqz v6, :cond_4

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    const-string v7, "start loadImageDate "

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_2

    .line 169
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 171
    :cond_2
    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->getByteFromStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 172
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

    .line 173
    if-eqz p1, :cond_3

    .line 174
    const/4 v7, 0x7

    invoke-interface {p1, v7}, Lcom/huanju/ssp/base/core/common/ImgDownListener;->onAdStatusChange(I)V

    .line 176
    :cond_3
    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 177
    if-eqz v2, :cond_4

    array-length v7, v2

    if-lez v7, :cond_4

    .line 178
    sget-object v7, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->imageCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;

    invoke-interface {v7, p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;->putCache(Ljava/lang/String;[B)V

    .line 181
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_4
    return-object v2

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setImageSafe(Landroid/view/View;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;-><init>(Landroid/view/View;[BLjava/lang/String;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
