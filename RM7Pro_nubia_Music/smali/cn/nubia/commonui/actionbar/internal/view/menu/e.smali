.class Lcn/nubia/commonui/actionbar/internal/view/menu/e;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/d;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/d;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/internal/view/SupportSubMenu;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/internal/view/SupportSubMenu;

    return-object v0
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportSubMenu;->clearHeader()V

    .line 74
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 68
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;->a()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 85
    return-object p0
.end method
