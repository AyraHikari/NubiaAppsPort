.class public final Lu/aly/ae;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/ah;


# static fields
.field private static c:Lu/aly/ae;


# instance fields
.field private a:Lu/aly/ah;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ae;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lu/aly/ad;

    iget-object v1, p0, Lu/aly/ae;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ae;->a:Lu/aly/ah;

    .line 24
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/ae;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lu/aly/ae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ae;->c:Lu/aly/ae;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 28
    new-instance v0, Lu/aly/ae;

    invoke-direct {v0, p0}, Lu/aly/ae;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/ae;->c:Lu/aly/ae;

    .line 31
    :cond_0
    sget-object v0, Lu/aly/ae;->c:Lu/aly/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lu/aly/ae;)Lu/aly/ah;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lu/aly/ae;->a:Lu/aly/ah;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lu/aly/ae$2;

    invoke-direct {v0, p0}, Lu/aly/ae$2;-><init>(Lu/aly/ae;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Lu/aly/ah;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lu/aly/ae;->a:Lu/aly/ah;

    .line 36
    return-void
.end method

.method public a(Lu/aly/ai;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lu/aly/ae$1;

    invoke-direct {v0, p0, p1}, Lu/aly/ae$1;-><init>(Lu/aly/ae;Lu/aly/ai;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lu/aly/ae$3;

    invoke-direct {v0, p0}, Lu/aly/ae$3;-><init>(Lu/aly/ae;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public b(Lu/aly/ai;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lu/aly/ae;->a:Lu/aly/ah;

    invoke-interface {v0, p1}, Lu/aly/ah;->b(Lu/aly/ai;)V

    .line 48
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lu/aly/ae$4;

    invoke-direct {v0, p0}, Lu/aly/ae$4;-><init>(Lu/aly/ae;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->c(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
