.class public interface abstract Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
