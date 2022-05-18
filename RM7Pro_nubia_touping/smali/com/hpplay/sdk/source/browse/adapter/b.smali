.class public Lcom/hpplay/sdk/source/browse/adapter/b;
.super Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "IMBrowserAdapter"

.field private static final b:Ljava/lang/String; = "AliveIMHandler"

.field private static final c:I = 0x50

.field private static final d:I = 0x3c


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/hpplay/sdk/source/browse/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 7

    .prologue
    .line 25
    const-string v2, "AliveIMHandler"

    const/16 v3, 0x50

    const/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/hpplay/sdk/source/browse/c/a;Z)V

    .line 26
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/adapter/b;->e:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/hpplay/sdk/source/browse/adapter/b;->f:Lcom/hpplay/sdk/source/browse/c/a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "IMBrowserAdapter"

    const-string v1, "scan"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 38
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/adapter/b;->d()V

    .line 39
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/adapter/b;->e()V

    .line 44
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "IMBrowserAdapter"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d()V

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/b;->f:Lcom/hpplay/sdk/source/browse/c/a;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/b;->f:Lcom/hpplay/sdk/source/browse/c/a;

    .line 53
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
