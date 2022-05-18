.class public Landroidx/constraintlayout/widget/f$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public aA:F

.field public aB:F

.field public ap:F

.field public aq:Z

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F

.field public az:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    iput p1, p0, Landroidx/constraintlayout/widget/f$a;->ap:F

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/f$a;->aq:Z

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->ar:F

    .line 70
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->as:F

    .line 71
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->at:F

    .line 72
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->au:F

    .line 73
    iput p1, p0, Landroidx/constraintlayout/widget/f$a;->av:F

    .line 74
    iput p1, p0, Landroidx/constraintlayout/widget/f$a;->aw:F

    .line 75
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->ax:F

    .line 76
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->ay:F

    .line 77
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->az:F

    .line 78
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->aA:F

    .line 79
    iput p2, p0, Landroidx/constraintlayout/widget/f$a;->aB:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 90
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->ap:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/f$a;->aq:Z

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->ar:F

    .line 70
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->as:F

    .line 71
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->at:F

    .line 72
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->au:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->av:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->aw:F

    .line 75
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->ax:F

    .line 76
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->ay:F

    .line 77
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->az:F

    .line 78
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->aA:F

    .line 79
    iput v2, p0, Landroidx/constraintlayout/widget/f$a;->aB:F

    .line 91
    sget-object v0, Landroidx/constraintlayout/widget/j$b;->cp:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 95
    sget v2, Landroidx/constraintlayout/widget/j$b;->cq:I

    if-ne v0, v2, :cond_0

    .line 96
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->ap:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->ap:F

    goto/16 :goto_1

    .line 97
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/j$b;->cB:I

    const/16 v3, 0x15

    if-ne v0, v2, :cond_1

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_b

    .line 99
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->ar:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->ar:F

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/f$a;->aq:Z

    goto/16 :goto_1

    .line 102
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/j$b;->cy:I

    if-ne v0, v2, :cond_2

    .line 103
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->at:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->at:F

    goto/16 :goto_1

    .line 104
    :cond_2
    sget v2, Landroidx/constraintlayout/widget/j$b;->cz:I

    if-ne v0, v2, :cond_3

    .line 105
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->au:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->au:F

    goto/16 :goto_1

    .line 106
    :cond_3
    sget v2, Landroidx/constraintlayout/widget/j$b;->cx:I

    if-ne v0, v2, :cond_4

    .line 107
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->as:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->as:F

    goto :goto_1

    .line 108
    :cond_4
    sget v2, Landroidx/constraintlayout/widget/j$b;->cv:I

    if-ne v0, v2, :cond_5

    .line 109
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->av:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->av:F

    goto :goto_1

    .line 110
    :cond_5
    sget v2, Landroidx/constraintlayout/widget/j$b;->cw:I

    if-ne v0, v2, :cond_6

    .line 111
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->aw:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->aw:F

    goto :goto_1

    .line 112
    :cond_6
    sget v2, Landroidx/constraintlayout/widget/j$b;->cr:I

    if-ne v0, v2, :cond_7

    .line 113
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->ax:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->ax:F

    goto :goto_1

    .line 114
    :cond_7
    sget v2, Landroidx/constraintlayout/widget/j$b;->cs:I

    if-ne v0, v2, :cond_8

    .line 115
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->ay:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->ay:F

    goto :goto_1

    .line 116
    :cond_8
    sget v2, Landroidx/constraintlayout/widget/j$b;->ct:I

    if-ne v0, v2, :cond_9

    .line 117
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->az:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->az:F

    goto :goto_1

    .line 118
    :cond_9
    sget v2, Landroidx/constraintlayout/widget/j$b;->cu:I

    if-ne v0, v2, :cond_a

    .line 119
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->aA:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->aA:F

    goto :goto_1

    .line 120
    :cond_a
    sget v2, Landroidx/constraintlayout/widget/j$b;->cA:I

    if-ne v0, v2, :cond_b

    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_b

    .line 122
    iget v2, p0, Landroidx/constraintlayout/widget/f$a;->aB:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/f$a;->aB:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 126
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
