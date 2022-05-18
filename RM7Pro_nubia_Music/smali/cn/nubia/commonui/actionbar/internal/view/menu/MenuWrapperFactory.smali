.class public final Lcn/nubia/commonui/actionbar/internal/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/d;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/d;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/c;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/c;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/e;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/e;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
