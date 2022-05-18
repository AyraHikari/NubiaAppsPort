.class public Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;
.super Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;
.source "NativeActionModeAwareLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;
    }
.end annotation


# instance fields
.field private mActionModeForChildListener:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    .line 40
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ContentFrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
