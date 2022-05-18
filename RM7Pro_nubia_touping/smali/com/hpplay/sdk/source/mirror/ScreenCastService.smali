.class public Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;,
        Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;,
        Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;,
        Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final X:Ljava/lang/String; = "notification_clicked_content"

.field private static final Y:Ljava/lang/String; = "notification_disconnect"

.field public static final a:I = 0x1

.field public static final b:I = 0x0

.field public static final c:I = 0xa

.field public static final d:I = 0xb

.field public static final e:I = 0xc

.field public static final f:Ljava/lang/String; = "key_browserinfo"

.field public static final g:Ljava/lang/String; = "key_mirrorinfo"

.field public static final h:I = 0x1

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:Ljava/lang/String; = "key_has_window_permiss"

.field public static final o:Ljava/lang/String; = "mirrorSwtich"

.field private static final r:Ljava/lang/String; = "ScreenCastService"

.field private static final s:Ljava/lang/String; = "com.hpplay.sdk.source.mirrorcast.ScreenCastService"

.field private static final t:Ljava/lang/String; = "lelink_notification_channel"


# instance fields
.field private A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

.field private B:Lcom/hpplay/sdk/source/protocol/c;

.field private C:Landroid/widget/TextView;

.field private D:Lcom/hpplay/sdk/source/mirror/i;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Lcom/hpplay/sdk/source/browse/b/b;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

.field private Z:Z

.field protected p:Landroid/media/projection/MediaProjection;

.field final q:Landroid/hardware/SensorEventListener;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/view/WindowManager;

.field private x:Landroid/view/WindowManager$LayoutParams;

.field private y:Landroid/hardware/SensorManager;

