.class public Lcom/hpplay/sdk/source/browse/adapter/d;
.super Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/hpplay/sdk/source/browse/handler/c;

.field private b:Ljava/lang/Thread;

.field private c:Lcom/hpplay/sdk/source/browse/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 20
    const-string v2, "NewLelinkBrowseAdapter"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/hpplay/sdk/source/browse/c/a;Z)V

    .line 21
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->c:Lcom/hpplay/sdk/source/browse/c/a;

    .line 22
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->a:Lcom/hpplay/sdk/source/browse/handler/c;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->a:Lcom/hpplay/sdk/source/browse/handler/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/c;->a()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->b:Ljava/lang/Thread;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/adapter/d;->f()V

    .line 27
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/browse/handler/c;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->a:Lcom/hpplay/sdk/source/browse/handler/c;

    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->a:Lcom/hpplay/sdk/source/browse/handler/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->c:Lcom/hpplay/sdk/source/browse/c/a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/c;->a(Lcom/hpplay/sdk/source/browse/c/a;)V

    .line 29
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->a:Lcom/hpplay/sdk/source/browse/handler/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->b:Ljava/lang/Thread;

    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/adapter/d;->f()V

    .line 36
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/adapter/d;->f()V

    .line 41
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/adapter/d;->f()V

    .line 46
    return-void
.end method
