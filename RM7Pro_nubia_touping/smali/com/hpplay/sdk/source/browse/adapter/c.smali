.class public Lcom/hpplay/sdk/source/browse/adapter/c;
.super Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/adapter/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LelinkBrowserAdapter"

.field private static final b:Ljava/lang/String; = "AliveLelinkHandler"

.field private static final c:I = 0x3c

.field private static final d:I = 0xa


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

.field private g:Lcom/hpplay/sdk/source/browse/c/a;

.field private h:Lcom/hpplay/sdk/source/browse/adapter/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 7

    .prologue
    .line 32
    const-string v2, "AliveLelinkHandler"

    const/16 v3, 0x3c

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/hpplay/sdk/source/browse/c/a;Z)V

    .line 33
    const-string v0, "LelinkBrowserAdapter"

    const-string v1, " new lelink adpter "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->e:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->g:Lcom/hpplay/sdk/source/browse/c/a;

    .line 36
    new-instance v0, Lcom/hpplay/sdk/source/browse/adapter/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/browse/adapter/c$a;-><init>(Lcom/hpplay/sdk/source/browse/adapter/c;Lcom/hpplay/sdk/source/browse/adapter/c$1;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->h:Lcom/hpplay/sdk/source/browse/adapter/c$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/adapter/c;)Lcom/hpplay/sdk/source/browse/c/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->g:Lcom/hpplay/sdk/source/browse/c/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "LelinkBrowserAdapter"

    const-string v1, "Lelink scan"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "LelinkBrowserAdapter"

    const-string v1, "create new MDNSBrowseHandler"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->h:Lcom/hpplay/sdk/source/browse/adapter/c$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->a(Lcom/hpplay/sdk/source/browse/c/a;)V

    .line 47
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->a()V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->c()V

    .line 56
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/adapter/c;->e()V

    .line 61
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "LelinkBrowserAdapter"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->b()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->h:Lcom/hpplay/sdk/source/browse/adapter/c$a;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->h:Lcom/hpplay/sdk/source/browse/adapter/c$a;

    .line 73
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/c;->f:Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/MDNSBrowseHandler;->c()V

    .line 80
    :cond_0
    return-void
.end method
