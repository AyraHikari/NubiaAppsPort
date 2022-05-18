.class final Landroidx/gridlayout/widget/GridLayout$8;
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

    .line 2902
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 0

    const-string p0, "FILL"

    return-object p0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSizeInCell(Landroid/view/View;II)I
    .locals 0

    return p3
.end method
