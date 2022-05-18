.class Lcn/nubia/deskclock/model/localDataOpt/FileLocalDataOperation;
.super Ljava/lang/Object;
.source "FileLocalDataOperation.java"

# interfaces
.implements Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLocalDataOperation"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;
    .locals 8
    .param p1, "param"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 57
    :cond_0
    const/4 v3, 0x0

    .line 85
    :cond_1
    :goto_0
    return-object v3

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 61
    .local v4, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 64
    .local v3, "object":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 65
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 69
    .local v0, "context":Landroid/content/Context;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 70
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 77
    if-eqz v5, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 79
    :cond_3
    if-eqz v2, :cond_4

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v4, v5

    .line 83
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 67
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    :try_start_3
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1

    .line 81
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 84
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 72
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v6, "FileLocalDataOperation"

    const-string v7, "File not found. Synchronize data from network"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    if-eqz v4, :cond_6

    .line 78
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 79
    :cond_6
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 77
    :goto_3
    if-eqz v4, :cond_7

    .line 78
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 79
    :cond_7
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 81
    :catch_4
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 77
    :goto_4
    if-eqz v4, :cond_8

    .line 78
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 79
    :cond_8
    if-eqz v2, :cond_9

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 84
    :cond_9
    :goto_5
    throw v6

    .line 81
    :catch_5
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 74
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 72
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 91
    return-void
.end method

.method public saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 8
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, "fs":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 27
    .local v3, "ops":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 32
    .local v0, "context":Landroid/content/Context;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 34
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .local v4, "ops":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    if-eqz v4, :cond_0

    .line 45
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 46
    :cond_0
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 52
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 30
    :cond_3
    :try_start_3
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 48
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v4    # "ops":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 51
    .end local v4    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 36
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v5, "FileLocalDataOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is not exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    if-eqz v3, :cond_4

    .line 45
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 46
    :cond_4
    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 48
    :catch_2
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v5, "FileLocalDataOperation"

    const-string v6, "write file error"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 44
    if-eqz v3, :cond_5

    .line 45
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 46
    :cond_5
    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 48
    :catch_4
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 44
    :goto_4
    if-eqz v3, :cond_6

    .line 45
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 46
    :cond_6
    if-eqz v2, :cond_7

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 51
    :cond_7
    :goto_5
    throw v5

    .line 48
    :catch_5
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 43
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "ops":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 39
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v4    # "ops":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 36
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v4    # "ops":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method
