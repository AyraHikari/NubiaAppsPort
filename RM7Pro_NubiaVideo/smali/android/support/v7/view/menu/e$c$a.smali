.class Landroid/support/v7/view/menu/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/view/menu/e$c;->a(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/e$d;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Landroid/support/v7/view/menu/g;

.field final synthetic d:Landroid/support/v7/view/menu/e$c;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/e$c;Landroid/support/v7/view/menu/e$d;Landroid/view/MenuItem;Landroid/support/v7/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/e$c$a;->d:Landroid/support/v7/view/menu/e$c;

    iput-object p2, p0, Landroid/support/v7/view/menu/e$c$a;->a:Landroid/support/v7/view/menu/e$d;

    iput-object p3, p0, Landroid/support/v7/view/menu/e$c$a;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Landroid/support/v7/view/menu/e$c$a;->c:Landroid/support/v7/view/menu/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/e$c$a;->a:Landroid/support/v7/view/menu/e$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/e$c$a;->d:Landroid/support/v7/view/menu/e$c;

    iget-object v1, v1, Landroid/support/v7/view/menu/e$c;->a:Landroid/support/v7/view/menu/e;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/e;->A:Z

    .line 3
    iget-object v0, v0, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/g;->d(Z)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/view/menu/e$c$a;->d:Landroid/support/v7/view/menu/e$c;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$c;->a:Landroid/support/v7/view/menu/e;

    iput-boolean v1, v0, Landroid/support/v7/view/menu/e;->A:Z

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/support/v7/view/menu/e$c$a;->c:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/view/menu/e$c$a;->b:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/g;->H(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
