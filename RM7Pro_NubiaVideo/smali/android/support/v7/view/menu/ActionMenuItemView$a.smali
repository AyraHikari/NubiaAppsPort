.class Landroid/support/v7/view/menu/ActionMenuItemView$a;
.super Landroid/support/v7/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic j:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->j:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/x;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/support/v7/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->j:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->i:Landroid/support/v7/view/menu/ActionMenuItemView$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView$b;->a()Landroid/support/v7/view/menu/q;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->j:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->g:Landroid/support/v7/view/menu/g$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Landroid/support/v7/view/menu/h;

    invoke-interface {v1, v0}, Landroid/support/v7/view/menu/g$b;->a(Landroid/support/v7/view/menu/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$a;->b()Landroid/support/v7/view/menu/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/support/v7/view/menu/q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
