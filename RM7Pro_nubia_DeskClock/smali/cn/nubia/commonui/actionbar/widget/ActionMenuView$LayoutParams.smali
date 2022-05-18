.class public Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;
.super Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 680
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 682
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 685
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 686
    iput-boolean p3, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 687
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 668
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 677
    return-void
.end method
