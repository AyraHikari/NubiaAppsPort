.class Landroid/support/v7/view/menu/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/r;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/r;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    iget-object v0, v0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    iget-object v0, v0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    iget-object v0, v0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->c()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/r$a;->a:Landroid/support/v7/view/menu/r;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/r;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
