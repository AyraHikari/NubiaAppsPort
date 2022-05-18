.class public Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    return-void
.end method

.method public static a(Landroidx/fragment/app/h;)Landroidx/fragment/app/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h<",
            "*>;)",
            "Landroidx/fragment/app/f;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/f;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/e/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/h;

    invoke-direct {v0, p0}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroidx/fragment/app/i;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 190
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    instance-of v1, v0, Landroidx/lifecycle/t;

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/os/Parcelable;)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0, v1, v1, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/c;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->m()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->q()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->r()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->s()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->t()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->v()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->w()V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Z

    move-result v0

    return v0
.end method
