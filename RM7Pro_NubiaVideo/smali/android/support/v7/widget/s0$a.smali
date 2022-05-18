.class Landroid/support/v7/widget/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/s0;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/support/v7/view/menu/a;

.field final synthetic b:Landroid/support/v7/widget/s0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/s0;)V
    .locals 8

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/s0$a;->b:Landroid/support/v7/widget/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Landroid/support/v7/view/menu/a;

    iget-object v0, p1, Landroid/support/v7/widget/s0;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p1, Landroid/support/v7/widget/s0;->h:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Landroid/support/v7/widget/s0$a;->a:Landroid/support/v7/view/menu/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/s0$a;->b:Landroid/support/v7/widget/s0;

    iget-object v0, p1, Landroid/support/v7/widget/s0;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroid/support/v7/widget/s0;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/s0$a;->a:Landroid/support/v7/view/menu/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
