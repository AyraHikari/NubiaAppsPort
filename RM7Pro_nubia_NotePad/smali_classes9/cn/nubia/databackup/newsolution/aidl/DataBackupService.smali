.class public Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
.super Landroid/app/Service;
.source "DataBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;
    }
.end annotation


# static fields
.field private static final BACKUP_DESCRIPT_FILE_NAME:Ljava/lang/String; = "descript.xml"

.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "notes.xml"

.field private static final BACKUP_ZIP_FILE:Ljava/lang/String; = "backup.zip"

.field private static final NOTEPAD_SECOND_TITLE:Ljava/lang/String; = "second_title"

.field private static final RESTORE_ZIP_FILE:Ljava/lang/String; = "restore.zip"


# instance fields
.field private final BACKUP_COMPRESS_ZIP_FILE_ERROR:I

.field private final BACKUP_COPY_TO_BACKUP_DIR_ERROR:I

.field private final BACKUP_GENERATE_DATA_FILE_ERROR:I

.field private final BACKUP_GENERATE_DESCRIPTION_FILE_ERROR:I

.field private final BACKUP_GET_DATABASE_DATA_ERROR:I

.field private final BUFFER_SIZE:I

.field private final RESTORE_DECOMPRESS_ZIP_ERROR:I

.field private final RESTORE_MALFORMED_URI_ERROR:I

.field private final RESTORE_ZIP_FILE_NOT_EXISTS_ERROR:I

.field private final SUCCESS:I

.field private backupDataFile:Ljava/io/File;

.field private isBackupCanceled:Z

.field private isRestoreCanceled:Z

.field private mAppBackupFilesDir:Ljava/io/File;

.field private mAppDataDir:Ljava/io/File;

.field private mAppFilesBackupFileDir:Ljava/io/File;

.field private mAppFilesDir:Ljava/io/File;

.field private mAppFilesRestoreFileDir:Ljava/io/File;

.field private mAppFilesUnzippedRestoreFileDir:Ljava/io/File;

.field private mAppFilesUserDir:Ljava/io/File;

.field private mBinder:Landroid/os/IBinder;

.field private mNoteDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/utils/BackupDataEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseBackup:Z

