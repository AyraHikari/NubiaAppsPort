.class public Landroid/support/v7/view/menu/s;
.super Landroid/support/v7/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private A:Landroid/support/v7/view/menu/g;

.field private B:Landroid/support/v7/view/menu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    .line 3
    iput-object p3, p0, Landroid/support/v7/view/menu/s;->B:Landroid/support/v7/view/menu/h;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->B()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->C()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->D()Z

    move-result v0

    return v0
.end method

.method public L(Landroid/support/v7/view/menu/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->L(Landroid/support/v7/view/menu/g$a;)V

    return-void
.end method

.method public W()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    return-object v0
.end method

.method public e(Landroid/support/v7/view/menu/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->e(Landroid/support/v7/view/menu/h;)Z

    move-result p1

    return p1
.end method

.method g(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/g;->g(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/g;->g(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->B:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public j(Landroid/support/v7/view/menu/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->j(Landroid/support/v7/view/menu/h;)Z

    move-result p1

    return p1
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/g;->N(I)Landroid/support/v7/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/g;->O(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/g;->Q(I)Landroid/support/v7/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/g;->R(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/g;->S(Landroid/view/View;)Landroid/support/v7/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->B:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->B:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/h;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->setQwertyMode(Z)V

    return-void
.end method

.method public z()Landroid/support/v7/view/menu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/s;->A:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->z()Landroid/support/v7/view/menu/g;

    move-result-object v0

    return-object v0
.end method
