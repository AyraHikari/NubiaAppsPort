.class Landroidx/appcompat/app/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;

.field private b:Landroidx/appcompat/view/b$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V
    .locals 0

    .line 2672
    iput-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2673
    iput-object p2, p0, Landroidx/appcompat/app/f$b;->b:Landroidx/appcompat/view/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b;)V
    .locals 2

    .line 2694
    iget-object v0, p0, Landroidx/appcompat/app/f$b;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    .line 2695
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2696
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2699
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    .line 2700
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->q()V

    .line 2701
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/f/u;->j(Landroid/view/View;)Landroidx/core/f/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/f/y;->a(F)Landroidx/core/f/y;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    .line 2702
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    new-instance v0, Landroidx/appcompat/app/f$b$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$b$1;-><init>(Landroidx/appcompat/app/f$b;)V

    invoke-virtual {p1, v0}, Landroidx/core/f/y;->a(Landroidx/core/f/z;)Landroidx/core/f/y;

    .line 2718
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_2

    .line 2719
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v0, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {p1, v0}, Landroidx/appcompat/app/d;->b(Landroidx/appcompat/view/b;)V

    .line 2721
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 2722
    iget-object p1, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 1

    .line 2678
    iget-object v0, p0, Landroidx/appcompat/app/f$b;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2689
    iget-object v0, p0, Landroidx/appcompat/app/f$b;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 1

    .line 2683
    iget-object v0, p0, Landroidx/appcompat/app/f$b;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    .line 2684
    iget-object v0, p0, Landroidx/appcompat/app/f$b;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
