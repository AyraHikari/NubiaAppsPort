.class public Lcom/hpplay/sdk/source/mirror/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/i$b;,
        Lcom/hpplay/sdk/source/mirror/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "huawei nxt-al10"

.field public static final b:Ljava/lang/String; = "rockchip p10"

.field public static final c:Ljava/lang/String; = "ro.config.hw_emui_wfd_pc_mode"

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field protected static final f:I = 0x64

.field protected static final g:I = 0x65

.field protected static final h:I = 0x66

.field protected static final i:I = 0x67

.field protected static final j:I = 0x68

.field protected static final k:I = 0x69

.field protected static final l:I = 0x6a

.field public static o:I = 0x0

.field public static q:J = 0x0L

.field private static final r:Ljava/lang/String; = "ScreenCastThread"

.field private static final s:Ljava/lang/String; = "video/avc"

.field private static final t:I = 0x5

.field private static final u:Ljava/lang/String; = "duk-al20"

.field private static final v:Ljava/lang/String; = "stf-al00"

.field private static w:I = 0x0

.field private static x:I = 0x0

.field private static final y:I = 0x400000

.field private static final z:I = 0x1e


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/media/projection/MediaProjection;

.field private D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private E:Landroid/hardware/display/VirtualDisplay;

.field private F:Lcom/hpplay/sdk/source/mirror/i$b;

.field private G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private H:Lcom/hpplay/sdk/source/mirror/k;

.field private I:Lcom/hpplay/sdk/source/mirror/b/d;

.field private J:Lcom/hpplay/sdk/source/mirror/i$a;

.field private K:Lcom/hpplay/sdk/source/mirror/b;

.field private L:Lcom/hpplay/sdk/source/mirror/l;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/hpplay/sdk/source/mirror/e;

.field private ac:Z

.field private ad:Landroid/util/DisplayMetrics;

.field private ae:I

.field private af:Z

.field private ag:Z

.field private ah:Lcom/hpplay/sdk/source/mirror/a/a;

.field protected m:I

.field protected n:Z

