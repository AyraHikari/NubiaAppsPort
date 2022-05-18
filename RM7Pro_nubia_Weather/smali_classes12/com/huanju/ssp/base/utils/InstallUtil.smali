.class public Lcom/huanju/ssp/base/utils/InstallUtil;
.super Ljava/lang/Object;
.source "InstallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/utils/InstallUtil$InstallResultReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_COMMAND_RESULT:Ljava/lang/String; = "cn.nubia.upgrade.action.InstallResultReceiver"

.field public static final INSTALL_RESULT_FAILURE:I = 0x2

.field public static final INSTALL_RESULT_SUCCESS:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mInstallResults:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "InstallUtil"

    sput-object v0, Lcom/huanju/ssp/base/utils/InstallUtil;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/utils/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/SynchronousQueue;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/huanju/ssp/base/utils/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    return-object v0
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 157
    if-eqz p0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 165
    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z
    .locals 17
    .param p0, "packageInstaller"    # Landroid/content/pm/PackageInstaller;
    .param p1, "sessionId"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 75
    const/4 v12, 0x0

    .line 76
    .local v12, "in":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 77
    .local v14, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 78
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v15, 0x0

    .line 80
    .local v15, "success":Z
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    .line 82
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v8, "apkFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 85
    .local v6, "sizeBytes":J
    const-string v3, "base.apk"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v14

    .line 87
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v12    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 90
    .local v16, "total":I
    const/high16 v3, 0x10000

    :try_start_1
    new-array v9, v3, [B

    .line 92
    .local v9, "buffer":[B
    :goto_0
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "c":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_1

    .line 93
    add-int v16, v16, v10

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v14, v9, v3, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 99
    .end local v9    # "buffer":[B
    .end local v10    # "c":I
    :catch_0
    move-exception v11

    move-object v12, v13

    .line 100
    .end local v6    # "sizeBytes":J
    .end local v8    # "apkFile":Ljava/io/File;
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v16    # "total":I
    .local v11, "e":Ljava/lang/Exception;
    .restart local v12    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {v12}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 104
    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 108
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v15

    .line 96
    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v6    # "sizeBytes":J
    .restart local v8    # "apkFile":Ljava/io/File;
    .restart local v9    # "buffer":[B
    .restart local v10    # "c":I
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v16    # "total":I
    :cond_1
    :try_start_3
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyInstallFile streamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    const/4 v15, 0x1

    .line 102
    invoke-static {v13}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 104
    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 102
    .end local v6    # "sizeBytes":J
    .end local v8    # "apkFile":Ljava/io/File;
    .end local v9    # "buffer":[B
    .end local v10    # "c":I
    .end local v16    # "total":I
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v12}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 104
    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 107
    :cond_2
    throw v3

    .line 102
    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v6    # "sizeBytes":J
    .restart local v8    # "apkFile":Ljava/io/File;
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v16    # "total":I
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 99
    .end local v6    # "sizeBytes":J
    .end local v8    # "apkFile":Ljava/io/File;
    .end local v16    # "total":I
    :catch_1
    move-exception v11

    goto :goto_1

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v6    # "sizeBytes":J
    .restart local v8    # "apkFile":Ljava/io/File;
    .restart local v9    # "buffer":[B
    .restart local v10    # "c":I
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v16    # "total":I
    :cond_3
    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static createInstallSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 2
    .param p0, "packageInstaller"    # Landroid/content/pm/PackageInstaller;
    .param p1, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 65
    .local v1, "sessionId":I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInstaller"    # Landroid/content/pm/PackageInstaller;
    .param p2, "sessionId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v6, 0x0

    .line 118
    .local v6, "success":Z
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v4

    .line 119
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "com.huanju.ssp.base.core.download.receiver.DownloadReceiver"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v7, 0x1

    const/high16 v8, 0x8000000

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 124
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 126
    const-string v7, "execInstallCommand... blocked until received result"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 128
    sget-object v7, Lcom/huanju/ssp/base/utils/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v8, 0x14

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 130
    .local v3, "result":Landroid/content/Intent;
    const-string v7, "execInstallCommand... blocked until received result"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 131
    if-eqz v3, :cond_1

    .line 132
    const-string v7, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 135
    .local v5, "status":I
    if-nez v5, :cond_0

    .line 136
    const-string v7, "execInstallCommand success"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 137
    const/4 v6, 0x1

    .line 152
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :goto_0
    return v6

    .line 139
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v5    # "status":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execInstallCommand Failure ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    .line 141
    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "execInstallCommand error"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "result":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v7, "execInstallCommand wait timeout"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static installAPI28(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installAPI28 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 30
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 32
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v6

    .line 33
    .local v6, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v8, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 35
    .local v8, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 36
    .local v2, "byteSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_1

    .line 37
    const/4 v9, 0x2

    .line 57
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "byteSize":J
    .end local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_0
    :goto_0
    return v9

    .line 40
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v2    # "byteSize":J
    .restart local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_1
    invoke-virtual {v8, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 41
    invoke-static {v6, v8}, Lcom/huanju/ssp/base/utils/InstallUtil;->createInstallSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v7

    .line 43
    .local v7, "sessionId":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 44
    invoke-static {v6, v7, p1}, Lcom/huanju/ssp/base/utils/InstallUtil;->copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z

    move-result v1

    .line 46
    .local v1, "copySuccess":Z
    if-eqz v1, :cond_2

    .line 47
    invoke-static {p0, v6, v7}, Lcom/huanju/ssp/base/utils/InstallUtil;->execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 49
    .local v5, "execInstallSuccess":Z
    if-nez v5, :cond_0

    .line 57
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "copySuccess":Z
    .end local v2    # "byteSize":J
    .end local v5    # "execInstallSuccess":Z
    .end local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v7    # "sessionId":I
    .end local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_2
    :goto_1
    const/4 v9, 0x3

    goto :goto_0

    .line 53
    :catch_0
    move-exception v4

    .line 54
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
