.class public Lcn/nubia/upgrade/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final DEFAULT_IMEI:Ljava/lang/String; = "imei_unknown"

.field public static final DEFAULT_MOBILE_TYPE:Ljava/lang/String; = "mobile_type_unknown"

.field public static final DEFAULT_ROM:Ljava/lang/String; = "rom_unknown"

.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

.field public static mDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private checkSDCard()Z
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 331
    if-eqz p0, :cond_0

    .line 333
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSilently error: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doExec([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "commands"    # [Ljava/lang/String;

    .prologue
    .line 290
    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 291
    .local v7, "processBuilder":Ljava/lang/ProcessBuilder;
    const-string v9, "\n"

    .line 292
    .local v9, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 294
    .local v6, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 296
    .local v1, "error":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 297
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 298
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .end local v1    # "error":Ljava/io/BufferedReader;
    .local v2, "error":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 302
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 304
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 307
    :cond_1
    const-string v10, "CommonUtils"

    const-string v11, "command->wait for"

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v8

    .line 309
    .local v8, "result":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 310
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doExec result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 317
    invoke-static {v4}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v2}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 320
    if-eqz v6, :cond_2

    .line 321
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v1, v2

    .end local v2    # "error":Ljava/io/BufferedReader;
    .restart local v1    # "error":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 327
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "result":I
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-object v9

    .line 323
    .end local v1    # "error":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "error":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "result":I
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "process destroy Exception e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2    # "error":Ljava/io/BufferedReader;
    .restart local v1    # "error":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 326
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "result":I
    :catch_1
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 317
    invoke-static {v3}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v1}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 320
    if-eqz v6, :cond_3

    .line 321
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 323
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "process destroy Exception e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_4
    :try_start_6
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InterruptedException e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    invoke-static {v3}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v1}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 320
    if-eqz v6, :cond_3

    .line 321
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 323
    :catch_4
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "process destroy Exception e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_5
    invoke-static {v3}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v1}, Lcn/nubia/upgrade/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 320
    if-eqz v6, :cond_4

    .line 321
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 325
    :cond_4
    :goto_6
    throw v10

    .line 323
    :catch_5
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "CommonUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process destroy Exception e = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1    # "error":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "error":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "error":Ljava/io/BufferedReader;
    .restart local v1    # "error":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 314
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1    # "error":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "error":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "error":Ljava/io/BufferedReader;
    .restart local v1    # "error":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 311
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v1    # "error":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "error":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "error":Ljava/io/BufferedReader;
    .restart local v1    # "error":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "isGet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "parmsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v4, "parameterBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    .line 246
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 250
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 252
    .local v5, "value":Ljava/lang/Object;
    instance-of v8, v5, Ljava/util/Collection;

    if-eqz v8, :cond_1

    .line 253
    check-cast v5, Ljava/util/Collection;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 256
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    check-cast v5, [Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    .line 258
    .local v6, "valueArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 259
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "valueItem":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 261
    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    add-int/lit8 v8, v1, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 265
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v1    # "i":I
    .end local v6    # "valueArray":[Ljava/lang/Object;
    .end local v7    # "valueItem":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 270
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 275
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 280
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getAllImei(Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v2, "allImeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "config.pre_primary_slot"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 367
    .local v16, "primarySlot":I
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "primarySlot="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v17, "android.telephony.TelephonyManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 369
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v14, v17

    .line 370
    .local v14, "paramType":[Ljava/lang/Class;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    aput-object v18, v15, v17

    .line 371
    .local v15, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 372
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 374
    .local v11, "instance":Ljava/lang/Object;
    const-string v17, "isMultiSimEnabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 375
    .local v13, "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 377
    .local v12, "isMultiSimEnabled":Z
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isMultiSimEnabled:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v17, "getImei"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 380
    .local v6, "getImeiMethod1":Ljava/lang/reflect/Method;
    const-string v17, "getImei"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 382
    .local v7, "getImeiMethod2":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_3

    .line 383
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 384
    .local v9, "imei1":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 385
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    if-nez v16, :cond_2

    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v6, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 389
    .local v10, "imei2":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 390
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v9    # "imei1":Ljava/lang/String;
    .end local v10    # "imei2":Ljava/lang/String;
    .end local v11    # "instance":Ljava/lang/Object;
    .end local v12    # "isMultiSimEnabled":Z
    .end local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v14    # "paramType":[Ljava/lang/Class;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "primarySlot":I
    :cond_1
    :goto_1
    return-object v2

    .line 388
    .restart local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .restart local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .restart local v9    # "imei1":Ljava/lang/String;
    .restart local v11    # "instance":Ljava/lang/Object;
    .restart local v12    # "isMultiSimEnabled":Z
    .restart local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v14    # "paramType":[Ljava/lang/Class;
    .restart local v15    # "params":[Ljava/lang/Object;
    .restart local v16    # "primarySlot":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 393
    .end local v9    # "imei1":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 394
    .local v8, "imei":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 395
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 398
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v11    # "instance":Ljava/lang/Object;
    .end local v12    # "isMultiSimEnabled":Z
    .end local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v14    # "paramType":[Ljava/lang/Class;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "primarySlot":I
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "catch an exceoption:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 468
    const-string v1, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v1, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 470
    new-instance v0, Lcn/nubia/upgrade/deviceid/DeviceId;

    const-string v1, "content://cn.nubia.provider.deviceid.dataid/oaid"

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/upgrade/deviceid/DeviceId;-><init>(Ljava/lang/String;ZZZZZ)V

    .line 471
    .local v0, "deviceId":Lcn/nubia/upgrade/deviceid/DeviceId;
    invoke-virtual {v0, p0, v2}, Lcn/nubia/upgrade/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 472
    invoke-virtual {v0}, Lcn/nubia/upgrade/deviceid/DeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    .line 474
    .end local v0    # "deviceId":Lcn/nubia/upgrade/deviceid/DeviceId;
    :cond_0
    sget-object v1, Lcn/nubia/upgrade/util/CommonUtils;->mDeviceId:Ljava/lang/String;

    return-object v1
.end method

.method public static getInstance()Lcn/nubia/upgrade/util/CommonUtils;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    if-nez v0, :cond_0

    .line 54
    const-class v1, Lcn/nubia/upgrade/util/CommonUtils;

    monitor-enter v1

    .line 55
    :try_start_0
    new-instance v0, Lcn/nubia/upgrade/util/CommonUtils;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/CommonUtils;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    const/4 v5, 0x0

    .line 414
    .local v5, "meid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "config.pre_primary_slot"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 415
    .local v7, "primarySlot":I
    const-string v8, "cn.nubia.telframeadapter.common.NBTelephonyManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 416
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getDefault"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 417
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 419
    .local v4, "instance":Ljava/lang/Object;
    const-string v8, "getMeid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 420
    .local v3, "getMeidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 421
    const-string v8, "CommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(MEID)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getMeidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "primarySlot":I
    :goto_0
    return-object v5

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    const-string v8, "CommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exceoption="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMobileType()Ljava/lang/String;
    .locals 9

    .prologue
    .line 453
    const/4 v3, 0x0

    .line 455
    .local v3, "mobileType":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 456
    .local v4, "system":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 457
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.product.model"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "system":Ljava/lang/Class;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    const-string v3, "mobile_type_unknown"

    .line 464
    :cond_0
    return-object v3

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CommonUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get mobile type error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRom()Ljava/lang/String;
    .locals 9

    .prologue
    .line 434
    const/4 v3, 0x0

    .line 436
    .local v3, "rom":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 437
    .local v4, "system":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 438
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.build.rom.internal.id"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "system":Ljava/lang/Class;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    const-string v3, "rom_unknown"

    .line 445
    :cond_0
    return-object v3

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CommonUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get rom error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public decodeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    :cond_0
    const/4 v3, 0x0

    .line 210
    :goto_0
    return-object v3

    .line 200
    :cond_1
    const-string v3, ""

    .line 201
    .local v3, "temp":Ljava/lang/String;
    new-instance v2, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v2}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 204
    .local v2, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 206
    .local v0, "authIv":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, p1, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcn/nubia/upgrade/util/encode/InterceptorClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Lcn/nubia/upgrade/util/encode/InterceptorClientException;
    invoke-virtual {v1}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 236
    .local v1, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 237
    .local v0, "authIv":Ljava/lang/String;
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-interface {v1, p1, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcn/nubia/upgrade/util/CommonUtils;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCacheFreeSize(Landroid/content/Context;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "cachePath":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 150
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v6

    int-to-long v4, v6

    .line 151
    .local v4, "freeBlocks":J
    mul-long v6, v0, v4

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    return-wide v6

    .line 146
    .end local v0    # "blockSize":J
    .end local v3    # "statFs":Landroid/os/StatFs;
    .end local v4    # "freeBlocks":J
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savefolder"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "cachePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "tmpPath":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    const-string v4, "CommonUtils"

    const-string v5, "tmp Mkdir Failure!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    const-string v4, "CommonUtils"

    const-string v5, "ReName PathDir Failure!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 113
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 93
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .restart local v0    # "cachePath":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getDefaultPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 120
    .local v1, "previousPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    const-string v2, "CommonUtils"

    const-string v3, "Get Default Path Error!!!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 137
    return-object v0

    .line 128
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initParam(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcn/nubia/upgrade/model/PostApkInfo;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 217
    .local v1, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 219
    .local v0, "authIv":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v2, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "version_code"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v3, "version_name"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v3, "check_sum"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v3, "unique_key"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v3, "patch_value"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getJsonPatchValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v3, "auth_token_id"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface {v1, v2, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcn/nubia/upgrade/util/CommonUtils;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 191
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public isMobileConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 72
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNewVersionApkExist(Lcn/nubia/upgrade/http/DownloadRequest;)Z
    .locals 6
    .param p1, "result"    # Lcn/nubia/upgrade/http/DownloadRequest;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "exist":Z
    if-eqz p1, :cond_0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "mDownLoadFilePath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-static {v2}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "md5File":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 184
    .end local v0    # "exist":Z
    .end local v2    # "mDownLoadFilePath":Ljava/lang/String;
    .end local v3    # "md5File":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 174
    .restart local v0    # "exist":Z
    .restart local v2    # "mDownLoadFilePath":Ljava/lang/String;
    .restart local v3    # "md5File":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    if-nez v0, :cond_0

    .line 179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public isStorageEnough(J)Z
    .locals 9
    .param p1, "need"    # J

    .prologue
    .line 346
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 347
    .local v2, "previousPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 349
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long v0, v4, v6

    .line 350
    .local v0, "aviableSize":J
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStorageEnough aviableSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    const-wide/16 v4, 0x64

    add-long/2addr v4, p1

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 62
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 63
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
