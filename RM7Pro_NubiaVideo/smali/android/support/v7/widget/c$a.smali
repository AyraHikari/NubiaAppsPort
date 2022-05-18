.class Landroid/support/v7/widget/c$a;
.super Landroid/support/v7/view/menu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic m:Landroid/support/v7/widget/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/s;Landroid/view/View;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/c$a;->m:Landroid/support/v7/widget/c;

    .line 2
    sget v5, La/b/d/a/a;->i:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/view/View;ZI)V

    .line 3
    invoke-virtual {p3}, Landroid/support/v7/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroid/support/v7/view/menu/h;

    .line 4
    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->j()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p1, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/c;->r(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/n;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/l;->f(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/c;->A:Landroid/support/v7/widget/c$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/l;->j(Landroid/support/v7/view/menu/m$a;)V

    return-void
.end method


# virtual methods
.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c$a;->m:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/c;->x:Landroid/support/v7/widget/c$a;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/support/v7/widget/c;->B:I

    .line 3
    invoke-super {p0}, Landroid/support/v7/view/menu/l;->e()V

    return-void
.end method
