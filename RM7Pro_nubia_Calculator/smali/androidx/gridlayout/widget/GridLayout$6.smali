.class final Landroidx/gridlayout/widget/GridLayout$6;
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

    .line 2817
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    shr-int/lit8 p0, p2, 0x1

    return p0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 0

    const-string p0, "CENTER"

    return-object p0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 0

    shr-int/lit8 p0, p2, 0x1

    return p0
.end method
