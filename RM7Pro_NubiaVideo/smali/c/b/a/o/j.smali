.class public Lc/b/a/o/j;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/o/j$b;
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/o/a;

.field private final b:Lc/b/a/o/l;

.field private c:Lc/b/a/j;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lc/b/a/o/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/b/a/o/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/o/a;

    invoke-direct {v0}, Lc/b/a/o/a;-><init>()V

    invoke-direct {p0, v0}, Lc/b/a/o/j;-><init>(Lc/b/a/o/a;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/o/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/o/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/b/a/o/j$b;-><init>(Lc/b/a/o/j;Lc/b/a/o/j$a;)V

    iput-object v0, p0, Lc/b/a/o/j;->b:Lc/b/a/o/l;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/b/a/o/j;->d:Ljava/util/HashSet;

    .line 5
    iput-object p1, p0, Lc/b/a/o/j;->a:Lc/b/a/o/a;

    return-void
.end method

.method private a(Lc/b/a/o/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e(Lc/b/a/o/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method b()Lc/b/a/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->a:Lc/b/a/o/a;

    return-object v0
.end method

.method public c()Lc/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->c:Lc/b/a/j;

    return-object v0
.end method

.method public d()Lc/b/a/o/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->b:Lc/b/a/o/l;

    return-object v0
.end method

.method public f(Lc/b/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/o/j;->c:Lc/b/a/j;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lc/b/a/o/k;->f()Lc/b/a/o/k;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/a/o/k;->h(Landroid/app/FragmentManager;)Lc/b/a/o/j;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/o/j;->e:Lc/b/a/o/j;

    if-eq p1, p0, :cond_0

    .line 3
    invoke-direct {p1, p0}, Lc/b/a/o/j;->a(Lc/b/a/o/j;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/j;->a:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->b()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/j;->e:Lc/b/a/o/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0, p0}, Lc/b/a/o/j;->e(Lc/b/a/o/j;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/b/a/o/j;->e:Lc/b/a/o/j;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->c:Lc/b/a/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/b/a/j;->v()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/j;->a:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->c()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lc/b/a/o/j;->a:Lc/b/a/o/a;

    invoke-virtual {v0}, Lc/b/a/o/a;->d()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/j;->c:Lc/b/a/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/b/a/j;->w(I)V

    :cond_0
    return-void
.end method
