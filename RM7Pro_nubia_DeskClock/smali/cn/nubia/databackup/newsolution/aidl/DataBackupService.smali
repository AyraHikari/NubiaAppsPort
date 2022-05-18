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

.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "alarm.xml"


# instance fields
.field private TAG:Ljava/lang/String;

.field private backupDataFile:Ljava/io/File;

.field private isBackupCanceled:Z

.field private isRestoreCanceled:Z

.field private mAlarmDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAppBackupFilesDir:Ljava/io/File;

.field private mAppDataDir:Ljava/io/File;

.field private mBinder:Landroid/os/IBinder;

.field private mPauseBackup:Z

.field private mPauseRestore:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;

    invoke-direct {v0, p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService$DataBackupServiceSub;-><init>(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 45
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 47
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 48
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 51
    const-string v0, "DeskClock:[DataBackup]"

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private ItemFilterNote(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "existItemKeySet":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 305
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v4, "restore ItemFilterNote!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v1, "alerayExistData":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 312
    .local v0, "alarmData":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 313
    .local v2, "existItemKey":[Ljava/lang/String;
    aget-object v5, v2, v7

    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getItemKey(Lcn/nubia/deskclock/model/Alarm;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v8

    .line 314
    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getItemKey(Lcn/nubia/deskclock/model/Alarm;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    .line 316
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 315
    invoke-static {v5, v6}, Lcn/nubia/deskclock/model/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    goto :goto_0

    .line 323
    .end local v0    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v2    # "existItemKey":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 324
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 325
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getBackupEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/databackup/newsolution/aidl/DataBackupService;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/DataBackupService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->startBackup(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v0

    return v0
.end method

.method private deleteAll(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 169
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteAll(Ljava/io/File;)V

    .line 170
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateDataFile(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 18
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v13, "backup generateDataFile!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v8, 0x1

    .line 599
    .local v8, "isBackupSuccess":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 600
    const/4 v12, 0x0

    .line 696
    :goto_0
    return v12

    .line 602
    :cond_0
    const/4 v5, 0x0

    .line 603
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 605
    .local v9, "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v14, "alarm.xml"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 606
    new-instance v10, Lcn/nubia/deskclock/util/KXmlSerializer;

    invoke-direct {v10}, Lcn/nubia/deskclock/util/KXmlSerializer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 607
    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .local v10, "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 608
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v12, "utf-8"

    invoke-virtual {v10, v6, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 609
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 610
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 611
    const/4 v12, 0x0

    const-string v13, "nubia-deskclock-backup"

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const/4 v12, 0x0

    const-string v13, "info"

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    const/4 v12, 0x0

    const-string v13, "amount"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v13, v14}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    const/4 v12, 0x0

    const-string v13, "info"

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 617
    .local v11, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 618
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/Alarm;

    .line 619
    .local v2, "alarmData":Lcn/nubia/deskclock/model/Alarm;
    const/4 v12, 0x0

    const-string v14, "item"

    invoke-virtual {v10, v12, v14}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    const/4 v12, 0x0

    const-string v14, "id"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    const/4 v12, 0x0

    const-string v14, "hour"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    const/4 v12, 0x0

    const-string v14, "minutes"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const/4 v12, 0x0

    const-string v14, "daysOfWeek"

    iget-object v15, v2, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 624
    invoke-virtual {v15}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 623
    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    const/4 v14, 0x0

    const-string v15, "enabled"

    iget-boolean v12, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    const/4 v12, 0x0

    const-string v14, "time"

    iget-wide v0, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const/4 v14, 0x0

    const-string v15, "vibrate"

    const-string v12, "vibrate"

    const/16 v16, 0x1

    .line 628
    move/from16 v0, v16

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 627
    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    const/4 v12, 0x0

    const-string v14, "label"

    iget-object v15, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    iget-boolean v12, v2, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    if-eqz v12, :cond_6

    .line 631
    const/4 v12, 0x0

    const-string v14, "alert"

    const-string v15, "silent"

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 641
    :goto_3
    const/4 v14, 0x0

    const-string v15, "isSnooze"

    const-string v12, "isSnooze"

    const/16 v16, 0x1

    .line 642
    move/from16 v0, v16

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 641
    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    const/4 v12, 0x0

    const-string v14, "snoozeTime"

    const-string v15, "snoozeTime"

    const/16 v16, 0xa

    .line 644
    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 643
    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    const/4 v12, 0x0

    const-string v14, "snoozeMaxCount"

    const-string v15, "snoozeMaxCount"

    const/16 v16, 0x12c

    .line 646
    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 645
    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const/4 v12, 0x0

    const-string v14, "snoozeCount"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const/4 v12, 0x0

    const-string v14, "volumeValue"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    const/4 v12, 0x0

    const-string v14, "cancelCount"

    iget v15, v2, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const/4 v14, 0x0

    const-string v15, "isPowerOffAlarm"

    const-string v12, "isPowerOffAlarm"

    const/16 v16, 0x1

    .line 651
    move/from16 v0, v16

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    .line 650
    :goto_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    const/4 v12, 0x0

    const-string v14, "enableRecentAlarm"

    iget-wide v0, v2, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    move-wide/from16 v16, v0

    .line 653
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 652
    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    const/4 v14, 0x0

    const-string v15, "isHolidayAlarm"

    iget-boolean v12, v2, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    .line 655
    :goto_6
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 654
    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    const/4 v14, 0x0

    const-string v15, "isAlertIncreasing"

    const-string v12, "isAlertIncreasing"

    const/16 v16, 0x1

    .line 657
    move/from16 v0, v16

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    .line 656
    :goto_7
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    const/4 v14, 0x0

    const-string v15, "isShowNextAlarmPoint"

    const-string v12, "isShowNextAlarmPoint"

    const/16 v16, 0x1

    .line 659
    move/from16 v0, v16

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    .line 658
    :goto_8
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v15, v12}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    const/4 v12, 0x0

    const-string v14, "item"

    invoke-virtual {v10, v12, v14}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d005e

    .line 663
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 662
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1, v7, v12, v14}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-nez v12, :cond_2

    .line 665
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 671
    :goto_9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 673
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v12, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 677
    :cond_3
    const/4 v12, 0x0

    .line 686
    const/4 v9, 0x0

    .line 688
    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    if-eqz v6, :cond_f

    .line 689
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 690
    const/4 v5, 0x0

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 625
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 628
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 633
    :cond_6
    :try_start_7
    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    if-nez v12, :cond_8

    .line 634
    const/4 v12, 0x0

    const-string v14, "alert"

    const-string v15, "silent"

    invoke-virtual {v10, v12, v14, v15}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 682
    .end local v2    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v7    # "index":I
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    move-object v5, v6

    .line 683
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_a
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 684
    const/4 v8, 0x0

    .line 686
    const/4 v9, 0x0

    .line 688
    if-eqz v5, :cond_7

    .line 689
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 690
    const/4 v5, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_b
    move v12, v8

    .line 696
    goto/16 :goto_0

    .line 636
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v2    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v11    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v14, v2, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 637
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 636
    invoke-static {v12, v14}, Lcn/nubia/deskclock/util/Utils;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "alertValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v14, "alert"

    invoke-virtual {v10, v12, v14, v3}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 686
    .end local v2    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v3    # "alertValue":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v12

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_c
    const/4 v9, 0x0

    .line 688
    if-eqz v5, :cond_9

    .line 689
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 690
    const/4 v5, 0x0

    .line 695
    :cond_9
    :goto_d
    throw v12

    .line 642
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v2    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v11    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 651
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 654
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 657
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 659
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 668
    :catch_1
    move-exception v4

    .line 669
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 671
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v12

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 692
    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catch_2
    move-exception v4

    .line 693
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_f
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 680
    .end local v2    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :cond_10
    const/4 v12, 0x0

    :try_start_e
    const-string v13, "nubia-deskclock-backup"

    invoke-virtual {v10, v12, v13}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    invoke-virtual {v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endDocument()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 686
    const/4 v9, 0x0

    .line 688
    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    if-eqz v6, :cond_11

    .line 689
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 690
    const/4 v5, 0x0

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 692
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    .line 693
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 695
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 692
    .end local v7    # "index":I
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    .local v4, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 693
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 692
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 693
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 686
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v12

    goto :goto_c

    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catchall_3
    move-exception v12

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_c

    .line 682
    :catch_6
    move-exception v4

    goto :goto_a

    .end local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catch_7
    move-exception v4

    move-object v9, v10

    .end local v10    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v9    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_a

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    .restart local v11    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_11
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b
.end method

.method private generateDescriptFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 532
    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v10, "backup generateDescriptFile()!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v3, 0x0

    .line 534
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 535
    .local v5, "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    const/4 v0, 0x0

    .line 537
    .local v0, "descriptFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Lcn/nubia/deskclock/util/KXmlSerializer;

    invoke-direct {v6}, Lcn/nubia/deskclock/util/KXmlSerializer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .local v6, "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    const-string v10, "descript.xml"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    .end local v0    # "descriptFile":Ljava/io/File;
    .local v1, "descriptFile":Ljava/io/File;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 540
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    const-string v9, "utf-8"

    invoke-virtual {v6, v4, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 541
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 542
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 543
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const/4 v9, 0x0

    const-string v10, "version"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    const/4 v9, 0x0

    const-string v10, "type"

    const-string v11, "alarm"

    invoke-virtual {v6, v9, v10, v11}, Lcn/nubia/deskclock/util/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    const/4 v9, 0x0

    const-string v10, "device"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const-string v9, "xxxx"

    invoke-virtual {v6, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    const/4 v9, 0x0

    const-string v10, "checksum"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    if-eqz v9, :cond_0

    .line 557
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

    invoke-virtual {v6, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    :cond_0
    const/4 v9, 0x0

    const-string v10, "date"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    const/4 v9, 0x0

    const-string v10, "encrypt"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    iget-object v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    const/4 v9, 0x0

    const-string v10, "amount"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    const/4 v9, 0x0

    const-string v10, "backup_descript"

    invoke-virtual {v6, v9, v10}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    invoke-virtual {v6}, Lcn/nubia/deskclock/util/KXmlSerializer;->endDocument()V

    .line 571
    iget-boolean v9, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v9, :cond_3

    .line 572
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 573
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 574
    const/4 v0, 0x0

    .line 582
    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :goto_0
    const/4 v5, 0x0

    .line 584
    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    if-eqz v4, :cond_2

    .line 585
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 586
    const/4 v3, 0x0

    .line 593
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v7

    .line 588
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 582
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :cond_3
    const/4 v5, 0x0

    .line 584
    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    if-eqz v4, :cond_5

    .line 585
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 586
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move v7, v8

    .line 593
    goto :goto_1

    .line 588
    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 589
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 591
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 578
    .end local v1    # "descriptFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "descriptFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 579
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 582
    const/4 v5, 0x0

    .line 584
    if-eqz v3, :cond_1

    .line 585
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 586
    const/4 v3, 0x0

    goto :goto_1

    .line 588
    :catch_3
    move-exception v2

    .line 589
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    const/4 v5, 0x0

    .line 584
    if-eqz v3, :cond_4

    .line 585
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 586
    const/4 v3, 0x0

    .line 591
    :cond_4
    :goto_5
    throw v7

    .line 588
    :catch_4
    move-exception v2

    .line 589
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_4

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catchall_3
    move-exception v7

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 578
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "descriptFile":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "descriptFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/deskclock/util/KXmlSerializer;
    :cond_6
    move-object v0, v1

    .end local v1    # "descriptFile":Ljava/io/File;
    .restart local v0    # "descriptFile":Ljava/io/File;
    goto :goto_0
.end method

.method private getBackupEntries()Ljava/util/List;
    .locals 6
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
    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    new-instance v2, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;

    invoke-direct {v2}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;-><init>()V

    .line 147
    .local v2, "entry":Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 149
    .local v0, "alarmCount":I
    invoke-virtual {v2, v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setItemCount(I)V

    .line 150
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackupEntries getCount---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setDesc(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setPackageName(Ljava/lang/String;)V

    .line 153
    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->setIconResId(I)V

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v1
.end method

.method private getDatabaseData()Z
    .locals 6

    .prologue
    .line 705
    iget-object v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v5, "backup getDatabaseData!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v2, 0x1

    .line 707
    .local v2, "isBackupSuccess":Z
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/deskclock/model/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v3

    .line 708
    .local v3, "noteCs":Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 709
    const/4 v2, 0x0

    .line 711
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 712
    const/4 v2, 0x0

    .line 715
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 717
    :cond_2
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 718
    .local v0, "alarmData":Lcn/nubia/deskclock/model/Alarm;
    iget-object v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    iget-boolean v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    if-eqz v4, :cond_4

    .line 720
    iget-object v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    const/4 v4, 0x0

    .line 728
    if-eqz v3, :cond_3

    .line 729
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v3, 0x0

    .line 733
    .end local v0    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    :cond_3
    :goto_0
    return v4

    .line 723
    .restart local v0    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    :cond_4
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 728
    if-eqz v3, :cond_5

    .line 729
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v3, 0x0

    .end local v0    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    :cond_5
    :goto_1
    move v4, v2

    .line 733
    goto :goto_0

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 726
    const/4 v2, 0x0

    .line 728
    if-eqz v3, :cond_5

    .line 729
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v3, 0x0

    goto :goto_1

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 729
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v3, 0x0

    .line 732
    :cond_6
    throw v4
.end method

.method private getItemKey(Lcn/nubia/deskclock/model/Alarm;)[Ljava/lang/String;
    .locals 4
    .param p1, "alarmData"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 329
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 330
    .local v0, "itemKey":[Ljava/lang/String;
    const/4 v1, 0x0

    iget v2, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 331
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 332
    const/4 v1, 0x2

    iget-wide v2, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 333
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "flycow/appdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppDataDir:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppDataDir:Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    .line 56
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    :cond_0
    return-void
.end method

.method private startBackup(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 5
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v2, 0x0

    .line 488
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v4, "startBackup!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->init()V

    .line 490
    iput-boolean v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 491
    iput-boolean v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 492
    const/4 v1, 0x1

    .line 493
    .local v1, "isBackupSuccess":Z
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 494
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->backupDataFile:Ljava/io/File;

    .line 496
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getDatabaseData()Z

    move-result v1

    .line 497
    if-nez v1, :cond_0

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-interface {p2, p1, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return v2

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->generateDataFile(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    .line 510
    if-eqz v1, :cond_1

    .line 511
    invoke-direct {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->generateDescriptFile()Z

    move-result v1

    .line 513
    :cond_1
    if-nez v1, :cond_2

    .line 516
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-interface {p2, p1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v2, v1

    .line 528
    goto :goto_0

    .line 517
    :catch_1
    move-exception v0

    .line 518
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAppBackupFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onBackupCompleted(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 526
    :goto_2
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v3, "backup success!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 523
    :catch_2
    move-exception v0

    .line 524
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public cancelBackup()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isBackupCanceled:Z

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRestore()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v1, "cancelRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteData(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataFile"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->deleteAll(Ljava/io/File;)V

    .line 161
    return-void
.end method

.method protected filterRestoreItems(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v5, 0x0

    .line 263
    iget-object v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v7, "restore filterRestoreItems!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v2, "existItemKeySet":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 267
    .local v3, "noteCS":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 268
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/deskclock/model/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 269
    if-nez v3, :cond_1

    .line 296
    if-eqz v3, :cond_0

    .line 297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_0
    :goto_0
    return v5

    .line 272
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 273
    .local v4, "noteCount":I
    if-eqz v4, :cond_4

    .line 274
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :cond_2
    new-instance v6, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    invoke-direct {p0, v6}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getItemKey(Lcn/nubia/deskclock/model/Alarm;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    iget-boolean v6, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v6, :cond_3

    .line 278
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 279
    const-string v6, "cancel"

    invoke-interface {p2, p1, v6}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    if-eqz v3, :cond_0

    .line 297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 282
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 296
    :cond_4
    if-eqz v3, :cond_5

    .line 297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_5
    invoke-direct {p0, v2}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->ItemFilterNote(Ljava/util/Set;)V

    .line 301
    const/4 v5, 0x1

    goto :goto_0

    .line 284
    .end local v4    # "noteCount":I
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    :try_start_4
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-interface {p2, p1, v6}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :goto_1
    if-eqz v3, :cond_0

    .line 297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 289
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e1":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 297
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_6
    throw v5

    .line 291
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 292
    .local v1, "e1":Landroid/content/res/Resources$NotFoundException;
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v1, "onBind!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected parserDataFileToItem(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 22
    .param p1, "dataFile"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "restore parserDataFileToItem!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 348
    .local v14, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v11, 0x1

    .line 349
    .local v11, "isRestoreSuccess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 350
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    .line 354
    :goto_0
    const/4 v7, 0x0

    .line 355
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 356
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    .local v9, "index":I
    const/4 v4, 0x0

    .line 358
    .local v4, "amount":I
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v18, Ljava/io/File;

    const-string v19, "alarm.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 359
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-interface {v13, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 360
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 361
    .local v6, "eventType":I
    const/4 v3, 0x0

    .line 362
    .local v3, "alarmData":Lcn/nubia/deskclock/model/Alarm;
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_f

    .line 363
    packed-switch v6, :pswitch_data_0

    .line 451
    :cond_1
    :goto_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 453
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 459
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 461
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 463
    const-string v18, "cancel"

    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    const/16 v18, 0x0

    .line 476
    if-eqz v8, :cond_e

    .line 477
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 478
    const/4 v7, 0x0

    .line 484
    .end local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v6    # "eventType":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_3
    return v18

    .line 352
    .end local v4    # "amount":I
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "index":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 365
    .restart local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v4    # "amount":I
    .restart local v6    # "eventType":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "index":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    :try_start_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, "tagName":Ljava/lang/String;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 367
    add-int/lit8 v9, v9, 0x1

    .line 368
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v17, "values":Landroid/content/ContentValues;
    const-string v18, "id"

    const/16 v19, 0x0

    const-string v20, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v18, "hour"

    const/16 v19, 0x0

    const-string v20, "hour"

    .line 371
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 370
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v18, "minutes"

    const/16 v19, 0x0

    const-string v20, "minutes"

    .line 373
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 372
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v18, "daysOfWeek"

    const/16 v19, 0x0

    const-string v20, "daysOfWeek"

    .line 375
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 374
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v18, "enabled"

    const/16 v19, 0x0

    const-string v20, "enabled"

    .line 377
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 376
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v18, "time"

    const/16 v19, 0x0

    const-string v20, "time"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    const-string v18, "label"

    const/16 v19, 0x0

    const-string v20, "label"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v18, "alert"

    const/16 v19, 0x0

    const-string v20, "alert"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v18, "snoozeCount"

    const/16 v19, 0x0

    const-string v20, "snoozeCount"

    .line 382
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 381
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v18, "volumeValue"

    const/16 v19, 0x0

    const-string v20, "volumeValue"

    .line 384
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 383
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v18, "cancelCount"

    const/16 v19, 0x0

    const-string v20, "cancelCount"

    .line 386
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 385
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v18, "enableRecentAlarm"

    const/16 v19, 0x0

    const-string v20, "enableRecentAlarm"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v18, "isHolidayAlarm"

    const/16 v19, 0x0

    const-string v20, "isHolidayAlarm"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    new-instance v3, Lcn/nubia/deskclock/model/Alarm;

    .end local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 392
    .restart local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    const/16 v18, 0x0

    const-string v19, "isSnooze"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    .line 393
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const/16 v18, 0x0

    const-string v19, "isSnooze"

    .line 394
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_4
    const/4 v12, 0x1

    .line 396
    .local v12, "isSnooze":Z
    :goto_4
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isSnooze"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "snoozeTime"

    const/16 v20, 0x0

    const-string v21, "snoozeTime"

    .line 400
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 399
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 401
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "snoozeMaxCount"

    const/16 v20, 0x0

    const-string v21, "snoozeMaxCount"

    .line 405
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 404
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 406
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 407
    const/16 v18, 0x0

    const-string v19, "vibrate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    .line 408
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x0

    const-string v19, "vibrate"

    .line 409
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    .line 410
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_5
    const/16 v16, 0x1

    .line 411
    .local v16, "vabrate":Z
    :goto_5
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "vibrate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    const/16 v18, 0x0

    const-string v19, "isPowerOffAlarm"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    .line 413
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x0

    const-string v19, "isPowerOffAlarm"

    .line 414
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    .line 415
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_6
    const/4 v10, 0x1

    .line 416
    .local v10, "isPowerOffAlarm":Z
    :goto_6
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isPowerOffAlarm"

    .line 417
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    const/16 v18, 0x0

    const-string v19, "isAlertIncreasing"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 421
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isAlertIncreasing"

    const/16 v20, 0x0

    const-string v21, "isAlertIncreasing"

    .line 424
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "1"

    .line 425
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 422
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 426
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    :cond_7
    const/16 v18, 0x0

    const-string v19, "isShowNextAlarmPoint"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 431
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isShowNextAlarmPoint"

    const/16 v20, 0x0

    const-string v21, "isShowNextAlarmPoint"

    .line 434
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "1"

    .line 436
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 432
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 436
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 467
    .end local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v6    # "eventType":I
    .end local v10    # "isPowerOffAlarm":Z
    .end local v12    # "isSnooze":Z
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "vabrate":Z
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 468
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_7
    const/4 v11, 0x0

    .line 471
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d005f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 470
    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 476
    :goto_8
    if-eqz v7, :cond_8

    .line 477
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 478
    const/4 v7, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_9
    move/from16 v18, v11

    .line 484
    goto/16 :goto_3

    .line 394
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "eventType":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "tagName":Ljava/lang/String;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 410
    .restart local v12    # "isSnooze":Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 415
    .restart local v16    # "vabrate":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 439
    .end local v12    # "isSnooze":Z
    .end local v16    # "vabrate":Z
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_c
    :try_start_9
    const-string v18, "info"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 440
    const/16 v18, 0x0

    const-string v19, "amount"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_1

    .line 444
    .end local v15    # "tagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "item"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0061

    .line 447
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 446
    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v9, v4, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onProgressChanged(IIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 475
    .end local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v6    # "eventType":I
    :catchall_0
    move-exception v18

    move-object v7, v8

    .line 476
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_a
    if-eqz v7, :cond_d

    .line 477
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 478
    const/4 v7, 0x0

    .line 483
    :cond_d
    :goto_b
    throw v18

    .line 456
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "eventType":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 457
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 459
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v18

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v18
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 480
    :catch_2
    move-exception v5

    .line 481
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    :cond_e
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 476
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_f
    if-eqz v8, :cond_10

    .line 477
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 478
    const/4 v7, 0x0

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 480
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 481
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 483
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 480
    .end local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .end local v6    # "eventType":I
    .local v5, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 481
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 480
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 481
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 475
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v18

    goto :goto_a

    .line 472
    .local v5, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v18

    goto/16 :goto_8

    .line 467
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v5

    goto/16 :goto_7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "eventType":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_10
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected restoreItemToDataBase(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 5
    .param p1, "token"    # I
    .param p2, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v4, "restore restoreItemToDataBase!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    if-nez v3, :cond_0

    .line 259
    :goto_0
    return v2

    .line 238
    :cond_0
    iget-object v3, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 239
    .local v0, "alarmData":Lcn/nubia/deskclock/model/Alarm;
    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->addAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    .line 240
    iget-boolean v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-nez v4, :cond_2

    .line 241
    monitor-enter p0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :cond_2
    iget-boolean v4, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    if-eqz v4, :cond_1

    .line 251
    :try_start_2
    const-string v3, "cancel"

    invoke-interface {p2, p1, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 258
    .end local v0    # "alarmData":Lcn/nubia/deskclock/model/Alarm;
    :cond_3
    iget-object v2, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mAlarmDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 259
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setPauseBackup(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseBackup:Z

    .line 204
    if-nez p1, :cond_0

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit p0

    .line 209
    :cond_0
    return-void

    .line 207
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
    .line 194
    iput-boolean p1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 195
    if-nez p1, :cond_0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit p0

    .line 200
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRestore(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z
    .locals 3
    .param p1, "token"    # I
    .param p2, "dataFile"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->isRestoreCanceled:Z

    .line 214
    iput-boolean v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->mPauseRestore:Z

    .line 215
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v2, "startRestore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, p2, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->parserDataFileToItem(Ljava/lang/String;ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->filterRestoreItems(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0, p1, p3}, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->restoreItemToDataBase(ILcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcn/nubia/databackup/newsolution/aidl/DataBackupService;->TAG:Ljava/lang/String;

    const-string v2, "restore success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    invoke-interface {p3, p1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;->onRestoreCompleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
