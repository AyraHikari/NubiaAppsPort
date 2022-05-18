.class public Lcom/hpplay/sdk/source/process/LelinkSdkService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "pro_pid"

.field private static final m:Ljava/lang/String; = "LelinkSdkService"

.field private static final w:Ljava/lang/String; = "lelink_notification_channel_audio"

.field private static final y:Ljava/lang/String; = "notification_close"


# instance fields
.field a:[B

.field b:[B

.field d:J

.field e:Lcom/hpplay/sdk/source/n$a;

.field f:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field g:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field h:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field i:Lcom/hpplay/sdk/source/api/IConnectListener;

.field j:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field k:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field l:Lcom/hpplay/sdk/source/api/AudioStateListener;

.field private n:Lcom/hpplay/sdk/source/b;

.field private o:Lcom/hpplay/sdk/source/d;

.field private p:Lcom/hpplay/sdk/source/h;

.field private q:Lcom/hpplay/sdk/source/k;

.field private r:Lcom/hpplay/sdk/source/f;

.field private s:Lcom/hpplay/sdk/source/m;

.field private t:Lcom/hpplay/sdk/source/g;

.field private u:Lcom/hpplay/sdk/source/process/a;

.field private v:Lcom/hpplay/sdk/source/protocol/c;

.field private x:Ljava/lang/String;

.field private z:Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    const-string v0, "\u5173\u95ed\u58f0\u97f3"

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->x:Ljava/lang/String;

    .line 87
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a:[B

    .line 88
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->b:[B

    .line 157
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$1;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e:Lcom/hpplay/sdk/source/n$a;

    .line 415
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$2;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->f:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    .line 428
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$3;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->g:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 441
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->h:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 482
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->i:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 509
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$6;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$6;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->j:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 527
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$7;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$7;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->k:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 659
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSdkService$8;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$8;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->l:Lcom/hpplay/sdk/source/api/AudioStateListener;

    return-void

    .line 87
    :array_0
    .array-data 1
        -0x1ct
        -0x47t
        -0x70t
        -0x1at
        -0x6et
        -0x53t
        -0x1at
        -0x76t
        -0x6bt
        -0x1bt
        -0x4ft
        -0x71t
    .end array-data

    .line 88
    :array_1
    .array-data 1
        0x6ct
        0x6ft
        0x63t
        0x61t
        0x6ct
        0x69t
        0x6et
        0x66t
        0x6ft
    .end array-data
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/b;)Lcom/hpplay/sdk/source/b;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->n:Lcom/hpplay/sdk/source/b;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/d;)Lcom/hpplay/sdk/source/d;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->o:Lcom/hpplay/sdk/source/d;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/f;)Lcom/hpplay/sdk/source/f;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->r:Lcom/hpplay/sdk/source/f;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/h;)Lcom/hpplay/sdk/source/h;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->p:Lcom/hpplay/sdk/source/h;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/k;)Lcom/hpplay/sdk/source/k;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->q:Lcom/hpplay/sdk/source/k;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;Lcom/hpplay/sdk/source/m;)Lcom/hpplay/sdk/source/m;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->s:Lcom/hpplay/sdk/source/m;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/process/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    return-object v0
.end method

.method private a(Landroid/app/Notification$Builder;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 725
    const/4 v1, 0x0

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 728
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 729
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 733
    :goto_0
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 735
    const-string v0, "LelinkSdkService"

    const-string v1, " local icon"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :goto_1
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    const-string v2, "LelinkSdkService"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 737
    :cond_0
    const-string v0, "LelinkSdkService"

    const-string v1, " phone icon"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const v0, 0x10800b0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/f;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->r:Lcom/hpplay/sdk/source/f;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/k;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->q:Lcom/hpplay/sdk/source/k;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 672
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 673
    const-string v0, "notification_close"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v0, "LelinkSdkService"

    const-string v2, "serviceToForeground"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 676
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v0, "lelink_notification_channel_audio"

    const-string v3, "\u4e50\u64ad\u6295\u5c4f"

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 678
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 679
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 680
    invoke-virtual {v2, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 681
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 682
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 683
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 686
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "lelink_notification_channel_audio"

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 688
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 689
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Landroid/app/Notification$Builder;)V

    .line 690
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 691
    const-string v2, "lelink_notification_channel_audio"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 692
    invoke-static {p0, v5, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 693
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->x:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 694
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 695
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->startForeground(ILandroid/app/Notification;)V

    .line 709
    :cond_1
    :goto_0
    return-void

    .line 696
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 698
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 699
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 700
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 701
    const/16 v3, 0x40

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 702
    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 703
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a(Landroid/app/Notification$Builder;)V

    .line 704
    invoke-static {p0, v5, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 705
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->x:Ljava/lang/String;

    invoke-direct {v3, v6, v4, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 706
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 707
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/m;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->s:Lcom/hpplay/sdk/source/m;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 743
    const-string v0, "LelinkSdkService"

    const-string v1, "stopServiceForeground"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->stopForeground(Z)V

    .line 745
    return-void
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/d;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->o:Lcom/hpplay/sdk/source/d;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/b;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->n:Lcom/hpplay/sdk/source/b;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/h;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->p:Lcom/hpplay/sdk/source/h;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->c()V

    return-void
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d()V

    return-void
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/protocol/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string v1, "key_huawei"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_hw_sdkauth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "key_xiaomi"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_xm_sdkauth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "key_debug_auth"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_debug_sdkauth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "key_release_auth"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_release_sdkauth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "key_nubia_auth"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_nubia_auth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "key_vo"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_vo_sdkauth:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "key_data_report"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_rp:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "key_ad"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_ad:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "key_adengine"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_adeng:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "key_pincode"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_pin:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "key_short_link"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_short_link:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "key_mdns"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_imdns:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "key_gslb"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_gslb_root:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "key_dev_mgr"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_dev_manager:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "key_txt_info"

    sget v2, Lcom/hpplay/sdk/source/R$string;->url_txt_info:I

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 140
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/store/Preference;->initPreference(Landroid/content/Context;)Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "all_urls"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/process/a;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/process/a;-><init>(ZZ)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    .line 471
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->start()V

    .line 473
    :cond_2
    const-string v0, "threadTs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/process/a;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->u:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->a()V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d:J

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->d()V

    .line 413
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e:Lcom/hpplay/sdk/source/n$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    invoke-static {p0}, Lcom/hpplay/sdk/source/common/store/Session;->initSession(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->a()V

    .line 98
    invoke-static {}, Lcom/hpplay/sdk/source/d/a;->a()Lcom/hpplay/sdk/source/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/d/a;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->l:Lcom/hpplay/sdk/source/api/AudioStateListener;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/c;-><init>(Lcom/hpplay/sdk/source/api/AudioStateListener;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->a()V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    const-string v1, "notification_close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;-><init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->z:Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;

    .line 105
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->z:Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :cond_1
    const-string v0, "pro_pid"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pro_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    const-string v0, "LelinkSdkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk service onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/permission/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 114
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->j()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    .line 117
    const-string v0, "LelinkSdkService"

    const-string v1, " not permission "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/content/Context;)V

    .line 120
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 749
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 750
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService;->v:Lcom/hpplay/sdk/source/protocol/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->e()V

    .line 753
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 145
    const-string v0, "LelinkSdkService"

    const-string v1, "----onStartCommand----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
