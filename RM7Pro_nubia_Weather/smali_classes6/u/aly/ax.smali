.class public Lu/aly/ax;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lu/aly/ao;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:J = 0xdbba00L

.field private static final f:J = 0x1b77400L

.field private static final g:J = 0x5265c00L

.field private static j:Lu/aly/ax;


# instance fields
.field private h:I

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lu/aly/ax;->j:Lu/aly/ax;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/ax;->h:I

    .line 35
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lu/aly/ax;->i:J

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/ax;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lu/aly/ax;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ax;->j:Lu/aly/ax;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lu/aly/ax;

    invoke-direct {v0}, Lu/aly/ax;-><init>()V

    sput-object v0, Lu/aly/ax;->j:Lu/aly/ax;

    .line 42
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/x$a;->a(I)I

    move-result v0

    .line 43
    sget-object v2, Lu/aly/ax;->j:Lu/aly/ax;

    invoke-virtual {v2, v0}, Lu/aly/ax;->a(I)V

    .line 45
    :cond_0
    sget-object v0, Lu/aly/ax;->j:Lu/aly/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lu/aly/ax;->h:I

    packed-switch v0, :pswitch_data_0

    .line 95
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 88
    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 90
    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    .line 92
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 104
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 105
    iput p1, p0, Lu/aly/ax;->h:I

    .line 107
    :cond_0
    return-void
.end method

.method public a(Lu/aly/av;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lu/aly/ax;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->i:Ljava/util/List;

    .line 54
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->a:Ljava/util/List;

    .line 55
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->b:Ljava/util/List;

    .line 56
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lu/aly/ax;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-virtual {p0, p2}, Lu/aly/ax;->b(Landroid/content/Context;)Lu/aly/av$o;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->i:Ljava/util/List;

    .line 61
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->a:Ljava/util/List;

    .line 62
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->b:Ljava/util/List;

    .line 63
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    goto :goto_0

    .line 64
    :cond_2
    iget v0, p0, Lu/aly/ax;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->c:Ljava/util/List;

    .line 66
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->i:Ljava/util/List;

    .line 67
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->a:Ljava/util/List;

    .line 68
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->b:Ljava/util/List;

    .line 69
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v2, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    goto :goto_0
.end method

.method public a(Lu/aly/x$a;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/x$a;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lu/aly/ax;->a(I)V

    .line 116
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lu/aly/ax;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Lu/aly/av$o;
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 75
    new-instance v0, Lu/aly/av$o;

    invoke-direct {v0}, Lu/aly/av$o;-><init>()V

    .line 76
    invoke-static {p1}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$o;->b:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    iput-wide v2, v0, Lu/aly/av$o;->c:J

    .line 79
    add-long/2addr v2, v4

    iput-wide v2, v0, Lu/aly/av$o;->d:J

    .line 80
    iput-wide v4, v0, Lu/aly/av$o;->e:J

    .line 82
    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lu/aly/ax;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
