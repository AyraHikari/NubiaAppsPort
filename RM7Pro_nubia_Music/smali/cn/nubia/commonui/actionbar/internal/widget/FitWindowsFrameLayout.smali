.class public Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FitWindowsFrameLayout.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup;


# instance fields
.field private mListener:Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsFrameLayout;->mListener:Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsFrameLayout;->mListener:Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsFrameLayout;->mListener:Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 42
    return-void
.end method
