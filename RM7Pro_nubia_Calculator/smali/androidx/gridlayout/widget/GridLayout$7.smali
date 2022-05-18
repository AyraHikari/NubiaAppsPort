.class final Landroidx/gridlayout/widget/GridLayout$7;
.super Landroidx/gridlayout/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2841
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    .line 2849
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p2, 0x8

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2852
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/high16 p0, -0x80000000

    :cond_1
    return p0
.end method

.method public getBounds()Landroidx/gridlayout/widget/GridLayout$Bounds;
    .locals 1

    .line 2858
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroidx/gridlayout/widget/GridLayout$7$1;-><init>(Landroidx/gridlayout/widget/GridLayout$7;)V

    return-object v0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 0

    const-string p0, "BASELINE"

    return-object p0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
