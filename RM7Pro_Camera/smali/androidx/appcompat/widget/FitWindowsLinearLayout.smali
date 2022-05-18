.class public Landroidx/appcompat/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ah;


# instance fields
.field private a:Landroidx/appcompat/widget/ah$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->a:Landroidx/appcompat/widget/ah$a;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ah$a;->a(Landroid/graphics/Rect;)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/ah$a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->a:Landroidx/appcompat/widget/ah$a;

    return-void
.end method
