.class public Landroid/support/v7/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/FitWindowsFrameLayout;->a:Landroid/support/v7/widget/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/support/v7/widget/w;->a(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(Landroid/support/v7/widget/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/FitWindowsFrameLayout;->a:Landroid/support/v7/widget/w;

    return-void
.end method
