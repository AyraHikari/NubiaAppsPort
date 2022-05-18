.class public Lc/b/a/o/n;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/o/n$b;
    }
.end annotation


# instance fields
.field private a:Lc/b/a/j;

.field private final b:Lc/b/a/o/a;

.field private final c:Lc/b/a/o/l;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lc/b/a/o/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/b/a/o/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/o/a;

    invoke-direct {v0}, Lc/b/a/o/a;-><init>()V

    invoke-direct {p0, v0}, Lc/b/a/o/n;-><init>(Lc/b/a/o/a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/o/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/o/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/b/a/o/n$b;-><init>(Lc/b/a/o/n;Lc/b/a/o/n$a;)V

    iput-object v0, p0, Lc/b/a/o/n;->c:Lc/b/a/o/l;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/b/a/o/n;->d:Ljava/util/HashSet;

    .line 5
    iput-object p1, p0, Lc/b/a/o/n;->b:Lc/b/a/o/a;

    return-void
.end method

.method private u(Lc/b/a/o/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private y(Lc/b/a/o/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lc/b/a/o/k;->f()Lc/b/a/o/k;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/a/o/k;->i(Landroid/support/v4/app/FragmentManager;)Lc/b/a/o/n;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/o/n;->e:Lc/b/a/o/n;

    if-eq p1, p0, :cond_0

    .line 3
    invoke-direct {p1, p0}, Lc/b/a/o/n;->u(Lc/b/a/o/n;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/n;->b:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->b()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/n;->e:Lc/b/a/o/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0, p0}, Lc/b/a/o/n;->y(Lc/b/a/o/n;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/b/a/o/n;->e:Lc/b/a/o/n;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/n;->a:Lc/b/a/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/b/a/j;->v()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/n;->b:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->c()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/n;->b:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->d()V

    return-void
.end method

.method v()Lc/b/a/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/n;->b:Lc/b/a/o/a;

    return-object v0
.end method

.method public w()Lc/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/n;->a:Lc/b/a/j;

    return-object v0
.end method

.method public x()Lc/b/a/o/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/n;->c:Lc/b/a/o/l;

    return-object v0
.end method

.method public z(Lc/b/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/o/n;->a:Lc/b/a/j;

    return-void
.end method
