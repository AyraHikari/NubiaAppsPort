.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroid/arch/lifecycle/LiveData$c;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.c;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final e:Landroid/arch/lifecycle/e;

.field final synthetic f:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/e;",
            "Landroid/arch/lifecycle/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroid/arch/lifecycle/LiveData;

    .line 2
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/LiveData$c;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/k;)V

    .line 3
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroid/arch/lifecycle/e;

    return-void
.end method


# virtual methods
.method public g(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroid/arch/lifecycle/e;

    invoke-interface {p1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/c;->b()Landroid/arch/lifecycle/c$b;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/c$b;

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$c;->a:Landroid/arch/lifecycle/k;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/k;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->k()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$c;->h(Z)V

    return-void
.end method

.method i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/c;->c(Landroid/arch/lifecycle/d;)V

    return-void
.end method

.method j(Landroid/arch/lifecycle/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroid/arch/lifecycle/e;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/c;->b()Landroid/arch/lifecycle/c$b;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    return v0
.end method
