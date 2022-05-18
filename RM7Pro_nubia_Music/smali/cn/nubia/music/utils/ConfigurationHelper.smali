.class public Lcn/nubia/music/utils/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# static fields
.field private static mInstance:Lcn/nubia/music/utils/ConfigurationHelper;


# instance fields
.field private mConfig:Ljava/util/Map;
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

.field private mConfigFilename:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "baidumusic_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private createFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public static getDefaultDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/utils/ConfigurationHelper;->getMusicBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultLyricPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/utils/ConfigurationHelper;->getMusicBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lyric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/music/utils/ConfigurationHelper;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcn/nubia/music/utils/ConfigurationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/music/utils/ConfigurationHelper;->mInstance:Lcn/nubia/music/utils/ConfigurationHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/music/utils/ConfigurationHelper;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/ConfigurationHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/utils/ConfigurationHelper;->mInstance:Lcn/nubia/music/utils/ConfigurationHelper;

    .line 37
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/ConfigurationHelper;->mInstance:Lcn/nubia/music/utils/ConfigurationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMusicBasePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFileExsit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private loadConfig()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/nubia/music/utils/ConfigurationHelper;->isFileExsit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    .line 125
    :cond_2
    if-eqz v2, :cond_3

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_1
    move-object v0, v1

    .line 132
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 119
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    goto :goto_0

    .line 121
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 122
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 128
    :catch_3
    move-exception v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 127
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 129
    :cond_4
    :goto_5
    throw v0

    .line 128
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    .line 125
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 121
    :catch_6
    move-exception v1

    goto :goto_3

    .line 118
    :catch_7
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public readConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcn/nubia/music/utils/ConfigurationHelper;->loadConfig()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfig:Ljava/util/Map;

    .line 99
    iget-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfig:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public writeBatchConfig(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v0, "illegal params."

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/music/utils/ConfigurationHelper;->isFileExsit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Lcn/nubia/music/utils/ConfigurationHelper;->createFile()Z

    .line 69
    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0
.end method

.method public writeBatchConfig([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 80
    :cond_0
    const-string v0, "illegal params."

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/music/utils/ConfigurationHelper;->isFileExsit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    invoke-direct {p0}, Lcn/nubia/music/utils/ConfigurationHelper;->createFile()Z

    .line 86
    :cond_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 89
    aget-object v2, p1, v0

    if-nez v2, :cond_4

    .line 94
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public writeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/music/utils/ConfigurationHelper;->isFileExsit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/music/utils/ConfigurationHelper;->createFile()Z

    .line 55
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/music/utils/ConfigurationHelper;->mConfigFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 59
    return-void
.end method
