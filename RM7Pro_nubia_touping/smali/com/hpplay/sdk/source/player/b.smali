.class public Lcom/hpplay/sdk/source/player/b;
.super Lcom/hpplay/sdk/source/player/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/player/b$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "LEBO"

.field private static final D:Ljava/lang/String; = "DlnaPlayerControl"

.field private static final E:Ljava/lang/String; = "1"

.field private static final F:Ljava/lang/String; = "0"

.field private static final G:I = 0x3e8

.field private static final H:I = 0x5dc

.field public static final v:Ljava/lang/String; = "PLAYING"

.field public static final w:Ljava/lang/String; = "STOPPED"

.field public static final x:Ljava/lang/String; = "loading"

.field public static final y:Ljava/lang/String; = "REL_TIME"

.field public static final z:Ljava/lang/String; = "PAUSED_PLAYBACK"


# instance fields
.field public B:I

.field public C:I

.field private I:Landroid/os/HandlerThread;

.field private J:Lcom/hpplay/sdk/source/player/a/a;

.field private K:Lcom/hpplay/sdk/source/player/b$a;

.field private L:Z

.field private M:Z

.field private N:I

.field private O:J

.field private P:J

.field private Q:Z

.field private R:J

.field private S:I

.field private T:Z

.field private U:I

.field private V:Lcom/hpplay/cybergarage/upnp/event/EventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/a;-><init>()V

    .line 54
    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    .line 55
    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    .line 324
    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->U:I

    .line 602
    new-instance v0, Lcom/hpplay/sdk/source/player/b$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/b$2;-><init>(Lcom/hpplay/sdk/source/player/b;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b;->V:Lcom/hpplay/cybergarage/upnp/event/EventListener;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hpplay/sdk/source/player/b;->O:J

    return-wide p1
.end method

.method private a(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method private a(JJ)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V

    .line 363
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b;JJ)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/player/b;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->Q:Z

    return v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/b;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/b;->T:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/b;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->P:J

    return-wide v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/b;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hpplay/sdk/source/player/b;->P:J

    return-wide p1
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 340
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 343
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/b;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/b;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/b;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hpplay/sdk/source/player/b;->R:J

    return-wide p1
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 368
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 369
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 370
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/b;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    return v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/player/b;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->M:Z

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/player/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->h()V

    return-void
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/player/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->i()V

    return-void
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/player/b;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->O:J

    return-wide v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/player/b;)Lcom/hpplay/sdk/source/player/a/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 327
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a/a;->b()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->U:I

    .line 337
    return-void
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/player/b;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->R:J

    return-wide v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    new-instance v1, Lcom/hpplay/sdk/source/player/b$3;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/player/b$3;-><init>(Lcom/hpplay/sdk/source/player/b;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    return-void
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/player/b;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->T:Z

    return v0
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/player/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->j()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 73
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_cur_report_uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "DlnaPlayerControl"

    const-string v1, "start create dlna player"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CybergarageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/hpplay/sdk/source/player/a/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hpplay/sdk/source/player/a/a;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/hpplay/sdk/source/player/b$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/b$a;-><init>(Lcom/hpplay/sdk/source/player/b;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b;->K:Lcom/hpplay/sdk/source/player/b$a;

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->K:Lcom/hpplay/sdk/source/player/b$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->a(Lcom/hpplay/sdk/source/player/a/b;)V

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "dlna_location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->Q:Z

    .line 93
    :cond_1
    const-string v0, "DlnaPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getManufactureURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is huawei "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/player/b;->Q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ssdp_packet_data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    new-instance v2, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {v2, v3, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Device;->setSSDPPacket(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 100
    :cond_2
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/player/b;->a(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->b(Lcom/hpplay/cybergarage/upnp/Device;)Z

    .line 105
    const-string v0, "DlnaPlayerControl"

    const-string v1, "isSubscribe  "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "DlnaPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 2

    .prologue
    .line 317
    const-string v0, "DlnaPlayerControl"

    const-string v1, "start createset device"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/hpplay/sdk/source/player/a/e;->a()Lcom/hpplay/sdk/source/player/a/e;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/e;->a(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a/a;->a(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 322
    :cond_0
    return-void
.end method

.method public addVolume()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "DlnaPlayerControl"

    const-string v1, "setVoice HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    iget v1, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    if-lt v0, v1, :cond_1

    .line 233
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    goto :goto_0

    .line 236
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    .line 237
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add vlume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 239
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 240
    iget v1, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/b;->a(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/16 v1, 0x9b

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/player/a/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a/a;->a()V

    .line 303
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->V:Lcom/hpplay/cybergarage/upnp/event/EventListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 308
    :cond_1
    iput-object v2, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    .line 309
    iput-object v2, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    .line 310
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->K:Lcom/hpplay/sdk/source/player/b$a;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->K:Lcom/hpplay/sdk/source/player/b$a;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/player/b$a;->a(Lcom/hpplay/sdk/source/player/b$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 312
    iput-object v2, p0, Lcom/hpplay/sdk/source/player/b;->K:Lcom/hpplay/sdk/source/player/b$a;

    .line 314
    :cond_2
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->removeMessages(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 181
    const-string v0, "DlnaPlayerControl"

    const-string v1, "HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 289
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    .line 293
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 294
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->i()V

    .line 295
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "DlnaPlayerControl"

    const-string v1, "HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 196
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 197
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "DlnaPlayerControl"

    const-string v1, "HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 207
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 209
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/b;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 121
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "DlnaPlayerControl"

    const-string v1, "setVoice HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max vlume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 220
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->start()V

    .line 142
    iget-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->O:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_cur_report_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget v1, p0, Lcom/hpplay/sdk/source/player/b;->S:I

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/player/b;->a(Ljava/lang/String;I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->S:I

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 150
    const-string v0, "DlnaPlayerControl"

    const-string v1, "HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/b;->o:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a/a;->a(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->U:I

    .line 157
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->stop()V

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->P:J

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/player/b;->O:J

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    .line 162
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 164
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/player/a/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->T:Z

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    new-instance v1, Lcom/hpplay/sdk/source/player/b$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/player/b$1;-><init>(Lcom/hpplay/sdk/source/player/b;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a/a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/b;->L:Z

    .line 269
    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->U:I

    .line 270
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "DlnaPlayerControl"

    const-string v1, "HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/b;->f()V

    .line 275
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/b;->i()V

    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public subVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/b;->I:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "DlnaPlayerControl"

    const-string v1, "setVoice HandlerThread is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    if-gtz v0, :cond_1

    .line 252
    iput v1, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    goto :goto_0

    .line 255
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    .line 256
    iget v0, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    if-gez v0, :cond_2

    .line 257
    iput v1, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    .line 259
    :cond_2
    const-string v0, "DlnaPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sub vlume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 261
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 262
    iget v1, p0, Lcom/hpplay/sdk/source/player/b;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/b;->J:Lcom/hpplay/sdk/source/player/a/a;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/player/a/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
