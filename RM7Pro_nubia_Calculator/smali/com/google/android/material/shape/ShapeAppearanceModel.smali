.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    }
.end annotation


# static fields
.field public static final PILL:I = -0x1


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private final onChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 72
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 73
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 74
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 75
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 77
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 78
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 79
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 80
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->initFromShapeAppearanceStyle(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 108
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 109
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 111
    sget p3, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 112
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 113
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->initFromShapeAppearanceStyle(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 87
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 88
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 91
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 92
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 93
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 94
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    return-void
.end method

.method private final initFromShapeAppearanceStyle(Landroid/content/Context;III)V
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 133
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p2, p3

    move-object p1, v0

    .line 137
    :cond_0
    sget-object p3, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    .line 138
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 140
    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 141
    sget p3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 142
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 143
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 144
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 145
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 146
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 147
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 148
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 150
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 151
    invoke-virtual {p1, v2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 152
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 153
    invoke-virtual {p1, v2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 154
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 155
    invoke-virtual {p1, v3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 156
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 157
    invoke-virtual {p1, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 158
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 159
    invoke-virtual {p1, v5, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 162
    invoke-static {p3, v2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 161
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 164
    invoke-static {v0, v3}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 163
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 166
    invoke-static {v1, v4}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 165
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 168
    invoke-static {p2, p4}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p2

    .line 167
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 170
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 171
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 172
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 173
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onShapeAppearanceModelChanged()V
    .locals 1

    .line 630
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;->onShapeAppearanceModelChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 598
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 482
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomLeftCornerSizeInternal(F)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 443
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomRightCornerSizeInternal(F)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 511
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 569
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopLeftCornerSizeInternal(F)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 404
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopRightCornerSizeInternal(F)Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method addOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 614
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public isRoundRect()Z
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 646
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 647
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 648
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 649
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 651
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v3}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v3

    .line 653
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 654
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 655
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 656
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 658
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of p0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public isUsingPillCorner()Z
    .locals 2

    .line 623
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method removeOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 618
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllCorners(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 188
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    .line 198
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 199
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 2

    .line 285
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    .line 286
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 287
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 288
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 590
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomLeftCorner(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 465
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomRightCorner(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 426
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setCornerRadii(FFFF)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerSizeInternal(F)Z

    move-result p1

    .line 234
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 235
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 236
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    .line 309
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 310
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 311
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    .line 332
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 333
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 334
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopLeftCorner(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 348
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopRightCorner(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 387
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method