.field private mPauseRestore:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;

    invoke-direct {v0, p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;-><init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 58
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 59
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 60
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 61
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 72
    const/16 v0, 0x4000

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BUFFER_SIZE:I

    .line 74
    iput v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->SUCCESS:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BACKUP_GET_DATABASE_DATA_ERROR:I

    .line 76
    const/4 v0, -0x2

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BACKUP_GENERATE_DATA_FILE_ERROR:I

    .line 77
    const/4 v0, -0x3

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BACKUP_GENERATE_DESCRIPTION_FILE_ERROR:I

    .line 78
    const/4 v0, -0x4

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BACKUP_COPY_TO_BACKUP_DIR_ERROR:I

    .line 79
    const/4 v0, -0x5

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->BACKUP_COMPRESS_ZIP_FILE_ERROR:I

    .line 80
    const/4 v0, -0x6

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->RESTORE_DECOMPRESS_ZIP_ERROR:I

    .line 81
    const/4 v0, -0x7

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->RESTORE_ZIP_FILE_NOT_EXISTS_ERROR:I

    .line 82
    const/4 v0, -0x8

    iput v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->RESTORE_MALFORMED_URI_ERROR:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBackupEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    return v0
.end method

.method private check()V
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    .line 1379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    .line 1381
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    :cond_0
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->init()V

    .line 1384
    :cond_1
    return-void
.end method

.method private copyDataFileToBackupDir(Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .param p2, "token"    # I

    .prologue
    const/4 v0, 0x0

    .line 984
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    .line 985
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return v0

    .line 988
    :cond_1
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    .line 989
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFiles([Ljava/io/File;Ljava/io/File;)V

    .line 999
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "mAppFilesUserPath"    # Ljava/io/File;

    .prologue
    .line 471
    const/4 v3, 0x0

    .line 472
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 474
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 478
    .local v0, "count":I
    new-array v1, v0, [B

    .line 479
    .local v1, "data":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 480
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 488
    :cond_0
    if-eqz v4, :cond_7

    .line 489
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 490
    const/4 v3, 0x0

    .line 492
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v6, :cond_6

    .line 493
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 494
    const/4 v5, 0x0

    .line 500
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 496
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 497
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 499
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 482
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 483
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 488
    if-eqz v3, :cond_2

    .line 489
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 490
    const/4 v3, 0x0

    .line 492
    :cond_2
    if-eqz v5, :cond_1

    .line 493
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 494
    const/4 v5, 0x0

    goto :goto_1

    .line 496
    :catch_2
    move-exception v2

    .line 497
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 484
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 485
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 488
    if-eqz v3, :cond_3

    .line 489
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 490
    const/4 v3, 0x0

    .line 492
    :cond_3
    if-eqz v5, :cond_1

    .line 493
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 494
    const/4 v5, 0x0

    goto :goto_1

    .line 496
    :catch_4
    move-exception v2

    .line 497
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 488
    :goto_5
    if-eqz v3, :cond_4

    .line 489
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 490
    const/4 v3, 0x0

    .line 492
    :cond_4
    if-eqz v5, :cond_5

    .line 493
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 494
    const/4 v5, 0x0

    .line 499
    :cond_5
    :goto_6
    throw v7

    .line 496
    :catch_5
    move-exception v2

    .line 497
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 484
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 482
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 496
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    goto :goto_2

    :cond_6
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private copyFiles([Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "descFile"    # Ljava/io/File;

    .prologue
    .line 1003
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 1004
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1005
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1006
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1008
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1009
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    .line 1010
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, "desFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1012
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFiles([Ljava/io/File;Ljava/io/File;)V

    .line 1004
    .end local v0    # "desFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private deleteAll(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 249
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteAll(Ljava/io/File;)V

    .line 250
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private deleteRemoteRestoreFile(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private existFile(Ljava/io/File;[Ljava/io/File;)Z
    .locals 6
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "appFiles"    # [Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 503
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 504
    .local v0, "appFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/4 v1, 0x1

    .line 510
    .end local v0    # "appFile":Ljava/io/File;
    :cond_0
    return v1

    .line 503
    .restart local v0    # "appFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private generateDataFile(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 16
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 1082
    const/4 v7, 0x1

    .line 1083
    .local v7, "isBackupSuccess":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 1084
    const/4 v11, 0x0

    .line 1175
    :goto_0
    return v11

    .line 1086
    :cond_0
    const/4 v3, 0x0

    .line 1087
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 1089
    .local v9, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v13, "notes.xml"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 1090
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1091
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 1093
    :cond_1
    new-instance v10, Lcn/nubia/notepad/io/KXmlSerializer;

    invoke-direct {v10}, Lcn/nubia/notepad/io/KXmlSerializer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1094
    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .local v10, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1095
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v11, "utf-8"

    invoke-virtual {v10, v4, v11}, Lcn/nubia/notepad/io/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1096
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1097
    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1100
    const/4 v11, 0x0

    const-string v12, "nubia-note-backup"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const/4 v11, 0x0

    const-string v12, "info"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const/4 v11, 0x0

    const-string v12, "amount"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    .line 1104
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1103
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const/4 v11, 0x0

    const-string v12, "info"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    const/4 v6, 0x0

    .line 1107
    .local v6, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 1108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 1109
    .local v8, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    const/4 v11, 0x0

    const-string v12, "item"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const/4 v11, 0x0

    const-string v12, "id"

    .line 1111
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1110
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const/4 v11, 0x0

    const-string v12, "title"

    .line 1113
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1112
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const/4 v11, 0x0

    const-string v12, "content"

    .line 1115
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1114
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const/4 v11, 0x0

    const-string v12, "created"

    .line 1117
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getCreatedDate()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 1116
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const/4 v11, 0x0

    const-string v12, "modified"

    .line 1119
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getModifiedDate()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 1118
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const/4 v11, 0x0

    const-string v12, "classify"

    .line 1121
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getClassify()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1120
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    const/4 v11, 0x0

    const-string v12, "resource"

    .line 1123
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getResource()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1122
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const/4 v11, 0x0

    const-string v12, "remind"

    .line 1125
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getIsRemind()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1124
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const/4 v11, 0x0

    const-string v12, "remindtime"

    .line 1127
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getRemindTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 1126
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    const/4 v11, 0x0

    const-string v12, "mode"

    .line 1129
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getMode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1128
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    const/4 v11, 0x0

    const-string v12, "top"

    .line 1131
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->isTop()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1130
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    const/4 v11, 0x0

    const-string v12, "label"

    .line 1133
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getmLabel()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1132
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    const/4 v11, 0x0

    const-string v12, "second_title"

    .line 1135
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/BackupDataEntry;->getmSecondTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1134
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    const/4 v11, 0x0

    const-string v12, "item"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    .line 1140
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0043

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1137
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1, v6, v11, v12}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-nez v11, :cond_2

    .line 1144
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1146
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1150
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1152
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v11, :cond_6

    .line 1153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1156
    :cond_3
    const/4 v11, 0x0

    .line 1165
    const/4 v9, 0x0

    .line 1167
    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    if-eqz v4, :cond_5

    .line 1168
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1169
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1147
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_0
    move-exception v2

    .line 1148
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1150
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1161
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v8    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    move-object v3, v4

    .line 1162
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1163
    const/4 v7, 0x0

    .line 1165
    const/4 v9, 0x0

    .line 1167
    if-eqz v3, :cond_4

    .line 1168
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1169
    const/4 v3, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    move v11, v7

    .line 1175
    goto/16 :goto_0

    .line 1171
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v8    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catch_2
    move-exception v2

    .line 1172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1107
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1159
    .end local v8    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_7
    const/4 v11, 0x0

    :try_start_b
    const-string v12, "nubia-note-backup"

    invoke-virtual {v10, v11, v12}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    invoke-virtual {v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endDocument()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1165
    const/4 v9, 0x0

    .line 1167
    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    if-eqz v4, :cond_9

    .line 1168
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 1169
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1171
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 1172
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1174
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1171
    .end local v5    # "i":I
    .end local v6    # "index":I
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 1172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1165
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    :goto_5
    const/4 v9, 0x0

    .line 1167
    if-eqz v3, :cond_8

    .line 1168
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 1169
    const/4 v3, 0x0

    .line 1174
    :cond_8
    :goto_6
    throw v11

    .line 1171
    :catch_5
    move-exception v2

    .line 1172
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1165
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_5

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1161
    :catch_6
    move-exception v2

    goto :goto_3

    .end local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_7
    move-exception v2

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    :cond_9
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private generateDescriptFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1019
    const/4 v3, 0x0

    .line 1020
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1021
    .local v5, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    const/4 v0, 0x0

    .line 1023
    .local v0, "descriptFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Lcn/nubia/notepad/io/KXmlSerializer;

    invoke-direct {v6}, Lcn/nubia/notepad/io/KXmlSerializer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .local v6, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v10, "descript.xml"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1026
    .end local v0    # "descriptFile":Ljava/io/File;
    .local v1, "descriptFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1027
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1029
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1030
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    const-string v9, "utf-8"

    invoke-virtual {v6, v4, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1031
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1032
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1035
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const/4 v9, 0x0

    const-string v10, "version"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const/4 v9, 0x0

    const-string v10, "type"

    const-string v11, "note"

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1041
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    const-string v9, "xxxx"

    invoke-virtual {v6, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v9, :cond_1

    .line 1046
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    :cond_1
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1050
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1051
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1052
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBackupNotesCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/notepad/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1056
    invoke-virtual {v6}, Lcn/nubia/notepad/io/KXmlSerializer;->endDocument()V

    .line 1057
    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v9, :cond_4

    .line 1058
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1059
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1060
    const/4 v0, 0x0

    .line 1068
    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :goto_0
    const/4 v5, 0x0

    .line 1070
    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    if-eqz v4, :cond_3

    .line 1071
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1072
    const/4 v3, 0x0

    .line 1078
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return v7

    .line 1074
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1075
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1068
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :cond_4
    const/4 v5, 0x0

    .line 1070
    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    if-eqz v4, :cond_6

    .line 1071
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1072
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move v7, v8

    .line 1078
    goto :goto_1

    .line 1074
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 1075
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1077
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1064
    .end local v1    # "descriptFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 1065
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1068
    const/4 v5, 0x0

    .line 1070
    if-eqz v3, :cond_2

    .line 1071
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1072
    const/4 v3, 0x0

    goto :goto_1

    .line 1074
    :catch_3
    move-exception v2

    .line 1075
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1068
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    const/4 v5, 0x0

    .line 1070
    if-eqz v3, :cond_5

    .line 1071
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1072
    const/4 v3, 0x0

    .line 1077
    :cond_5
    :goto_5
    throw v7

    .line 1074
    :catch_4
    move-exception v2

    .line 1075
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1068
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_3
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1064
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :cond_7
    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    goto :goto_0
.end method

.method private getBackupEntries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    new-instance v1, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    invoke-direct {v1}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;-><init>()V

    .line 220
    .local v1, "entry":Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setId(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBackupNotesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setItemCount(I)V

    .line 222
    const-string v2, "note"

    invoke-virtual {v1, v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setDesc(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setPackageName(Ljava/lang/String;)V

    .line 224
    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setIconResId(I)V

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    return-object v0
.end method

.method private getBackupNotesCount()I
    .locals 9

    .prologue
    .line 1356
    const/4 v6, 0x0

    .line 1357
    .local v6, "count":I
    const-string v3, "( classify != 1000 OR classify is null ) AND deleted = 0 AND attachment =1 "

    .line 1361
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1363
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1365
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1369
    if-eqz v7, :cond_0

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1371
    const/4 v7, 0x0

    .line 1375
    :cond_0
    :goto_0
    return v6

    .line 1366
    :catch_0
    move-exception v8

    .line 1367
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    if-eqz v7, :cond_0

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1371
    const/4 v7, 0x0

    goto :goto_0

    .line 1369
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1371
    const/4 v7, 0x0

    .line 1373
    :cond_1
    throw v0
.end method

.method private getDatabaseData()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 1179
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getNotesLabelList()Ljava/util/HashMap;

    move-result-object v9

    .line 1180
    .local v9, "mLabelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    .line 1181
    .local v8, "isBackupSuccess":Z
    const-string v3, "deleted = 0 AND attachment =1"

    .line 1183
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1185
    .local v10, "noteCs":Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v0, v12

    .line 1232
    :goto_0
    return v0

    .line 1189
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1191
    :cond_1
    new-instance v11, Lcn/nubia/notepad/utils/BackupDataEntry;

    invoke-direct {v11}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 1192
    .local v11, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setId(I)V

    .line 1193
    const-string v0, "title"

    .line 1194
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1193
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTitle(Ljava/lang/String;)V

    .line 1195
    const-string v0, "content"

    .line 1196
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1195
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 1197
    const-string v0, "resource"

    .line 1198
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1197
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setResource(Ljava/lang/String;)V

    .line 1199
    const-string v0, "created"

    .line 1200
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1199
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcn/nubia/notepad/utils/BackupDataEntry;->setCreatedDate(J)V

    .line 1201
    const-string v0, "modified"

    .line 1202
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1201
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcn/nubia/notepad/utils/BackupDataEntry;->setModifiedDate(J)V

    .line 1203
    const-string v0, "classify"

    .line 1204
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1203
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setClassify(I)V

    .line 1205
    const-string v0, "remind"

    .line 1206
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1205
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setIsRemind(I)V

    .line 1207
    const-string v0, "remind_time"

    .line 1208
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1207
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcn/nubia/notepad/utils/BackupDataEntry;->setRemindTime(J)V

    .line 1209
    const-string v0, "mode"

    .line 1210
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1209
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setMode(I)V

    .line 1211
    const-string v0, "top"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTop(I)V

    .line 1212
    const-string v0, "extra_1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1213
    .local v7, "extra":I
    if-eqz v7, :cond_2

    .line 1214
    invoke-direct {p0, v9, v7}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getLabelName(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmLabel(Ljava/lang/String;)V

    .line 1216
    :cond_2
    const-string v0, "second_title"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmSecondTitle(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v0, :cond_4

    .line 1219
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    if-eqz v10, :cond_3

    .line 1228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1229
    const/4 v10, 0x0

    :cond_3
    move v0, v12

    .line 1220
    goto/16 :goto_0

    .line 1222
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    if-eqz v10, :cond_5

    .line 1228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1229
    const/4 v10, 0x0

    .end local v7    # "extra":I
    .end local v11    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_5
    :goto_1
    move v0, v8

    .line 1232
    goto/16 :goto_0

    .line 1223
    :catch_0
    move-exception v6

    .line 1224
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    const/4 v8, 0x0

    .line 1227
    if-eqz v10, :cond_5

    .line 1228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1229
    const/4 v10, 0x0

    goto :goto_1

    .line 1227
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 1228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1229
    const/4 v10, 0x0

    .line 1231
    :cond_6
    throw v0
.end method

.method private getItemKey(Lcn/nubia/notepad/utils/BackupDataEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "noteData"    # Lcn/nubia/notepad/utils/BackupDataEntry;

    .prologue
    .line 768
    const-string v0, ""

    .line 769
    .local v0, "itemKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/nubia/notepad/utils/BackupDataEntry;->getResource()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "resource":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->strKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/notepad/utils/BackupDataEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->strKeyFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    return-object v0
.end method

.method private getLabelName(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1342
    .local p1, "labelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1343
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1346
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1347
    .local v2, "value":I
    if-ne p2, v2, :cond_0

    .line 1348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1352
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "value":I
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getNotesLabelList()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1304
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1305
    .local v9, "labelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 1307
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "classify = 1000 AND deleted = 0 AND attachment = 1 "

    .line 1309
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/notepad/utils/NotesData;->NOTE_LABEL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "top DESC, modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1314
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1315
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1317
    .local v8, "id":I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1318
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1325
    :cond_0
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1328
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "id":I
    .end local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1329
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    if-eqz v6, :cond_1

    .line 1333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1334
    const/4 v6, 0x0

    :cond_1
    move-object v9, v11

    .line 1338
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "labelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    return-object v9

    .line 1321
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "id":I
    .restart local v9    # "labelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "title":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    goto :goto_1

    .line 1332
    .end local v8    # "id":I
    .end local v10    # "title":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_2

    .line 1333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1334
    const/4 v6, 0x0

    goto :goto_2

    .line 1332
    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1334
    const/4 v6, 0x0

    .line 1336
    :cond_5
    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 86
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    .line 87
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 91
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    const-string v4, "user-0"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    .line 92
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    const-string v3, "image"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, "mAppFilesImageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    const-string v3, "record"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v1, "mAppFilesRecordDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 107
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    const-string v4, "/backup"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    .line 108
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 113
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    .line 115
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 116
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 120
    :cond_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    const-string v4, "/restore"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    .line 121
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 125
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    const-string v4, "/unzipped"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUnzippedRestoreFileDir:Ljava/io/File;

    .line 126
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUnzippedRestoreFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 127
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUnzippedRestoreFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_7
    return-void
.end method

.method private itemFilterNote(Ljava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/utils/BackupDataEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "existItemKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "existPresetDatas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/utils/BackupDataEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v0, "alerayExistData":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/utils/BackupDataEntry;>;"
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 751
    .local v2, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getItemKey(Lcn/nubia/notepad/utils/BackupDataEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 755
    .local v1, "existPresetData":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual {v1}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-virtual {v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v6

    .line 755
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 761
    .end local v1    # "existPresetData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v2    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 762
    .restart local v2    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    iget-object v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 764
    .end local v2    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 765
    return-void
.end method

.method private restoreImageFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 8
    .param p1, "mAppBackupUserImageFilePath"    # Ljava/io/File;
    .param p2, "mAppFilesUserImagePath"    # Ljava/io/File;
    .param p3, "token"    # I
    .param p4, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v4, 0x0

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v4

    .line 520
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 521
    .local v0, "appFiles":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 522
    .local v2, "backupFiles":[Ljava/io/File;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v1, v2, v5

    .line 523
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 524
    invoke-direct {p0, v1, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->existFile(Ljava/io/File;[Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 525
    invoke-direct {p0, v1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 528
    :cond_2
    iget-boolean v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v7, :cond_3

    .line 530
    :try_start_0
    const-string v5, "cancel"

    invoke-interface {p4, p3, v5}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v3

    .line 532
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "backupFile":Ljava/io/File;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private restoreNotesLabelData(Ljava/util/HashMap;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 12
    .param p2, "token"    # I
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "mLabelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1244
    iget-object v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 1245
    .local v3, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual {v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->getClassify()I

    move-result v0

    .line 1246
    .local v0, "classify":I
    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1250
    .local v5, "title":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 1269
    :goto_0
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1273
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1274
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v9, "content"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v9, "classify"

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1278
    .local v4, "noteUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    long-to-int v2, v10

    .line 1279
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-nez v9, :cond_1

    .line 1282
    monitor-enter p0

    .line 1284
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    :cond_1
    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v9, :cond_0

    .line 1292
    :try_start_2
    const-string v8, "cancel"

    invoke-interface {p3, p2, v8}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1299
    .end local v0    # "classify":I
    .end local v2    # "id":I
    .end local v3    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v4    # "noteUri":Landroid/net/Uri;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_2
    return v7

    .line 1252
    .restart local v0    # "classify":I
    .restart local v3    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .restart local v5    # "title":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0069

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1253
    invoke-virtual {v3, v7}, Lcn/nubia/notepad/utils/BackupDataEntry;->setClassify(I)V

    .line 1254
    invoke-virtual {v3, v5}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a006a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1258
    invoke-virtual {v3, v7}, Lcn/nubia/notepad/utils/BackupDataEntry;->setClassify(I)V

    .line 1259
    invoke-virtual {v3, v5}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a006b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1263
    invoke-virtual {v3, v7}, Lcn/nubia/notepad/utils/BackupDataEntry;->setClassify(I)V

    .line 1264
    invoke-virtual {v3, v5}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    .restart local v2    # "id":I
    .restart local v4    # "noteUri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1286
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1288
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 1293
    :catch_1
    move-exception v1

    .line 1294
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1299
    .end local v0    # "classify":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "id":I
    .end local v3    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v4    # "noteUri":Landroid/net/Uri;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private restoreRecordFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 8
    .param p1, "mAppBackupUserRecordFilePath"    # Ljava/io/File;
    .param p2, "mAppFilesUserRecordPath"    # Ljava/io/File;
    .param p3, "token"    # I
    .param p4, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v4, 0x0

    .line 543
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v4

    .line 547
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 548
    .local v0, "appFiles":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 549
    .local v2, "backupFiles":[Ljava/io/File;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v1, v2, v5

    .line 550
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 551
    invoke-direct {p0, v1, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->existFile(Ljava/io/File;[Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 552
    invoke-direct {p0, v1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 555
    :cond_2
    iget-boolean v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v7, :cond_3

    .line 557
    :try_start_0
    const-string v5, "cancel"

    invoke-interface {p4, p3, v5}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 564
    .end local v1    # "backupFile":Ljava/io/File;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private restoreResourceData(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)V
    .locals 9
    .param p1, "dataFile"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 402
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "mAppBackupFilePath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "image"

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .local v2, "mAppBackupUserImageFilePath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "record"

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 406
    .local v3, "mAppBackupUserRecordFilePath":Ljava/io/File;
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 407
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    .line 408
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesDir:Ljava/io/File;

    const-string v8, "user-0"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    .line 410
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    const-string v7, "image"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v4, "mAppFilesUserImagePath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    const-string v7, "record"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .local v5, "mAppFilesUserRecordPath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 413
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 415
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 416
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 419
    :cond_2
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUserDir:Ljava/io/File;

    invoke-direct {p0, v1, v6, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreXMLFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    invoke-direct {p0, v2, v4, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreImageFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 423
    invoke-direct {p0, v3, v5, p2, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreRecordFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 426
    :try_start_0
    invoke-interface {p3, p2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreCompleted(I)V

    .line 427
    const-string v6, "DataBackupService"

    const-string v7, "notepad restore Completed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v6, "notepad restore failed"

    invoke-interface {p3, p2, v6}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V

    .line 437
    const-string v6, "DataBackupService"

    const-string v7, "notepad restore Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private restoreXMLFile(Ljava/io/File;Ljava/io/File;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 9
    .param p1, "mAppBackupUserFilePath"    # Ljava/io/File;
    .param p2, "mAppFilesUserPath"    # Ljava/io/File;
    .param p3, "token"    # I
    .param p4, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v4, 0x0

    .line 445
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v4

    .line 448
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 449
    .local v0, "appFiles":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 450
    .local v2, "backupFiles":[Ljava/io/File;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v1, v2, v5

    .line 451
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "notes.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 453
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "descript.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 454
    invoke-direct {p0, v1, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->existFile(Ljava/io/File;[Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 455
    invoke-direct {p0, v1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 458
    :cond_2
    iget-boolean v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v7, :cond_3

    .line 460
    :try_start_0
    const-string v5, "cancel"

    invoke-interface {p4, p3, v5}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 450
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 467
    .end local v1    # "backupFile":Ljava/io/File;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private saveRestoreFile(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "restoreFilePath"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v7, 0x1

    .line 361
    .local v7, "isSuccess":Z
    const/4 v3, 0x0

    .line 362
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 365
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rw"

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 366
    .local v9, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_4

    .line 367
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 368
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x4000

    :try_start_2
    new-array v0, v10, [B

    .line 373
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_2

    .line 374
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 379
    .end local v0    # "buffer":[B
    .end local v8    # "length":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 380
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    const/4 v7, 0x0

    .line 384
    if-eqz v3, :cond_0

    .line 385
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 386
    const/4 v3, 0x0

    .line 388
    :cond_0
    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 390
    const/4 v5, 0x0

    .line 396
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v7

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "length":I
    .restart local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_2
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 384
    .end local v0    # "buffer":[B
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "length":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_3

    .line 385
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 386
    const/4 v3, 0x0

    .line 388
    :cond_3
    if-eqz v5, :cond_1

    .line 389
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 390
    const/4 v5, 0x0

    goto :goto_2

    .line 377
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 392
    :catch_1
    move-exception v1

    .line 393
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 393
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 383
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 384
    :goto_4
    if-eqz v3, :cond_5

    .line 385
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 386
    const/4 v3, 0x0

    .line 388
    :cond_5
    if-eqz v5, :cond_6

    .line 389
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 390
    const/4 v5, 0x0

    .line 395
    :cond_6
    :goto_5
    throw v10

    .line 392
    :catch_3
    move-exception v1

    .line 393
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 383
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 379
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 8
    .param p1, "token"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v6, 0x0

    .line 883
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->check()V

    .line 884
    iput-boolean v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 885
    iput-boolean v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 886
    const/4 v4, 0x1

    .line 887
    .local v4, "isBackupSuccess":Z
    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 888
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 889
    const/4 v2, 0x0

    .line 891
    .local v2, "code":I
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getDatabaseData()Z

    move-result v4

    .line 892
    if-nez v4, :cond_0

    .line 894
    const/4 v7, -0x1

    .line 896
    :try_start_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 894
    invoke-interface {p3, p1, v7}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    return v6

    .line 897
    :catch_0
    move-exception v3

    .line 898
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 902
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->generateDataFile(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v4

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDataFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 904
    if-eqz v4, :cond_4

    .line 905
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->generateDescriptFile()Z

    move-result v4

    .line 910
    :goto_1
    if-eqz v4, :cond_5

    .line 911
    invoke-direct {p0, p3, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->copyDataFileToBackupDir(Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;I)Z

    move-result v4

    .line 916
    :goto_2
    const/4 v0, 0x0

    .line 917
    .local v0, "backupFileUri":Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "backup.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "backupZipFilePath":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcn/nubia/notepad/utils/ZipHelper;->zip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 922
    if-eqz v4, :cond_6

    .line 923
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 924
    const/4 v6, 0x3

    invoke-virtual {p0, p2, v0, v6}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 929
    :goto_3
    iget-boolean v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v6, :cond_2

    .line 930
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v5, "zipFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 932
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 934
    :cond_1
    const/4 v4, 0x0

    .line 941
    .end local v1    # "backupZipFilePath":Ljava/lang/String;
    .end local v5    # "zipFile":Ljava/io/File;
    :cond_2
    :goto_4
    if-eqz v4, :cond_8

    .line 943
    :try_start_1
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 944
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-static {v6}, Lcn/nubia/notepad/utils/FileHelper;->deleteAll(Ljava/io/File;)V

    .line 946
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, p1, v6}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupCompleted(ILjava/lang/String;)V

    .line 947
    const-string v6, "onBackupCompleted"

    invoke-static {v6}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    :goto_5
    move v6, v4

    .line 962
    goto/16 :goto_0

    .line 907
    .end local v0    # "backupFileUri":Landroid/net/Uri;
    :cond_4
    const/4 v2, -0x2

    goto :goto_1

    .line 913
    :cond_5
    const/4 v2, -0x3

    goto :goto_2

    .line 927
    .restart local v0    # "backupFileUri":Landroid/net/Uri;
    .restart local v1    # "backupZipFilePath":Ljava/lang/String;
    :cond_6
    const/4 v2, -0x5

    goto :goto_3

    .line 937
    .end local v1    # "backupZipFilePath":Ljava/lang/String;
    :cond_7
    const/4 v2, -0x4

    goto :goto_4

    .line 950
    :cond_8
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 951
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-static {v6}, Lcn/nubia/notepad/utils/FileHelper;->deleteAll(Ljava/io/File;)V

    .line 955
    :cond_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 953
    invoke-interface {p3, p1, v6}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V

    .line 956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBackupFailed code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 958
    :catch_1
    move-exception v3

    .line 959
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method private strKeyFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1236
    if-nez p1, :cond_0

    .line 1237
    const-string p1, ""

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelBackup()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRestore()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 262
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteData(Ljava/lang/String;)V
    .locals 4
    .param p1, "uriStr"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 231
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 234
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesBackupFileDir:Ljava/io/File;

    invoke-static {v2}, Lcn/nubia/notepad/utils/FileHelper;->deleteAll(Ljava/io/File;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteData uriStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method protected filterRestoreItems(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 17
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 632
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v12, "existItemKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v13, "existPresetDatas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/utils/BackupDataEntry;>;"
    const/4 v14, 0x0

    .line 636
    .local v14, "noteCS":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 637
    const-string v5, "deleted = 0 AND attachment =1"

    .line 639
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 641
    if-nez v14, :cond_1

    .line 642
    const/4 v2, 0x0

    .line 739
    if-eqz v14, :cond_0

    .line 740
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 744
    .end local v5    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 644
    .restart local v5    # "selection":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 645
    .local v15, "noteCount":I
    if-eqz v15, :cond_c

    .line 646
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 648
    :cond_2
    new-instance v16, Lcn/nubia/notepad/utils/BackupDataEntry;

    invoke-direct/range {v16 .. v16}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 649
    .local v16, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    const-string v2, "_id"

    .line 650
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 649
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setId(I)V

    .line 651
    const-string v2, "title"

    .line 652
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 651
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTitle(Ljava/lang/String;)V

    .line 653
    const-string v2, "content"

    .line 654
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 653
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 655
    const-string v2, "resource"

    .line 656
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 655
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setResource(Ljava/lang/String;)V

    .line 657
    const-string v2, "created"

    .line 658
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 657
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->setCreatedDate(J)V

    .line 659
    const-string v2, "modified"

    .line 660
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 659
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->setCreatedDate(J)V

    .line 661
    const-string v2, "classify"

    .line 662
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 661
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->setCreatedDate(J)V

    .line 663
    const-string v2, "remind"

    .line 664
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 663
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setIsRemind(I)V

    .line 665
    const-string v2, "remind_time"

    .line 666
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 665
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/BackupDataEntry;->setRemindTime(J)V

    .line 667
    const-string v2, "mode"

    .line 668
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 667
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setMode(I)V

    .line 669
    const-string v2, "top"

    .line 670
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 669
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTop(I)V

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getItemKey(Lcn/nubia/notepad/utils/BackupDataEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "contentData":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 676
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v9, Lcn/nubia/notepad/utils/BackupDataEntry;

    invoke-direct {v9}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 679
    .local v9, "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 681
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    .end local v9    # "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v2, :cond_b

    .line 719
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 720
    const-string v2, "cancel"

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    const/4 v2, 0x0

    .line 739
    if-eqz v14, :cond_0

    .line 740
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 683
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v9, Lcn/nubia/notepad/utils/BackupDataEntry;

    invoke-direct {v9}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 688
    .restart local v9    # "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 690
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 725
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "contentData":Ljava/lang/String;
    .end local v9    # "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v15    # "noteCount":I
    .end local v16    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catch_0
    move-exception v10

    .line 726
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 730
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 737
    :goto_2
    const/4 v2, 0x0

    .line 739
    if-eqz v14, :cond_0

    .line 740
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 692
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "contentData":Ljava/lang/String;
    .restart local v15    # "noteCount":I
    .restart local v16    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 694
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v9, Lcn/nubia/notepad/utils/BackupDataEntry;

    invoke-direct {v9}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 697
    .restart local v9    # "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 699
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 739
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "contentData":Ljava/lang/String;
    .end local v9    # "data":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v15    # "noteCount":I
    .end local v16    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    .line 740
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 742
    :cond_6
    throw v2

    .line 701
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "contentData":Ljava/lang/String;
    .restart local v15    # "noteCount":I
    .restart local v16    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 703
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 704
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 707
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 709
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 711
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 714
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 723
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 739
    .end local v8    # "contentData":Ljava/lang/String;
    .end local v16    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_c
    if-eqz v14, :cond_d

    .line 740
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->itemFilterNote(Ljava/util/Set;Ljava/util/List;)V

    .line 744
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 732
    .end local v5    # "selection":Ljava/lang/String;
    .end local v15    # "noteCount":I
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 733
    .local v11, "e1":Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 734
    .end local v11    # "e1":Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    .line 735
    .local v11, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "fileUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 968
    invoke-virtual {p0, p1}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getUriForFile24(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    .line 970
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getUriForFile24(Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected parserDataFileToItem(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 16
    .param p1, "dataFile"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 779
    const/4 v9, 0x1

    .line 780
    .local v9, "isRestoreSuccess":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 781
    const/4 v6, 0x0

    .line 782
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 783
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    .local v8, "index":I
    const/4 v2, 0x0

    .line 785
    .local v2, "amount":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    const-string v14, "notes.xml"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 786
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v13, "UTF-8"

    invoke-interface {v11, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 787
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 788
    .local v5, "eventType":I
    const/4 v10, 0x0

    .line 789
    .local v10, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_0
    const/4 v13, 0x1

    if-eq v5, v13, :cond_7

    .line 790
    packed-switch v5, :pswitch_data_0

    .line 839
    :cond_1
    :goto_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 840
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-nez v13, :cond_2

    .line 841
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 847
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 849
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v13, :cond_0

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 851
    const-string v13, "cancel"

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v1, v13}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 852
    const/4 v13, 0x0

    .line 870
    if-eqz v7, :cond_6

    .line 871
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 872
    const/4 v6, 0x0

    .line 878
    .end local v5    # "eventType":I
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return v13

    .line 792
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "eventType":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :pswitch_0
    :try_start_6
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 793
    .local v12, "tagName":Ljava/lang/String;
    const-string v13, "item"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 794
    add-int/lit8 v8, v8, 0x1

    .line 795
    new-instance v10, Lcn/nubia/notepad/utils/BackupDataEntry;

    .end local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-direct {v10}, Lcn/nubia/notepad/utils/BackupDataEntry;-><init>()V

    .line 796
    .restart local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    const/4 v13, 0x0

    const-string v14, "id"

    .line 797
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 796
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setId(I)V

    .line 798
    const/4 v13, 0x0

    const-string v14, "title"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTitle(Ljava/lang/String;)V

    .line 800
    const/4 v13, 0x0

    const-string v14, "content"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setContentsData(Ljava/lang/String;)V

    .line 802
    const/4 v13, 0x0

    const-string v14, "created"

    .line 803
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 802
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcn/nubia/notepad/utils/BackupDataEntry;->setCreatedDate(J)V

    .line 804
    const/4 v13, 0x0

    const-string v14, "modified"

    .line 805
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 804
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcn/nubia/notepad/utils/BackupDataEntry;->setModifiedDate(J)V

    .line 806
    const/4 v13, 0x0

    const-string v14, "classify"

    .line 807
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 806
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setClassify(I)V

    .line 808
    const/4 v13, 0x0

    const-string v14, "resource"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setResource(Ljava/lang/String;)V

    .line 810
    const/4 v13, 0x0

    const-string v14, "remind"

    .line 811
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 810
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setIsRemind(I)V

    .line 812
    const/4 v13, 0x0

    const-string v14, "remindtime"

    .line 813
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 812
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcn/nubia/notepad/utils/BackupDataEntry;->setRemindTime(J)V

    .line 814
    const/4 v13, 0x0

    const-string v14, "mode"

    .line 815
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 814
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setMode(I)V

    .line 816
    const/4 v13, 0x0

    const-string v14, "top"

    .line 817
    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 816
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setTop(I)V

    .line 818
    const/4 v13, 0x0

    const-string v14, "label"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmLabel(Ljava/lang/String;)V

    .line 820
    const/4 v13, 0x0

    const-string v14, "second_title"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/nubia/notepad/utils/BackupDataEntry;->setmSecondTitle(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 855
    .end local v5    # "eventType":I
    .end local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v12    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 856
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 857
    const/4 v9, 0x0

    .line 858
    const-string v13, "parserDataFileToItem exception "

    invoke-static {v13}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 862
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0044

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 860
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v1, v13}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 870
    :goto_4
    if-eqz v6, :cond_3

    .line 871
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 872
    const/4 v6, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    move v13, v9

    .line 878
    goto/16 :goto_2

    .line 822
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "eventType":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .restart local v12    # "tagName":Ljava/lang/String;
    :cond_4
    :try_start_a
    const-string v13, "info"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 823
    const/4 v13, 0x0

    const-string v14, "amount"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 828
    .end local v12    # "tagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "item"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0047

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 830
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v1, v8, v2, v13}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 869
    .end local v5    # "eventType":I
    .end local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catchall_0
    move-exception v13

    move-object v6, v7

    .line 870
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v6, :cond_5

    .line 871
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 872
    const/4 v6, 0x0

    .line 877
    :cond_5
    :goto_7
    throw v13

    .line 844
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "eventType":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :catch_1
    move-exception v3

    .line 845
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 847
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v13

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v13
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 874
    :catch_2
    move-exception v3

    .line 875
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 870
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_7
    if-eqz v7, :cond_8

    .line 871
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 872
    const/4 v6, 0x0

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 874
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .line 875
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 877
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 864
    .end local v5    # "eventType":I
    .end local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 865
    .local v4, "e1":Ljava/lang/Exception;
    :try_start_f
    const-string v13, "onRestoreFailed exception "

    invoke-static {v13}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_4

    .line 869
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/lang/Exception;
    :catchall_2
    move-exception v13

    goto :goto_6

    .line 874
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 875
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 874
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 875
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 855
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    goto/16 :goto_3

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "eventType":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    :cond_8
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 790
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected restoreItemToDataBase(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 12
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 569
    iget-object v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    if-nez v8, :cond_1

    .line 570
    const/4 v6, 0x0

    .line 627
    :cond_0
    :goto_0
    return v6

    .line 573
    :cond_1
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getNotesLabelList()Ljava/util/HashMap;

    move-result-object v3

    .line 574
    .local v3, "mLabelList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, p1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreNotesLabelData(Ljava/util/HashMap;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v6

    .line 575
    .local v6, "success":Z
    if-eqz v6, :cond_0

    .line 579
    iget-object v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/BackupDataEntry;

    .line 580
    .local v4, "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getClassify()I

    move-result v8

    if-nez v8, :cond_2

    .line 583
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v7, "values":Landroid/content/ContentValues;
    new-instance v7, Landroid/content/ContentValues;

    .end local v7    # "values":Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v8, "second_title"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getmSecondTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v8, "content"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getContentsData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v8, "created"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getCreatedDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 589
    const-string v8, "modified"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getModifiedDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 590
    const-string v8, "classify"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getClassify()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v8, "resource"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getResource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v8, "remind"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getIsRemind()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    const-string v8, "remind_time"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getRemindTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 594
    const-string v8, "mode"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getMode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v8, "top"

    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->isTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getmLabel()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "label":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 599
    const-string v10, "extra_1"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 602
    .local v5, "noteUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    long-to-int v1, v10

    .line 603
    .local v1, "id":I
    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getIsRemind()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 604
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 605
    invoke-virtual {v4}, Lcn/nubia/notepad/utils/BackupDataEntry;->getRemindTime()J

    move-result-wide v10

    .line 604
    invoke-static {v8, v10, v11, v1}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V

    .line 608
    :cond_4
    iget-boolean v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-nez v8, :cond_5

    .line 609
    monitor-enter p0

    .line 611
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :cond_5
    iget-boolean v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v8, :cond_2

    .line 619
    :try_start_2
    const-string v8, "cancel"

    invoke-interface {p2, p1, v8}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 615
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 620
    :catch_1
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "id":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "noteData":Lcn/nubia/notepad/utils/BackupDataEntry;
    .end local v5    # "noteUri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    iget-object v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mNoteDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 627
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public setPauseBackup(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 283
    if-nez p1, :cond_0

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit p0

    .line 288
    :cond_0
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPauseRestore(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 274
    if-nez p1, :cond_0

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit p0

    .line 279
    :cond_0
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 9
    .param p1, "token"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->check()V

    .line 293
    iput-boolean v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 294
    iput-boolean v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 295
    const/4 v4, 0x1

    .line 296
    .local v4, "success":Z
    const/4 v0, 0x0

    .line 297
    .local v0, "code":I
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 298
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "restore.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "restoreZipFileDir":Ljava/lang/String;
    invoke-direct {p0, v6, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->saveRestoreFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    .line 304
    if-eqz v4, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 306
    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesUnzippedRestoreFileDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "unzippedRestoreFileDir":Ljava/lang/String;
    invoke-static {v2, v5}, Lcn/nubia/notepad/utils/ZipHelper;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 310
    if-eqz v4, :cond_2

    .line 311
    invoke-virtual {p0, v5, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->parserDataFileToItem(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    invoke-virtual {p0, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->filterRestoreItems(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    const-string v7, "filterRestoreItems "

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreItemToDataBase(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 315
    const-string v7, "restoreItemToDataBase "

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, v5, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreResourceData(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)V

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 338
    .end local v2    # "restoreZipFileDir":Ljava/lang/String;
    .end local v5    # "unzippedRestoreFileDir":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    iget-object v7, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppFilesRestoreFileDir:Ljava/io/File;

    invoke-static {v7}, Lcn/nubia/notepad/utils/FileHelper;->deleteAll(Ljava/io/File;)V

    .line 342
    :cond_1
    if-eqz v4, :cond_5

    .line 343
    :try_start_0
    invoke-interface {p3, p1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreCompleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_1
    return v4

    .line 324
    .restart local v2    # "restoreZipFileDir":Ljava/lang/String;
    .restart local v5    # "unzippedRestoreFileDir":Ljava/lang/String;
    :cond_2
    const/4 v0, -0x6

    .line 325
    const-string v7, "restoreEnd  decompress zip file failed."

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v5    # "unzippedRestoreFileDir":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .line 329
    const/4 v0, -0x7

    .line 330
    const-string v7, "restoreEnd zip file not exists."

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v2    # "restoreZipFileDir":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 334
    const/4 v0, -0x8

    .line 335
    const-string v7, "restoreEnd zip file not exists."

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_5
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRestoreFailed code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 346
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, p1, v7}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
