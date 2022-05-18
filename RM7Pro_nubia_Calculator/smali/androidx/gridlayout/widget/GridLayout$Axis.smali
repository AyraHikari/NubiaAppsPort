.class final Landroidx/gridlayout/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final COMPLETE:I = 0x2

.field static final NEW:I = 0x0

.field static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Spec;",
            "Landroidx/gridlayout/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

.field private parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroidx/gridlayout/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1101
    const-class v0, Landroidx/gridlayout/widget/GridLayout;

    return-void
.end method

.method constructor <init>(Landroidx/gridlayout/widget/GridLayout;Z)V
    .locals 1

    .line 1141
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 1108
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    .line 1109
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/4 p1, 0x0

    .line 1112
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1115
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1118
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1121
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1124
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1127
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    .line 1130
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    .line 1133
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    const/4 v0, 0x1

    .line 1136
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1138
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v0, p1}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    .line 1139
    new-instance p1, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    .line 1142
    iput-boolean p2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$Arc;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1372
    :goto_0
    iget-object v2, p2, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroidx/gridlayout/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1373
    iget-object v2, p2, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroidx/gridlayout/widget/GridLayout$Interval;

    aget-object v2, v2, v1

    .line 1374
    iget-object v3, p2, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroidx/gridlayout/widget/GridLayout$MutableInt;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, v2, v3, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1446
    iget-boolean p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz p0, :cond_0

    const-string p0, "x"

    goto :goto_0

    :cond_0
    const-string p0, "y"

    .line 1447
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 1449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/gridlayout/widget/GridLayout$Arc;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const-string v3, ", "

    .line 1453
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    :goto_2
    iget-object v3, v2, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    .line 1456
    iget-object v4, v2, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    .line 1457
    iget-object v2, v2, Landroidx/gridlayout/widget/GridLayout$Arc;->value:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    if-ge v3, v4, :cond_2

    .line 1458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "<="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1463
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calculateMaxIndex()I
    .locals 6

    .line 1148
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1149
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1150
    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1151
    iget-boolean v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1152
    :goto_1
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 1153
    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1154
    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1155
    invoke-virtual {v4}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 v3, -0x80000000

    :cond_2
    return v3
.end method

.method private calculateTotalWeight()F
    .locals 6

    .line 1687
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1688
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1689
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1692
    :cond_0
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1693
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1694
    :goto_1
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    add-float/2addr v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private computeArcs()V
    .locals 0

    .line 1410
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getForwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1411
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getBackwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    return-void
.end method