.field protected p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0x780

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->w:I

    .line 66
    const/16 v0, 0x438

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    .line 104
    const v0, 0xcd2b

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->o:I

    .line 155
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/hpplay/sdk/source/mirror/i;->q:J

    return-void
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mirror/b/d;Landroid/media/projection/MediaProjection;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    .line 70
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/i;->B:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/i;->U:Z

    .line 100
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    .line 101
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    .line 102
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ad:Landroid/util/DisplayMetrics;

    .line 109
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->ae:I

    .line 153
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/i;->af:Z

    .line 785
    new-instance v0, Lcom/hpplay/sdk/source/mirror/i$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/i$3;-><init>(Lcom/hpplay/sdk/source/mirror/i;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ah:Lcom/hpplay/sdk/source/mirror/a/a;

    .line 114
    const-string v0, "ScreenCastThread"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/i;->setName(Ljava/lang/String;)V

    .line 115
    iput-boolean p5, p0, Lcom/hpplay/sdk/source/mirror/i;->U:Z

    .line 116
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    .line 117
    invoke-interface {p1}, Lcom/hpplay/sdk/source/mirror/b/d;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Y:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/hpplay/sdk/source/mirror/i;->W:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/hpplay/sdk/source/mirror/i;->X:Ljava/lang/String;

    .line 120
    iput p4, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    .line 121
    new-instance v0, Lcom/hpplay/sdk/source/mirror/i$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/i$a;-><init>(Lcom/hpplay/sdk/source/mirror/i;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    .line 122
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    .line 123
    iput-object p3, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 124
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 125
    new-instance v0, Lcom/hpplay/sdk/source/mirror/e;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mirror/e;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    .line 126
    instance-of v0, p1, Lcom/hpplay/sdk/source/mirror/b/a;

    if-eqz v0, :cond_2

    .line 127
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/i;->ae:I

    .line 131
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 132
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lcom/hpplay/sdk/source/mirror/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 135
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->ad:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    return-void

    .line 128
    :cond_2
    instance-of v0, p1, Lcom/hpplay/sdk/source/mirror/b/b;

    if-eqz v0, :cond_0

    .line 129
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/i;->ae:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/i$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    .line 279
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V

    .line 282
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 285
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mirror/i;->b(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_2
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/i;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/i;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    return-object v0
.end method

.method private declared-synchronized b(IZ)V
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 161
    const-string v0, "ScreenCastThread"

    const-string v1, "resize ignore"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_1
    :try_start_1
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    .line 167
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/hpplay/sdk/source/mirror/i;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v2, 0x6a

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hpplay/sdk/source/mirror/i;->q:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    new-instance v1, Lcom/hpplay/sdk/source/mirror/i$1;

    invoke-direct {v1, p0, p1}, Lcom/hpplay/sdk/source/mirror/i$1;-><init>(Lcom/hpplay/sdk/source/mirror/i;I)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/k;->a(Lcom/hpplay/sdk/source/mirror/f;)V

    .line 189
    if-eqz p2, :cond_3

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    :try_start_5
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 192
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->d()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/i;II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mirror/i;->a(II)V

    return-void
.end method

.method private b(II)Z
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mirror/i;->c(II)Z

    move-result v0

    .line 604
    if-nez v0, :cond_0

    .line 605
    const-string v0, "ScreenCastThread"

    const-string v1, "startEncoder failed"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 632
    :goto_0
    return v0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    .line 609
    const-string v0, "ScreenCastThread"

    const-string v1, "mMediaProjection is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 610
    goto :goto_0

    .line 613
    :cond_1
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mirror/l;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/l;-><init>(Lcom/hpplay/sdk/source/mirror/i;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->L:Lcom/hpplay/sdk/source/mirror/l;

    .line 615
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    const v5, -0x7fffffff

    .line 620
    :goto_1
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSinkWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSinkHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->ad:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    const-string v1, "ScreenCastThread-display"

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/i;->ad:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v6, v6, Lcom/hpplay/sdk/source/mirror/e;->p:Landroid/view/Surface;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mirror/i;->L:Lcom/hpplay/sdk/source/mirror/l;

    iget-object v8, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    .line 625
    new-instance v0, Lcom/hpplay/sdk/source/mirror/i$b;

    invoke-direct {v0, p0, p0}, Lcom/hpplay/sdk/source/mirror/i$b;-><init>(Lcom/hpplay/sdk/source/mirror/i;Lcom/hpplay/sdk/source/mirror/i;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    .line 626
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 627
    goto :goto_0

    :cond_2
    move v5, v10

    .line 618
    goto :goto_1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const v0, 0x33842

    const v1, 0x33845

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    move v0, v9

    .line 632
    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/i;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/i;->af:Z

    return p1
.end method

.method static synthetic c(I)I
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/hpplay/sdk/source/mirror/i;->w:I

    return p0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/i;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mirror/i;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 573
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    int-to-float v0, v0

    sget v1, Lcom/hpplay/sdk/source/mirror/i;->w:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 574
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    int-to-float v1, v1

    sget v2, Lcom/hpplay/sdk/source/mirror/i;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 576
    if-eqz p1, :cond_0

    .line 579
    sget v2, Lcom/hpplay/sdk/source/mirror/i;->x:I

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 580
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    int-to-float v2, v2

    div-float v0, v2, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    .line 583
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    .line 584
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V

    .line 598
    :goto_0
    const-string v0, "ScreenCastThreadrls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in run  w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void

    .line 587
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    sget v1, Lcom/hpplay/sdk/source/mirror/i;->w:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    sget v1, Lcom/hpplay/sdk/source/mirror/i;->x:I

    if-le v0, v1, :cond_2

    .line 588
    :cond_1
    sget v0, Lcom/hpplay/sdk/source/mirror/i;->w:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    .line 589
    sget v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 595
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V

    .line 596
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    goto :goto_0

    .line 592
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 593
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    goto :goto_1
.end method

.method private c(II)Z
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 910
    const-string v0, "ScreenCastThread"

    const-string v1, "startEncoder start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-nez v0, :cond_0

    move v0, v8

    .line 940
    :goto_0
    return v0

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->s()V

    .line 915
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEncoder mSinkWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSinkHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBitRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " framerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IFRAME_INTERVAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "isXiaomiANSP0"

    invoke-virtual {v0, v1, v8}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 919
    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    :goto_1
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/i;->e(I)V

    .line 921
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    :goto_2
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    .line 922
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/i;->B:I

    move v1, p1

    move v2, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/mirror/e;->a(IIIIILjava/util/HashMap;Landroid/media/MediaCodec$Callback;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 923
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    if-le v0, v1, :cond_1

    .line 924
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    .line 925
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    .line 926
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    .line 928
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    .line 929
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 930
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    .line 931
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V

    .line 932
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/i;->B:I

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/mirror/e;->a(IIIIILjava/util/HashMap;Landroid/media/MediaCodec$Callback;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 933
    const v0, 0x33842

    const v1, 0x33845

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    move v0, v8

    .line 935
    goto/16 :goto_0

    .line 919
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    goto :goto_1

    .line 921
    :cond_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    goto :goto_2

    .line 939
    :cond_4
    const-string v0, "ScreenCastThread"

    const-string v1, "startEncoder end"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic d(I)I
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    return p0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    return p1
.end method

.method private d(II)V
    .locals 8

    .prologue
    .line 1023
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->W:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->X:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/i;->Y:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1024
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1023
    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    .line 1028
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/mirror/i;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->af:Z

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/mirror/i;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    return p1
.end method

.method private e(I)V
    .locals 5

    .prologue
    .line 1031
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRateToNubiaSystem  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :try_start_0
    const-string v0, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1034
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1035
    const-string v2, "MIRRORPLAY_TV_INFO"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v2}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    const-string v4, "CALL_6"

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1037
    const-string v1, "ScreenCastThread"

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

    .line 1041
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    const-string v1, "ScreenCastThread"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/mirror/i;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    return v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    return p1
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/mirror/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    return p1
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/mirror/i;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ac:Z

    return v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/mirror/i;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ag:Z

    return v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    return-object v0
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/mirror/i;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    return v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/hpplay/sdk/source/mirror/i;->w:I

    return v0
.end method

.method static synthetic l(Lcom/hpplay/sdk/source/mirror/i;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    return v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const v4, 0x3384c

    .line 341
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    .line 342
    const-string v0, "ScreenCastThread"

    const-string v1, "--------------start runing"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->b()I

    move-result v0

    .line 344
    const-string v1, "ScreenCastThread"

    const-string v2, "--------------sendRequestGetMirrorInfo"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez v0, :cond_1

    .line 346
    const v0, 0x33842

    const v1, 0x33843

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 350
    const v0, 0x33842

    const v1, 0x33852

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    const v0, 0x3385c

    invoke-direct {p0, v4, v0}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto :goto_0

    .line 353
    :cond_2
    if-ne v0, v5, :cond_3

    .line 354
    const v0, 0x33842

    const v1, 0x33853

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto :goto_0

    .line 358
    :cond_3
    const-string v0, "ScreenCastThread"

    const-string v1, "start get mirror info"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    sget v1, Lcom/hpplay/sdk/source/mirror/i;->o:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(I)I

    move-result v0

    .line 367
    const-string v1, "ScreenCastThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VedioSetup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-ne v0, v5, :cond_4

    .line 369
    const v0, 0x33838

    const v1, 0x33847

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto :goto_0

    .line 372
    :cond_4
    if-nez v0, :cond_5

    .line 373
    const v0, 0x33838

    const v1, 0x3384e

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto :goto_0

    .line 377
    :cond_5
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->U:Z

    if-eqz v0, :cond_7

    .line 378
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 379
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioSetup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_6

    .line 381
    const v0, 0x3384c

    const v1, 0x3384e

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 385
    :cond_6
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->p()V

    .line 386
    const-string v0, "ScreenCastThread"

    const-string v1, "start audio recoder"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 390
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_8

    .line 392
    const v0, 0x3384c

    const v1, 0x3384f

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 396
    :cond_8
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->q()V

    .line 397
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(II)Z

    move-result v0

    .line 398
    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->sendEmptyMessage(I)Z

    .line 401
    :cond_9
    const-string v0, "ScreenCastThread"

    const-string v1, "start audio recoder"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->h()Z

    move-result v0

    .line 404
    const-string v1, "ScreenCastThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedback--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 407
    :catch_1
    move-exception v0

    .line 408
    :try_start_3
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 422
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    .line 423
    const-string v0, "ScreenCastThread"

    const-string v1, "start runing"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 425
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_1

    .line 426
    const v0, 0x33842

    const v1, 0x33843

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v0, "ScreenCastThread"

    const-string v1, "start get mirror info"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->b()I

    move-result v0

    .line 432
    if-nez v0, :cond_2

    .line 433
    const v0, 0x33842

    const v1, 0x33844

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 436
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 437
    const v0, 0x33842

    const v1, 0x33852

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->q()V

    .line 445
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 446
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Announce"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    sget v1, Lcom/hpplay/sdk/source/mirror/i;->o:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(I)I

    move-result v0

    .line 454
    const-string v1, "ScreenCastThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VedioSetup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 456
    const v0, 0x3384c

    const v1, 0x3384e

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 461
    :cond_4
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->U:Z

    if-eqz v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 463
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioSetup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_5

    .line 465
    const v0, 0x3384c

    const v1, 0x3384e

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 469
    :cond_5
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->p()V

    .line 471
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 472
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_7

    .line 474
    const v0, 0x3384c

    const v1, 0x3384f

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 478
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 479
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetParamter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_8

    .line 481
    const v0, 0x3384c

    const v1, 0x33850

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    .line 486
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetParamter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(II)Z

    move-result v0

    .line 489
    if-eqz v0, :cond_9

    .line 490
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->sendEmptyMessage(I)Z

    .line 492
    :cond_9
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->V:Z

    if-nez v0, :cond_a

    .line 493
    const v0, 0x3384c

    const v1, 0x33851

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(II)V

    goto/16 :goto_0

    .line 497
    :cond_a
    const-string v0, "ScreenCastThread"

    const-string v1, "start audio recoder"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 499
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->h()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 502
    :catch_1
    move-exception v0

    .line 503
    :try_start_3
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->i()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->U:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v2}, Lcom/hpplay/sdk/source/mirror/b/d;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/b;->setServerInfo(Ljava/lang/String;I)V

    .line 519
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b;->start()V

    .line 521
    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->p()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    .line 526
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->q()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 527
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->r()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->P:I

    .line 528
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->s()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->Q:I

    .line 529
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->p()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    .line 530
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->q()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    .line 531
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->r()V

    .line 532
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Z)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->s()I

    move-result v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v2}, Lcom/hpplay/sdk/source/mirror/b/d;->r()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Z)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    const/16 v2, 0x780

    const/16 v1, 0x500

    .line 541
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    if-ne v0, v2, :cond_0

    .line 542
    sput v2, Lcom/hpplay/sdk/source/mirror/i;->w:I

    .line 543
    const/16 v0, 0x438

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    .line 551
    :goto_0
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard size ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/hpplay/sdk/source/mirror/i;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/hpplay/sdk/source/mirror/i;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void

    .line 544
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    if-ne v0, v1, :cond_1

    .line 545
    sput v1, Lcom/hpplay/sdk/source/mirror/i;->w:I

    .line 546
    const/16 v0, 0x2d0

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    goto :goto_0

    .line 548
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->R:I

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->w:I

    .line 549
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->S:I

    sput v0, Lcom/hpplay/sdk/source/mirror/i;->x:I

    goto :goto_0
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 945
    const-string v0, "ScreenCastThread"

    const-string v1, "stopEncoder"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/e;->i()V

    .line 949
    :cond_0
    const-string v0, "ScreenCastThread"

    const-string v1, "Surface stopTask"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method private t()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1000
    const-string v0, "ScreenCastThread"

    const-string v1, "stopProjection"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->E:Landroid/hardware/display/VirtualDisplay;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 1007
    const-string v0, "ScreenCastThread"

    const-string v1, "mMediaProjection.stop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 1010
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i$b;->onStop()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->C:Landroid/media/projection/MediaProjection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_2
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->e()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b;->audioPause()V

    .line 219
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    .line 141
    return-void
.end method

.method public a(IIII)V
    .locals 3

    .prologue
    .line 294
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceEncodeParams bitrate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    if-lez p4, :cond_6

    .line 297
    :cond_1
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 298
    :try_start_0
    iput p2, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    .line 299
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    .line 301
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0, p3}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V

    .line 306
    :goto_0
    if-lez p4, :cond_4

    .line 307
    iput p4, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    .line 311
    :goto_1
    if-lez p1, :cond_5

    .line 312
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    iput p1, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    .line 316
    :goto_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->c()V

    .line 326
    :cond_2
    :goto_3
    return-void

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v1, v1, Lcom/hpplay/sdk/source/mirror/e;->r:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->b(I)V

    .line 304
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget v1, v1, Lcom/hpplay/sdk/source/mirror/e;->s:I

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "ScreenCastThread"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 309
    :cond_4
    const/16 v0, 0x1e

    :try_start_1
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/i;->A:I

    goto :goto_1

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    const/high16 v1, 0x400000

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/i;->M:I

    iput v1, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    goto :goto_2

    .line 318
    :cond_6
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/e;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/i;->B:I

    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->c()V

    .line 266
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->af:Z

    .line 206
    if-eqz p1, :cond_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(IZ)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mirror/i;->b(IZ)V

    .line 151
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 257
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set autobitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/i;->ag:Z

    .line 259
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->f()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    new-instance v1, Lcom/hpplay/sdk/source/mirror/i$2;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/mirror/i$2;-><init>(Lcom/hpplay/sdk/source/mirror/i;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/k;->a(Lcom/hpplay/sdk/source/mirror/f;)V

    .line 248
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->d()V

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b;->audioResume()V

    .line 252
    :cond_0
    return-void
.end method

.method d()Z
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stf-al00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->T:Ljava/lang/String;

    .line 560
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "duk-al20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->N:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/i;->O:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    if-eqz v0, :cond_2

    .line 564
    :cond_1
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefultFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v2}, Lcom/hpplay/sdk/source/mirror/b/d;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x1

    .line 567
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->i()V

    .line 759
    :cond_0
    return-void
.end method

.method public f()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->p:Z

    .line 898
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->W:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->X:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/i;->Y:Ljava/lang/String;

    move v5, v4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->ah:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 902
    new-instance v0, Lcom/hpplay/sdk/source/mirror/k;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/i;->Z:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mirror/k;-><init>(Lcom/hpplay/sdk/source/mirror/b/d;Lcom/hpplay/sdk/source/mirror/e;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    .line 904
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->start()V

    .line 906
    :cond_0
    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    const-string v0, "ScreenCastThread"

    const-string v1, "stopAll"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->B()V

    .line 956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->D:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 963
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->h()V

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->H:Lcom/hpplay/sdk/source/mirror/k;

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b;->a()V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->K:Lcom/hpplay/sdk/source/mirror/b;

    .line 971
    :cond_3
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->t()V

    .line 972
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    if-eqz v0, :cond_4

    .line 973
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/e;->j()V

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ab:Lcom/hpplay/sdk/source/mirror/e;

    .line 976
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    if-eqz v0, :cond_5

    .line 977
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->J:Lcom/hpplay/sdk/source/mirror/i$a;

    .line 980
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->L:Lcom/hpplay/sdk/source/mirror/l;

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->F:Lcom/hpplay/sdk/source/mirror/i$b;

    .line 982
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    monitor-exit p0

    return-void

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 9

    .prologue
    .line 987
    monitor-enter p0

    :try_start_0
    const-string v0, "ScreenCastThread"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i;->W:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i;->X:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/i;->Y:Ljava/lang/String;

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/i;->ae:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x6e

    invoke-virtual/range {v0 .. v8}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onMirrorSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i;->ac:Z

    .line 991
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 993
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->i()Z

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    monitor-exit p0

    return-void

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 1050
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i;->I:Lcom/hpplay/sdk/source/mirror/b/d;

    instance-of v0, v0, Lcom/hpplay/sdk/source/mirror/b/b;

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->n()V

    .line 336
    :goto_0
    const-string v0, "ScreenCastThread"

    const-string v1, "----- thread exit ----- "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/i;->o()V

    goto :goto_0
.end method
