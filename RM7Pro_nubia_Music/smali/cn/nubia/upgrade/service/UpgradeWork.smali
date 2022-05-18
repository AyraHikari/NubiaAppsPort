.class Lcn/nubia/upgrade/service/UpgradeWork;
.super Ljava/lang/Object;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;,
        Lcn/nubia/upgrade/service/UpgradeWork$a;,
        Lcn/nubia/upgrade/service/UpgradeWork$b;,
        Lcn/nubia/upgrade/service/UpgradeWork$c;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private b:Ljava/lang/String;

.field private c:Lcn/nubia/upgrade/service/UpgradeWork$c;

.field private d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/app/NotificationManager;

.field private h:Landroid/app/Notification$Builder;

.field private i:Lcn/nubia/upgrade/http/HttpDownloadManager;

.field private j:Lcn/nubia/upgrade/http/DownloadRequest;

.field private volatile k:Landroid/os/Looper;

.field private volatile l:Landroid/os/Handler;

.field private m:Ljava/lang/String;

.field private n:Lcn/nubia/upgrade/service/UpgradeWork$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/app/Notification;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "UpgradeWork"

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->o:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->p:Ljava/lang/String;

    .line 79
    new-instance v0, Lcn/nubia/upgrade/util/InstallUtil$InstallResultReceiver;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/InstallUtil$InstallResultReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->s:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork$1;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork$1;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->r:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->i:Lcn/nubia/upgrade/http/HttpDownloadManager;

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 679
    return-void
.end method

.method private a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 675
    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v2, 0x0

    const/16 v4, 0x65

    .line 449
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 450
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 547
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->f:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    .line 460
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 461
    new-instance v1, Lcom/zupgrade/sdk/util/Bsdiff;

    invoke-direct {v1}, Lcom/zupgrade/sdk/util/Bsdiff;-><init>()V

    .line 462
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p1}, Lcom/zupgrade/sdk/util/Bsdiff;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 468
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 546
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 475
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;Z)V

    goto :goto_1

    .line 480
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 486
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 489
    :catch_1
    move-exception v0

    .line 490
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 498
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 503
    :cond_7
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v0, :cond_2

    .line 505
    :try_start_4
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 506
    :catch_2
    move-exception v0

    .line 507
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 508
    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_1

    .line 516
    :cond_8
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    if-nez v0, :cond_9

    .line 518
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 521
    :cond_9
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 523
    :try_start_5
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 526
    :catch_3
    move-exception v0

    .line 527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1

    .line 532
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 537
    :cond_b
    :try_start_6
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 540
    :catch_4
    move-exception v0

    .line 541
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 542
    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 6

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 154
    const-string v0, "downLoadBinderProxy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    const-string v2, "Build.VERSION.SDK_INT < 18"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    const-string v0, "android.os.Bundle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    const-string v2, "getIBinder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "downLoadBinderProxy"

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 168
    :catch_3
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 170
    :catch_4
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 394
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".FileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    :goto_0
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    :cond_0
    return-void

    .line 397
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    const-string v1, "start notification fail, iconId invalid!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    .line 204
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    .line 205
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 207
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 208
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 213
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 216
    :cond_2
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 219
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->r:Landroid/app/Notification;

    .line 223
    :goto_1
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNotification title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contentText:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->r:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->r:Landroid/app/Notification;

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 416
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 418
    invoke-static {p1, p2}, Lcn/nubia/upgrade/util/InstallUtil;->installAPI28(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 441
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 421
    goto :goto_0

    .line 424
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "chmod"

    aput-object v3, v2, v1

    const-string v3, "666"

    aput-object v3, v2, v0

    aput-object p2, v2, v4

    invoke-static {v2}, Lcn/nubia/upgrade/util/CommonUtils;->doExec([Ljava/lang/String;)Ljava/lang/String;

    .line 426
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pm"

    aput-object v3, v2, v1

    const-string v3, "install"

    aput-object v3, v2, v0

    const-string v3, "--user"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    const-string v4, "-r"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "-i"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    .line 433
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    .line 426
    invoke-static {v2}, Lcn/nubia/upgrade/util/CommonUtils;->doExec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 437
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(silent install FAIL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(silent install SUCCESS)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->r:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic f(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic g(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/upgrade/service/UpgradeWork;->c()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->n:Lcn/nubia/upgrade/service/UpgradeWork$a;

    return-object v0
.end method

.method static synthetic m(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->c:Lcn/nubia/upgrade/service/UpgradeWork$c;

    return-object v0
.end method

.method static synthetic p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object v0
.end method

.method static synthetic q(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->u:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadCallingPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 228
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->t:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->s:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->i:Lcn/nubia/upgrade/http/HttpDownloadManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->i:Lcn/nubia/upgrade/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->releaseDownload()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 237
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    const-string v1, ":UpgradeWork onDestroy."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    .line 241
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->t:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    const-string v1, "cn.nubia.upgrade.action.InstallResultReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->s:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->f:Landroid/content/pm/PackageManager;

    .line 107
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork$a;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork$a;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->n:Lcn/nubia/upgrade/service/UpgradeWork$a;

    .line 108
    new-instance v0, Lcn/nubia/upgrade/http/HttpDownloadManager;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/upgrade/http/HttpDownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->i:Lcn/nubia/upgrade/http/HttpDownloadManager;

    .line 109
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork$c;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork$c;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->c:Lcn/nubia/upgrade/service/UpgradeWork$c;

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-DownloadAndInstall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->k:Landroid/os/Looper;

    .line 113
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork$b;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->k:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcn/nubia/upgrade/service/UpgradeWork$b;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 121
    const-string v0, "ConfigurationData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 123
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 126
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 127
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->q:Ljava/lang/String;

    .line 128
    invoke-direct {p0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->d:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    .line 130
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 132
    const-string v0, "downloadRequest"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 134
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    sget-object v0, Lcn/nubia/upgrade/http/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/DownloadRequest;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->j:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 139
    :cond_0
    const-string v0, "authid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->o:Ljava/lang/String;

    .line 140
    const-string v0, "authkey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->p:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->b:Ljava/lang/String;

    const-string v1, ":UpgradeWork Restart!!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->l:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->u:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    .line 683
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->u:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->c:Lcn/nubia/upgrade/service/UpgradeWork$c;

    new-instance v1, Lcn/nubia/upgrade/service/UpgradeWork$2;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/service/UpgradeWork$2;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork$c;->post(Ljava/lang/Runnable;)Z

    .line 670
    :cond_0
    return-void
.end method