.method private computeGroupBounds()V
    .locals 10

    .line 1203
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    move v2, v1

    .line 1204
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1205
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$Bounds;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1208
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1210
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v6}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1211
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    .line 1212
    :goto_3
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v3, v6, v4}, Landroidx/gridlayout/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    iget v4, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_4

    .line 1213
    :cond_2
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v4

    aget v4, v4, v2

    :goto_4
    add-int v9, v3, v4

    .line 1214
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/gridlayout/widget/GridLayout$Bounds;

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Landroidx/gridlayout/widget/GridLayout$Bounds;->include(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Spec;Landroidx/gridlayout/widget/GridLayout$Axis;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 6

    .line 1600
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1601
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1602
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1605
    :cond_0
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1606
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1607
    :goto_1
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .line 1241
    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$MutableInt;

    const/4 v1, 0x0

    move v2, v1

    .line 1242
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1243
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$MutableInt;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object p0

    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast p0, [Landroidx/gridlayout/widget/GridLayout$Bounds;

    .line 1248
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 1249
    aget-object v0, p0, v1

    invoke-virtual {v0, p2}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v0

    .line 1250
    invoke-virtual {p1, v1}, Landroidx/gridlayout/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    .line 1252
    iget v3, v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    neg-int v0, v0

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 3

    .line 1700
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_0

    .line 1703
    :cond_0
    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1705
    :goto_0
    iget-boolean p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1712
    aget v0, p1, p0

    .line 1713
    array-length v1, p1

    :goto_1
    if-ge p0, v1, :cond_1

    .line 1714
    aget v2, p1, p0

    sub-int/2addr v2, v0

    aput v2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1559
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    :goto_0
    const/4 v1, 0x0

    .line 1560
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1561
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1562
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_4

    .line 1563
    :cond_1
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1564
    iget-boolean v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1565
    :goto_2
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz p1, :cond_3

    .line 1566
    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_3
    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    .line 1567
    :goto_3
    aget v5, v0, v4

    iget-object v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    iget-boolean v7, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v6, v3, v7, p1}, Landroidx/gridlayout/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private createArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 6

    .line 1379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getForwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$PackedMap;)V

    .line 1385
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getBackwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$PackedMap;)V

    .line 1388
    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    .line 1390
    :goto_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1391
    new-instance v4, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    new-instance v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v2, v3}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;)V

    move v2, v5

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v2

    .line 1398
    new-instance v4, Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-direct {v4, v3, v2}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    .line 1399
    new-instance v4, Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-direct {v4, v2, v3}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {p0, v1, v4, v2, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    .line 1402
    invoke-direct {p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v0

    .line 1403
    invoke-direct {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object p0

    .line 1405
    invoke-static {v0, p0}, Landroidx/gridlayout/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/gridlayout/widget/GridLayout$Arc;

    return-object p0
.end method

.method private createGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Spec;",
            "Landroidx/gridlayout/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1190
    const-class v0, Landroidx/gridlayout/widget/GridLayout$Spec;

    const-class v1, Landroidx/gridlayout/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/gridlayout/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1192
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1194
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1195
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1196
    :goto_1
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v3, v4}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getBounds()Landroidx/gridlayout/widget/GridLayout$Bounds;

    move-result-object v4

    .line 1197
    invoke-virtual {v0, v3, v4}, Landroidx/gridlayout/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1199
    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Assoc;->pack()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object p0

    return-object p0
.end method

.method private createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1231
    const-class v0, Landroidx/gridlayout/widget/GridLayout$Interval;

    const-class v1, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/gridlayout/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1232
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object p0

    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast p0, [Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1233
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 1234
    aget-object v3, p0, v2

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v3, p0, v2

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$Interval;->inverse()Landroidx/gridlayout/widget/GridLayout$Interval;

    move-result-object v3

    .line 1235
    :goto_1
    new-instance v4, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v4}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroidx/gridlayout/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Assoc;->pack()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object p0

    return-object p0
.end method

.method private getBackwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1269
    invoke-direct {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1271
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1272
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    const/4 v0, 0x1

    .line 1273
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1275
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    return-object p0
.end method

.method private getForwardLinks()Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1258
    invoke-direct {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1260
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1261
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    .line 1262
    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1264
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    return-object p0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 1161
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1162
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    .line 1164
    :cond_0
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    return p0
.end method

.method private getMeasure(II)I
    .locals 0

    .line 1745
    invoke-direct {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1746
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->size([I)I

    move-result p0

    return p0
.end method

.method private hasWeights()Z
    .locals 1

    .line 1615
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    .line 1616
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeights:Z

    const/4 v0, 0x1

    .line 1617
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1619
    :cond_0
    iget-boolean p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeights:Z

    return p0
.end method

.method private include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$Arc;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1303
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    return-void
.end method

.method private include(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$Arc;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$Interval;",
            "Landroidx/gridlayout/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .line 1286
    invoke-virtual {p2}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    .line 1292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/gridlayout/widget/GridLayout$Arc;

    .line 1293
    iget-object p4, p4, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 1294
    invoke-virtual {p4, p2}, Landroidx/gridlayout/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 1299
    :cond_2
    new-instance p0, Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-direct {p0, p2, p3}, Landroidx/gridlayout/widget/GridLayout$Arc;-><init>(Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private init([I)V
    .locals 0

    const/4 p0, 0x0

    .line 1442
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private logError(Ljava/lang/String;[Landroidx/gridlayout/widget/GridLayout$Arc;[Z)V
    .locals 5

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1469
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1470
    aget-object v3, p2, v2

    .line 1471
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_0

    .line 1472
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_0
    iget-boolean v4, v3, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1475
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1478
    :cond_2
    iget-object p2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constraints: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are inconsistent; permanently removing: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-direct {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1478
    invoke-interface {p2, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method private relax([ILandroidx/gridlayout/widget/GridLayout$Arc;)Z
    .locals 2

    .line 1426
    iget-boolean p0, p2, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1429
    :cond_0
    iget-object p0, p2, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 1430
    iget v1, p0, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    .line 1431
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    .line 1432
    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$Arc;->value:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget p2, p2, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    .line 1433
    aget v1, p1, v1

    add-int/2addr v1, p2

    .line 1434
    aget p2, p1, p0

    if-le v1, p2, :cond_1

    .line 1435
    aput v1, p1, p0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private setParentConstraints(II)V
    .locals 1

    .line 1739
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput p1, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    .line 1740
    iget-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    neg-int p2, p2

    iput p2, p1, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    const/4 p1, 0x0

    .line 1741
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 5

    .line 1630
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1631
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1632
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1633
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 1636
    :cond_0
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 1637
    iget-boolean v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1638
    :goto_1
    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    int-to-float v3, p1

    mul-float/2addr v3, v2

    div-float/2addr v3, p2

    .line 1640
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1641
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    aput v3, v4, v1

    sub-int/2addr p1, v3

    sub-float/2addr p2, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private size([I)I
    .locals 0

    .line 1735
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result p0

    aget p0, p1, p0

    return p0
.end method

.method private solve([I)Z
    .locals 1

    .line 1596
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[I)Z

    move-result p0

    return p0
.end method

.method private solve([Landroidx/gridlayout/widget/GridLayout$Arc;[I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1503
    invoke-direct {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    move-result p0

    return p0
.end method

.method private solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z
    .locals 12

    .line 1507
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    goto :goto_0

    :cond_0
    const-string v0, "vertical"

    .line 1508
    :goto_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    .line 1511
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_c

    .line 1512
    invoke-direct {p0, p2}, Landroidx/gridlayout/widget/GridLayout$Axis;->init([I)V

    move v6, v4

    :goto_2
    if-ge v6, v1, :cond_4

    .line 1517
    array-length v7, p1

    move v8, v4

    move v9, v8

    :goto_3
    if-ge v8, v7, :cond_1

    .line 1518
    aget-object v10, p1, v8

    invoke-direct {p0, p2, v10}, Landroidx/gridlayout/widget/GridLayout$Axis;->relax([ILandroidx/gridlayout/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    if-nez v9, :cond_3

    if-eqz v5, :cond_2

    .line 1522
    invoke-direct {p0, v0, p1, v5}, Landroidx/gridlayout/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroidx/gridlayout/widget/GridLayout$Arc;[Z)V

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    return v4

    .line 1532
    :cond_5
    array-length v6, p1

    new-array v6, v6, [Z

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_7

    .line 1534
    array-length v8, p1

    move v9, v4

    :goto_5
    if-ge v9, v8, :cond_6

    .line 1535
    aget-boolean v10, v6, v9

    aget-object v11, p1, v9

    invoke-direct {p0, p2, v11}, Landroidx/gridlayout/widget/GridLayout$Axis;->relax([ILandroidx/gridlayout/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    move-object v5, v6

    :cond_8
    move v7, v4

    .line 1543
    :goto_6
    array-length v8, p1

    if-ge v7, v8, :cond_b

    .line 1544
    aget-boolean v8, v6, v7

    if-eqz v8, :cond_a

    .line 1545
    aget-object v8, p1, v7

    .line 1547
    iget-object v9, v8, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v9, v9, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    iget-object v10, v8, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v10, v10, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    if-ge v9, v10, :cond_9

    goto :goto_7

    .line 1550
    :cond_9
    iput-boolean v4, v8, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    return v2
.end method

.method private solveAndDistributeSpace([I)V
    .locals 9

    .line 1651
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1652
    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([I)Z

    .line 1653
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v0, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    return-void

    .line 1659
    :cond_0
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v3

    const/4 v4, -0x1

    move v5, v2

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    int-to-long v5, v0

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    .line 1666
    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 1667
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    .line 1668
    invoke-direct {p0, v5, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1669
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v5, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    if-nez v5, :cond_3

    .line 1679
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    .line 1680
    invoke-direct {p0, v4, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1681
    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([I)Z

    :cond_3
    return-void
.end method

.method private topologicalSort(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$Arc;",
            ">;)[",
            "Landroidx/gridlayout/widget/GridLayout$Arc;"
        }
    .end annotation

    .line 1368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->topologicalSort([Landroidx/gridlayout/widget/GridLayout$Arc;)[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object p0

    return-object p0
.end method

.method private topologicalSort([Landroidx/gridlayout/widget/GridLayout$Arc;)[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 1

    .line 1329
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis$1;-><init>(Landroidx/gridlayout/widget/GridLayout$Axis;[Landroidx/gridlayout/widget/GridLayout$Arc;)V

    .line 1364
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis$1;->sort()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 1

    .line 1415
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1416
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->createArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    .line 1418
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1419
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeArcs()V

    const/4 v0, 0x1

    .line 1420
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    .line 1422
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 1168
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMaxIndex()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getDeltas()[I
    .locals 1

    .line 1623
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    .line 1626
    :cond_0
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    return-object p0
.end method

.method public getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$PackedMap<",
            "Landroidx/gridlayout/widget/GridLayout$Spec;",
            "Landroidx/gridlayout/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1220
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->createGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1222
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1223
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeGroupBounds()V

    const/4 v0, 0x1

    .line 1224
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1226
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    return-object p0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .line 1574
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1575
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1577
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1578
    invoke-direct {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1579
    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1581
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    return-object p0
.end method

.method public getLocations()[I
    .locals 2

    .line 1720
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1722
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    .line 1724
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1

    .line 1725
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1726
    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    .line 1728
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    return-object p0
.end method

.method public getMeasure(I)I
    .locals 3

    .line 1750
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1751
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return v2

    .line 1757
    :cond_0
    invoke-direct {p0, p1, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p0

    return p0

    :cond_1
    const p1, 0x186a0

    .line 1754
    invoke-direct {p0, v2, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p0

    return p0

    .line 1760
    :cond_2
    invoke-direct {p0, v2, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(II)I

    move-result p0

    return p0
.end method

.method public getTrailingMargins()[I
    .locals 2

    .line 1585
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1588
    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1589
    invoke-direct {p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1590
    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1592
    :cond_1
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    return-object p0
.end method

.method groupArcsByFirstVertex([Landroidx/gridlayout/widget/GridLayout$Arc;)[[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 8

    .line 1309
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 1310
    new-array v0, p0, [[Landroidx/gridlayout/widget/GridLayout$Arc;

    .line 1311
    new-array p0, p0, [I

    .line 1312
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1313
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v5, p0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1315
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 1316
    aget v3, p0, v1

    new-array v3, v3, [Landroidx/gridlayout/widget/GridLayout$Arc;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1319
    :cond_1
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1320
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1321
    iget-object v4, v3, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    .line 1322
    aget-object v5, v0, v4

    aget v6, p0, v4

    add-int/lit8 v7, v6, 0x1

    aput v7, p0, v4

    aput-object v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public invalidateStructure()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1775
    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/4 v0, 0x0

    .line 1777
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1778
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1779
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    .line 1781
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1782
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1783
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    .line 1785
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    .line 1787
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    const/4 v0, 0x0

    .line 1788
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1790
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    return-void
.end method

.method public invalidateValues()V
    .locals 1

    const/4 v0, 0x0

    .line 1794
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1795
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1796
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1798
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1799
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1800
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    .line 1802
    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method public isOrderPreserved()Z
    .locals 0

    .line 1181
    iget-boolean p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    return p0
.end method

.method public layout(I)V
    .locals 0

    .line 1770
    invoke-direct {p0, p1, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1771
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    return-void
.end method

.method public setCount(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 1172
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_0

    const-string v1, "column"

    goto :goto_0

    :cond_0
    const-string v1, "row"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 1177
    :cond_1
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    return-void
.end method

.method public setOrderPreserved(Z)V
    .locals 0

    .line 1185
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1186
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    return-void
.end method
