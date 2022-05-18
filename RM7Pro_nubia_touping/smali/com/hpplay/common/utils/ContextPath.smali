.class public Lcom/hpplay/common/utils/ContextPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_PATH:Ljava/lang/String; = "app_path"

.field public static final CACHE_DATA_APK:Ljava/lang/String; = "cache_data_apk"

.field public static final CACHE_DATA_AV:Ljava/lang/String; = "cache_data_av"

.field public static final CACHE_DATA_COMMON:Ljava/lang/String; = "cache_data_common"

.field public static final CACHE_DATA_FILE:Ljava/lang/String; = "cache_data_file"

.field public static final CACHE_DATA_IMG:Ljava/lang/String; = "cache_data_img"

.field public static final CACHE_HPPLAY:Ljava/lang/String; = "cache_hpplay"

.field public static final DATA_APK:Ljava/lang/String; = "data_apk"

.field public static final DATA_AV:Ljava/lang/String; = "data_av"

.field public static final DATA_COMMON:Ljava/lang/String; = "data_common"

.field public static final DATA_FILE:Ljava/lang/String; = "data_file"

.field public static final DATA_HPPLAY:Ljava/lang/String; = "data_hpplay"

.field public static final DATA_IMG:Ljava/lang/String; = "data_img"

.field public static final DATA_UPDATE:Ljava/lang/String; = "data_update"

.field public static final LIB:Ljava/lang/String; = "lib"

.field public static final SDCARD_APK:Ljava/lang/String; = "sdcard_apk"

.field public static final SDCARD_AV:Ljava/lang/String; = "sdcard_av"

.field public static final SDCARD_COMMON:Ljava/lang/String; = "sdcard_common"

.field public static final SDCARD_FILE:Ljava/lang/String; = "sdcard_file"

.field public static final SDCARD_HPPLAY:Ljava/lang/String; = "sdcard_hpplay"

.field public static final SDCARD_IMG:Ljava/lang/String; = "sdcard_img"

.field public static final SDCARD_UPDATE:Ljava/lang/String; = "sdcard_update"

.field private static final TAG:Ljava/lang/String; = "ContextPath"

.field public static final TYPE_SOURCE_APP:I = 0x3

.field public static final TYPE_SOURCE_SDK:I = 0x2

.field public static final TYPE_THINK_APP:I = 0x1

.field public static final TYPE_THINK_SDK:I

.field private static mPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/hpplay/common/utils/ContextPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dirMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/common/utils/ContextPath;->mPathMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/hpplay/common/utils/ContextPath;->initDirs(Landroid/content/Context;I)V

    .line 131
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/hpplay/common/utils/ContextPath;
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/hpplay/common/utils/ContextPath;->mPathMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/common/utils/ContextPath;

    .line 122
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/hpplay/common/utils/ContextPath;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/common/utils/ContextPath;-><init>(Landroid/content/Context;I)V

    .line 124
    sget-object v1, Lcom/hpplay/common/utils/ContextPath;->mPathMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-object v0
.end method

.method private initDirs(Landroid/content/Context;I)V
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context con not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    const-string v0, "hpplay"

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 175
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "cache_data_file"

    aput-object v4, v3, v5

    const-string v4, "cache_data_img"

    aput-object v4, v3, v6

    const-string v4, "cache_data_av"

    aput-object v4, v3, v7

    const-string v4, "cache_data_apk"

    aput-object v4, v3, v8

    const-string v4, "cache_data_common"

    aput-object v4, v3, v9

    .line 177
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/hpplay/common/utils/ContextPath;->makeDir([Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    const-string v3, "cache_hpplay"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 181
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data_file"

    aput-object v3, v2, v5

    const-string v3, "data_img"

    aput-object v3, v2, v6

    const-string v3, "data_av"

    aput-object v3, v2, v7

    const-string v3, "data_apk"

    aput-object v3, v2, v8

    const-string v3, "data_common"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "data_update"

    aput-object v4, v2, v3

    .line 183
    invoke-direct {p0, v2, v0}, Lcom/hpplay/common/utils/ContextPath;->makeDir([Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    const-string v2, "data_hpplay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    const-string v2, "app_path"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, ""

    .line 192
    packed-switch p2, :pswitch_data_0

    .line 206
    :goto_0
    const-string v1, ""

    .line 207
    const-string v2, "/mnt/sdcard"

    .line 209
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 215
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    const/4 v1, 0x6

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdcard_file"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdcard_img"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdcard_av"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sdcard_apk"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sdcard_common"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sdcard_update"

    aput-object v3, v1, v2

    .line 217
    invoke-direct {p0, v1, v0}, Lcom/hpplay/common/utils/ContextPath;->makeDir([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_2
    iget-object v1, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    const-string v2, "sdcard_hpplay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    const-string v1, "lib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void

    .line 194
    :pswitch_0
    const-string v0, "sink/sdk"

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "sink/app"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "source/sdk"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "source/app"

    goto :goto_0

    .line 212
    :cond_1
    :try_start_2
    const-string v3, "ContextPath"

    const-string v4, "can not get sdcard path, use default"

    invoke-static {v3, v4}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 220
    :goto_3
    const-string v2, "ContextPath"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 218
    :catch_1
    move-exception v1

    goto :goto_3

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs jointPath([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 152
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 153
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDir([Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "file"

    aput-object v0, v2, v1

    const-string v0, "image"

    aput-object v0, v2, v6

    const-string v0, "av"

    aput-object v0, v2, v7

    const/4 v0, 0x3

    const-string v3, "apk"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "common"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "hpdata"

    aput-object v3, v2, v0

    move v0, v1

    .line 228
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 229
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 230
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aget-object v4, v2, v0

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-direct {p0, v3}, Lcom/hpplay/common/utils/ContextPath;->mkdirs(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    aget-object v5, p1, v0

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method

.method private mkdirs(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hpplay/common/utils/ContextPath;->dirMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    if-nez v0, :cond_0

    .line 143
    const-string v0, ""

    .line 145
    :cond_0
    return-object v0
.end method
