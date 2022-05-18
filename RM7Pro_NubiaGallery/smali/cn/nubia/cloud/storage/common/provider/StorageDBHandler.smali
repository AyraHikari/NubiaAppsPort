.class public Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;
.super Ljava/lang/Object;
.source "StorageDBHandler.java"


# static fields
.field private static sInstance:Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;


# instance fields
.field private final mOperation:Lcn/nubia/cloud/utils/BatchOperation;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mResolver:Landroid/content/ContentResolver;

    .line 21
    new-instance v0, Lcn/nubia/cloud/utils/BatchOperation;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mOperation:Lcn/nubia/cloud/utils/BatchOperation;

    return-void
.end method

.method private createFileInfo(Landroid/database/Cursor;)Lcn/nubia/cloud/storage/common/bean/FileInfo;
    .locals 2

    .line 91
    new-instance v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/provider/CloudFile;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lcn/nubia/cloud/storage/common/provider/CloudFile;->init(Landroid/database/Cursor;)V

    .line 93
    iget-object p1, v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->localPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v1, v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->localPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 94
    iput-object p1, v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->localPath:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mOperation:Lcn/nubia/cloud/utils/BatchOperation;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->addFile(Lcn/nubia/cloud/storage/common/provider/CloudFile;Lcn/nubia/cloud/utils/BatchOperation;)V

    .line 96
    iget-object p1, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mOperation:Lcn/nubia/cloud/utils/BatchOperation;

    invoke-virtual {p1}, Lcn/nubia/cloud/utils/BatchOperation;->batchSizeEnough()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mOperation:Lcn/nubia/cloud/utils/BatchOperation;

    invoke-virtual {p1}, Lcn/nubia/cloud/utils/BatchOperation;->execute()V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/ContentResolver;)Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;
    .locals 2

    const-class v0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->sInstance:Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;-><init>(Landroid/content/ContentResolver;)V

    sput-object v1, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->sInstance:Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;

    .line 28
    :cond_0
    sget-object p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->sInstance:Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addFile(Lcn/nubia/cloud/storage/common/provider/CloudFile;Lcn/nubia/cloud/utils/BatchOperation;)V
    .locals 0

    return-void
.end method

.method public findExifInfo(J)Lcn/nubia/cloud/storage/common/provider/ExifInfo;
    .locals 6

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 51
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 52
    new-instance p2, Lcn/nubia/cloud/storage/common/provider/ExifInfo;

    invoke-direct {p2}, Lcn/nubia/cloud/storage/common/provider/ExifInfo;-><init>()V

    .line 53
    invoke-virtual {p2, p1}, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 48
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 56
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFile(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/provider/CloudFile;
    .locals 6

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud_path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcn/nubia/cloud/storage/common/provider/CloudFile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/cloud/storage/common/provider/CloudFile;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 37
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/provider/CloudFile;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcn/nubia/cloud/storage/common/provider/CloudFile;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 42
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileList(JLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p1, "name"

    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "size"

    if-eqz p1, :cond_0

    const-string p2, "display_name"

    goto :goto_0

    :cond_0
    const-string p1, "time"

    .line 64
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "date_added"

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "_id"

    :goto_0
    const-string p1, "desc"

    .line 71
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "asc"

    .line 76
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "is_dir desc,"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcn/nubia/cloud/storage/common/provider/CloudFile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/cloud/storage/common/provider/CloudFile;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 81
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-eqz p1, :cond_4

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 83
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->createFileInfo(Landroid/database/Cursor;)Lcn/nubia/cloud/storage/common/bean/FileInfo;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_4
    iget-object p3, p0, Lcn/nubia/cloud/storage/common/provider/StorageDBHandler;->mOperation:Lcn/nubia/cloud/utils/BatchOperation;

    invoke-virtual {p3}, Lcn/nubia/cloud/utils/BatchOperation;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p2

    :catchall_0
    move-exception p2

    .line 78
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_6

    .line 87
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p3
.end method
