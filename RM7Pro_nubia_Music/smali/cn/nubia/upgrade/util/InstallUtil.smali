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
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 76
    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 88
    const-string v1, "base.apk"

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 91
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    const/high16 v1, 0x10000

    :try_start_3
    new-array v4, v1, [B

    move v1, v6

    .line 96
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 97
    add-int/2addr v1, v5

    .line 98
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    move-object v7, v2

    move-object v2, v3

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 104
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 106
    invoke-static {v2}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v7}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V

    move v0, v6

    .line 112
    :goto_2
    return v0

    .line 100
    :cond_0
    :try_start_5
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 101
    sget-object v4, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyInstallFile streamed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " bytes"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    const/4 v1, 0x1

    .line 106
    invoke-static {v3}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v2}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    move v0, v1

    goto :goto_2

    .line 106
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    :goto_3
    invoke-static {v3}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v2}, Lcn/nubia/upgrade/util/InstallUtil;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_1
    throw v0

    .line 106
    :catchall_1
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v7

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v7

    goto :goto_3

    .line 103
    :catch_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v7

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    move-object v10, v2

    move-object v2, v7

    move-object v7, v10

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private static createInstallSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 65
    const/4 v0, -0x1

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    .line 121
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v4, "cn.nubia.upgrade.action.InstallResultReceiver"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v4, 0x1

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 128
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v3, "execInstallCommand... blocked until received result"

    invoke-static {v0, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->mInstallResults:Ljava/util/concurrent/SynchronousQueue;

    const-wide/16 v4, 0xb4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 131
    if-eqz v0, :cond_2

    .line 132
    const-string v3, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 133
    sget-object v4, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status of silent install: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 135
    sget-object v4, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v5, "silent install fail, may be app not having enough permissions."

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    if-nez v3, :cond_1

    .line 138
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v3, "execInstallCommand success"

    invoke-static {v0, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 141
    :cond_1
    sget-object v1, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execInstallCommand Failure ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v1, "execInstallCommand wait timeout."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static installAPI28(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 33
    sget-object v2, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAPI28 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 38
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 40
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_1

    .line 41
    sget-object v1, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v2, "silent installation failed, because apk file size <= 0."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 46
    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/InstallUtil;->createInstallSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    .line 47
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 48
    invoke-static {v3, v2, p1}, Lcn/nubia/upgrade/util/InstallUtil;->copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z

    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    invoke-static {p0, v3, v2}, Lcn/nubia/upgrade/util/InstallUtil;->execInstallCommand(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z

    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcn/nubia/upgrade/util/InstallUtil;->TAG:Ljava/lang/String;

    const-string v3, "silent installation succeeded."

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 53
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
