.class Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS$c;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/b;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/commonui/actionbar/internal/view/menu/b",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS$c;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;

    .line 316
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/b;-><init>(Ljava/lang/Object;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS$c;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS$c;->a:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
