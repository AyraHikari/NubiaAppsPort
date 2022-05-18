.class Landroidx/appcompat/app/f$7;
.super Landroidx/core/f/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Landroidx/core/f/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1335
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1336
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1338
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1339
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1345
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1346
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/f/y;->a(Landroidx/core/f/z;)Landroidx/core/f/y;

    .line 1347
    iget-object p1, p0, Landroidx/appcompat/app/f$7;->a:Landroidx/appcompat/app/f;

    iput-object v0, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    return-void
.end method
