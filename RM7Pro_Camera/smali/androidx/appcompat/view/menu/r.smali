.class public Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private d:Landroidx/appcompat/view/menu/g;

.field private e:Landroidx/appcompat/view/menu/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 46
    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 143
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/appcompat/view/menu/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 91
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

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

.method public b()Z
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result v0

    return v0
.end method

.method public c(Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/i;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result v0

    return v0
.end method

.method public d(Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->d(Landroidx/appcompat/view/menu/i;)Z

    move-result p1

    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public q()Landroidx/appcompat/view/menu/g;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    return-object v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->e(I)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->d(I)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/View;)Landroidx/appcompat/view/menu/g;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    return-void
.end method

.method public t()Landroid/view/Menu;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method
