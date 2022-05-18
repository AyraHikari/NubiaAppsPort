.class public Lcom/hpplay/sdk/source/browse/adapter/a;
.super Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/adapter/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DLNABrowserAdapter"

.field private static final b:Ljava/lang/String; = "AliveDLNAHandler"

.field private static final c:I = 0x3c

.field private static final d:I = 0xa


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

.field private g:Lcom/hpplay/sdk/source/browse/c/a;

.field private h:Lcom/hpplay/sdk/source/browse/adapter/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 7

    .prologue
    .line 32
    const-string v2, "AliveDLNAHandler"

    const/16 v3, 0x3c

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/hpplay/sdk/source/browse/c/a;Z)V

    .line 33
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->e:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->g:Lcom/hpplay/sdk/source/browse/c/a;

    .line 35
    new-instance v0, Lcom/hpplay/sdk/source/browse/adapter/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/browse/adapter/a$a;-><init>(Lcom/hpplay/sdk/source/browse/adapter/a;Lcom/hpplay/sdk/source/browse/adapter/a$1;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->h:Lcom/hpplay/sdk/source/browse/adapter/a$a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/adapter/a;)Lcom/hpplay/sdk/source/browse/c/a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->g:Lcom/hpplay/sdk/source/browse/c/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "DLNABrowserAdapter"

    const-string v1, "scan"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->h:Lcom/hpplay/sdk/source/browse/adapter/a$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->a(Lcom/hpplay/sdk/source/browse/c/a;)V

    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->a()V

    .line 46
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->b()V

    .line 57
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "DLNABrowserAdapter"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->c()V

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a;->g:Lcom/hpplay/sdk/source/browse/c/a;

    .line 72
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