.field private z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    const-string v0, "\u5df2\u8fde\u63a5\u5230 "

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->u:Ljava/lang/String;

    .line 80
    const-string v0, "\u65ad\u5f00\u8fde\u63a5"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->v:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->S:Z

    .line 117
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->T:Z

    .line 118
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->U:I

    .line 124
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    .line 190
    new-instance v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;-><init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    return v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 384
    const-string v0, "\u5df2\u8fde\u63a5\u5230 "

    .line 385
    const-string v2, "\u65ad\u5f00\u8fde\u63a5"

    .line 386
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 387
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->V:Ljava/lang/String;

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->V:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 396
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "status_big"

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_0
    if-eqz v0, :cond_1

    .line 405
    const-string v5, "icontest"

    const-string v6, "get drawable success "

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 418
    :goto_1
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 423
    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 424
    const-string v0, "DlnaService"

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v3, "coloros.intent.action.dlna.service.close"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {p0, v9, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 430
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dlna_disconnect"

    const-string v7, "string"

    .line 431
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 430
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 435
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 438
    :goto_4
    new-instance v2, Landroid/app/Notification$Action$Builder;

    invoke-direct {v2, v1, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 439
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 438
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 440
    const/16 v0, 0x3e9

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->startForeground(ILandroid/app/Notification;)V

    .line 442
    :cond_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string v5, "ScreenCastService"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 409
    :cond_1
    const-string v0, "icontest"

    const-string v5, "get drawable failed use local icon "

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :try_start_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "status_big.png"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 414
    :catch_1
    move-exception v0

    .line 415
    const-string v5, "ScreenCastService"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 421
    :cond_2
    const v0, 0x1080093

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 432
    :catch_2
    move-exception v0

    .line 433
    const-string v5, "ScreenCastService"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_4
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->h()V

    return-void
.end method

.method private c(Z)V
    .locals 5

    .prologue
    .line 943
    const-string v0, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeMirrorStatus status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :try_start_0
    const-string v0, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 946
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 947
    const-string v2, "MirrorPlayStatus"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 948
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    const-string v4, "CALL_3"

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 949
    const-string v1, "ScreenCastService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeMirrorStatus result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    const-string v1, "ScreenCastService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/i;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "ScreenCastService"

    const-string v1, "-------------->>> initRotationSensor "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->I:I

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->l()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 217
    const-string v3, "ScreenCastService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------------> rotaionCheck rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v1, v0

    .line 223
    goto :goto_1

    .line 228
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mirror/i;->b(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 234
    :pswitch_2
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(I)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_3

    .line 240
    :pswitch_3
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mirror/i;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_4

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p()V

    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v2, 0x1

    .line 313
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "ScreenCastService"

    const-string v1, "serviceToForeground ignore"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 319
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->j()V

    .line 321
    invoke-direct {p0, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->k()V

    goto :goto_0

    .line 325
    :cond_3
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 326
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "lelink_notification_channel"

    const-string v3, "lelink_notification_channel"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 328
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lelink_notification_channel"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 330
    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 331
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 334
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 337
    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 338
    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 339
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "DlnaService"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 348
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 349
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 350
    invoke-virtual {v1, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 351
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 352
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 357
    :cond_0
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v6}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->stopForeground(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a()V

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 448
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 449
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "lelink_notification_channel"

    const-string v4, "lelink_notification_channel"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 450
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 451
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "lelink_notification_channel"

    invoke-direct {v2, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 453
    const/16 v3, 0x40

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 454
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->V:Ljava/lang/String;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->V:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 457
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 458
    const-string v0, "lelink_notification_channel"

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 462
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "wifi_display"

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    :goto_0
    if-eqz v0, :cond_1

    .line 468
    const-string v3, "ScreenCastService"

    const-string v4, "get drawable success "

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 481
    :goto_1
    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 486
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    const-string v3, "notification_disconnect"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v7, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 490
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 491
    const-string v4, "notification_clicked_content"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const/high16 v4, 0x8000000

    invoke-static {p0, v7, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 494
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 495
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->v:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 496
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 495
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 497
    const-string v0, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startForeground  tips2 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->startForeground(ILandroid/app/Notification;)V

    .line 500
    :cond_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v3, "ScreenCastService"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 472
    :cond_1
    const-string v0, "ScreenCastService"

    const-string v3, "get drawable failed use local icon "

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "wifi_display.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 475
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 477
    :catch_1
    move-exception v0

    .line 478
    const-string v3, "ScreenCastService"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 484
    :cond_2
    const v0, 0x1080093

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_2
.end method

.method private l()V
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->stopForeground(Z)V

    .line 542
    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 641
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    .line 643
    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    .line 644
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 645
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 646
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 649
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 650
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 651
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x44f00000    # 1920.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 652
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x44870000    # 1080.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 653
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 655
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 656
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 657
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->x:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_has_window_permiss"

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->W:Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private o()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 759
    .line 760
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v4, "atv"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v4, "atv"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_1

    :cond_1
    move v0, v1

    .line 773
    :goto_1
    return v0

    .line 761
    :pswitch_0
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-string v5, "2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 764
    goto :goto_1

    :pswitch_4
    move v0, v2

    .line 767
    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 769
    goto :goto_1

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private p()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->B:Lcom/hpplay/sdk/source/protocol/c;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->B:Lcom/hpplay/sdk/source/protocol/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->e()V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 801
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->W:Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    const-string v1, "notification_disconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 371
    const-string v0, "ScreenCastService"

    const-string v1, "pendingIntentClick  cancel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    const-string v1, "notification_clicked_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 376
    const-string v0, "ScreenCastService"

    const-string v1, "pendingIntentClickContent  cancel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_1
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(IZ)V

    .line 751
    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mirror/i;->a(IIII)V

    .line 739
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 576
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 577
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p:Landroid/media/projection/MediaProjection;

    .line 579
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 586
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V
    .locals 4

    .prologue
    .line 281
    const-string v1, "ScreenCastService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMirrorInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    .line 283
    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->E:I

    .line 285
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->F:I

    .line 286
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getBitRate()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->G:I

    .line 287
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getFrame()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->H:I

    .line 288
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAudioEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->T:Z

    .line 289
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getScreenCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->O:Ljava/lang/String;

    .line 290
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->K:Ljava/lang/String;

    .line 291
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getConnectSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->L:Ljava/lang/String;

    .line 292
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    .line 293
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getmUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->M:Ljava/lang/String;

    .line 294
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->isAutoBitRate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->R:Z

    .line 295
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;->getIframeInterval()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->U:I

    .line 296
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    if-nez v1, :cond_2

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    .line 303
    :goto_1
    const-string v1, "ScreenCastService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nubia isFullScreen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->i()V

    .line 307
    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 805
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 806
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 807
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 808
    const-string v7, "ScreenCastService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_0
    const-string v2, "mContext"

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 811
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 812
    const-string v3, "ScreenCastService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 812
    goto :goto_1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 161
    invoke-static {p0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 162
    invoke-static {p0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 163
    if-nez p1, :cond_2

    .line 164
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeMessages(I)V

    .line 165
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    :cond_0
    :goto_0
    if-le v1, v0, :cond_3

    if-eqz p1, :cond_3

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->I:I

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 176
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/i;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 504
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    const-string v1, "notification_clicked_content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v1, "notification_disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    new-instance v1, Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;-><init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->W:Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

    .line 508
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->W:Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/i;->b(Z)V

    .line 745
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->a()V

    .line 548
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->c()V

    .line 554
    :cond_0
    return-void
.end method

.method public e()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 689
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b()V

    .line 690
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->g()V

    .line 692
    const-string v0, "ScreenCastService"

    const-string v1, " -------------> startMirror "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    if-nez v0, :cond_1

    .line 733
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 699
    const-string v0, "ScreenCastService"

    const-string v1, "-------------->>> mSensorManager registerListener  "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->y:Landroid/hardware/SensorManager;

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->I:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 703
    :cond_2
    iput-boolean v11, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    .line 704
    const-string v0, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMirror "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "vv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "htv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->F:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->E:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->O:Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->o()I

    move-result v6

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->M:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    iget-boolean v9, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->R:Z

    iget-object v10, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->K:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/hpplay/sdk/source/mirror/b/b;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 720
    :goto_2
    new-instance v0, Lcom/hpplay/sdk/source/mirror/i;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p:Landroid/media/projection/MediaProjection;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->G:I

    iget-boolean v5, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->T:Z

    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->K:Ljava/lang/String;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->L:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mirror/i;-><init>(Lcom/hpplay/sdk/source/mirror/b/d;Landroid/media/projection/MediaProjection;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;IZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    .line 722
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->R:Z

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(Z)V

    .line 723
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->H:I

    if-lez v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->H:I

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(I)V

    .line 726
    :cond_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->U:I

    if-lez v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->U:I

    invoke-virtual {v0, v1, v11}, Lcom/hpplay/sdk/source/mirror/i;->a(IZ)V

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->start()V

    .line 731
    new-instance v0, Lcom/hpplay/sdk/source/protocol/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/hpplay/sdk/source/mirror/i;->o:I

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/hpplay/sdk/source/protocol/c;-><init>(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->B:Lcom/hpplay/sdk/source/protocol/c;

    .line 732
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->B:Lcom/hpplay/sdk/source/protocol/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->a()V

    goto/16 :goto_0

    .line 713
    :cond_5
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->F:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->E:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->M:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    iget-boolean v7, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->R:Z

    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->K:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/hpplay/sdk/source/mirror/b/b;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 717
    :cond_6
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/a;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->J:Lcom/hpplay/sdk/source/browse/b/b;

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->F:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->E:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->O:Ljava/lang/String;

    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->M:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Q:Z

    iget-boolean v8, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->R:Z

    invoke-direct/range {v0 .. v8}, Lcom/hpplay/sdk/source/mirror/b/a;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;Ljava/lang/String;ZZ)V

    move-object v1, v0

    goto :goto_2
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    const-string v0, "ScreenCastService"

    const-string v1, "stopMirror "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    .line 779
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->l()V

    .line 780
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p()V

    .line 781
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->h()V

    .line 783
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->D:Lcom/hpplay/sdk/source/mirror/i;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p:Landroid/media/projection/MediaProjection;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Ljava/lang/Object;)V

    .line 787
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->p:Landroid/media/projection/MediaProjection;

    .line 789
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 558
    const-string v0, "ScreenCastService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-eqz p1, :cond_0

    .line 560
    const-string v0, "mirrorSwtich"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 561
    const-string v1, "ScreenCastService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    if-nez v0, :cond_2

    .line 563
    const-string v0, "key_browserinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 564
    const-string v2, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "key_mirrorinfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    .line 566
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V

    .line 572
    :cond_0
    :goto_1
    new-instance v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;-><init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    return-object v0

    .line 564
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 567
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f()V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    const-string v0, "ScreenCastService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;-><init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->z:Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    .line 131
    new-instance v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    invoke-direct {v0, p0, p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;-><init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->A:Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    .line 132
    invoke-static {p0}, Lcom/hpplay/sdk/source/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->N:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->N:Ljava/lang/String;

    .line 142
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->m()V

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->P:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->Z:Z

    .line 149
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->g()V

    .line 150
    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->N:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->N:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 666
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 667
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->w:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->C:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->n()V

    .line 677
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f()V

    .line 678
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const-string v1, "ScreenCastService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 262
    const-string v0, "ScreenCastService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string v0, "mirrorSwtich"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    if-nez v0, :cond_2

    .line 267
    const-string v0, "key_browserinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 268
    const-string v2, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "key_mirrorinfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V

    .line 277
    :cond_0
    :goto_1
    invoke-super {p0, p1, v4, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 268
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_2
    if-ne v0, v4, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f()V

    goto :goto_1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->stopSelf()V

    .line 258
    return-void
.end method
