.class public Lcn/nubia/upgrade/util/InstallUtil;
.super Ljava/lang/Object;
.source "InstallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/InstallUtil$InstallResultReceiver;
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
    .line 23
    const-string v0, "InstallUtil"

    sput-object v0, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/util/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/SynchronousQueue;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    return-object v0
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
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
    .line 166
    if-eqz p0, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
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
    .line 76
    const/4 v12, 0x0

    .line 77
    .local v12, "in":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 78
    .local v14, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 79
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v15, 0x0

    .line 82
    .local v15, "success":Z
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    .line 84
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v8, "apkFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 88
    .local v6, "sizeBytes":J
    const-string v3, "base.apk"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v14

    .line 91
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v12    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 95
    .local v16, "total":I
    const/high16 v3, 0x10000

    :try_start_1
    new-array v9, v3, [B

    .line 96
    .local v9, "buffer":[B
    :goto_0
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "c":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_1

    .line 97
    add-int v16, v16, v10

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v14, v9, v3, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 103
    .end local v9    # "buffer":[B
    .end local v10    # "c":I
    :catch_0
    move-exception v11

    move-object v12, v13

    .line 104
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

    .line 106
    invoke-static {v12}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v14}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 112
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v15

    .line 100
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

    .line 101
    sget-object v3, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyInstallFile streamed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    const/4 v15, 0x1

    .line 106
    invoke-static {v13}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v14}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 106
    .end local v6    # "sizeBytes":J
    .end local v8    # "apkFile":Ljava/io/File;
    .end local v9    # "buffer":[B
    .end local v10    # "c":I
    .end local v16    # "total":I
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v12}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v14}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    throw v3

    .line 106
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

    .line 103
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
    .line 65
    const/4 v1, -0x1

    .line 67
    .local v1, "sessionId":I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInstaller"    # Landroid/content/pm/PackageInstaller;
    .param p2, "sessionId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v6, 0x0

    .line 120
    .local v6, "success":Z
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v4

    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "cn.nubia.upgrade.action.InstallResultReceiver"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v7, 0x1

    const/high16 v8, 0x8000000

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 125
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 128
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v8, "execInstallCommand... blocked until received result"

    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v8, 0xb4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 131
    .local v3, "result":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 132
    const-string v7, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 133
    .local v5, "status":I
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status of silent install: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 135
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v8, "silent install fail, may be app not having enough permissions."

    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    if-nez v5, :cond_1

    .line 138
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v8, "execInstallCommand success"

    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v6, 0x1

    .line 151
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :goto_0
    return v6

    .line 141
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v5    # "status":I
    :cond_1
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execInstallCommand Failure ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.content.pm.extra.STATUS_MESSAGE"

    .line 142
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "result":Landroid/content/Intent;
    :cond_2
    :try_start_1
    sget-object v7, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v8, "execInstallCommand wait timeout."

    invoke-static {v7, v8}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static installAPI28(Landroid/content/Context;Ljava/lang/String;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 33
    sget-object v11, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "installAPI28 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v6

    .line 38
    .local v6, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v8, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 39
    .local v8, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 40
    .local v2, "byteSize":J
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_1

    .line 41
    sget-object v10, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v11, "silent installation failed, because apk file size <= 0."

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "byteSize":J
    .end local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_0
    :goto_0
    return v9

    .line 45
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v2    # "byteSize":J
    .restart local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_1
    invoke-virtual {v8, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 46
    invoke-static {v6, v8}, Lcn/nubia/upgrade/util/InstallUtil;->createInstallSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v7

    .line 47
    .local v7, "sessionId":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    .line 48
    invoke-static {v6, v7, p1}, Lcn/nubia/upgrade/util/InstallUtil;->copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z

    move-result v1

    .line 49
    .local v1, "copySuccess":Z
    if-eqz v1, :cond_0

    .line 50
    invoke-static {p0, v6, v7}, Lcn/nubia/upgrade/util/InstallUtil;->execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z

    move-result v5

    .line 51
    .local v5, "execInstallSuccess":Z
    if-eqz v5, :cond_0

    .line 52
    sget-object v11, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v12, "silent installation succeeded."

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v10

    .line 53
    goto :goto_0

    .line 57
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "copySuccess":Z
    .end local v2    # "byteSize":J
    .end local v5    # "execInstallSuccess":Z
    .end local v6    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v7    # "sessionId":I
    .end local v8    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_0
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
