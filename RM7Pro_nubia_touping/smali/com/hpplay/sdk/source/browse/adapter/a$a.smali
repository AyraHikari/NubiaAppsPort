.class Lcom/hpplay/sdk/source/browse/adapter/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/adapter/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/browse/adapter/a;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a$a;->a:Ljava/lang/ref/WeakReference;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/browse/adapter/a;Lcom/hpplay/sdk/source/browse/adapter/a$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/adapter/a$a;-><init>(Lcom/hpplay/sdk/source/browse/adapter/a;)V

    return-void
.end method


# virtual methods
.method public serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/a;

    .line 93
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 97
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/adapter/a;->a(Lcom/hpplay/sdk/source/browse/adapter/a;)Lcom/hpplay/sdk/source/browse/c/a;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/c/a;->serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method

.method public serviceAlive(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public serviceRemoved(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
