.class Landroidx/constraintlayout/widget/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Landroidx/constraintlayout/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 186
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->a:F

    .line 187
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->b:F

    .line 188
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->c:F

    .line 189
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->d:F

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 194
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 195
    sget-object v0, Landroidx/constraintlayout/widget/j$b;->fb:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 203
    sget v3, Landroidx/constraintlayout/widget/j$b;->fc:I

    if-ne v2, v3, :cond_0

    .line 204
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    new-instance v2, Landroidx/constraintlayout/widget/e;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/e;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/d$b;->f:Landroidx/constraintlayout/widget/e;

    .line 213
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 223
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/j$b;->fd:I

    if-ne v2, v3, :cond_1

    .line 224
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->d:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->d:F

    goto :goto_1

    .line 225
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/j$b;->fe:I

    if-ne v2, v3, :cond_2

    .line 226
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->b:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->b:F

    goto :goto_1

    .line 227
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/j$b;->ff:I

    if-ne v2, v3, :cond_3

    .line 228
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->c:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->c:F

    goto :goto_1

    .line 229
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/j$b;->fg:I

    if-ne v2, v3, :cond_4

    .line 230
    iget v3, p0, Landroidx/constraintlayout/widget/d$b;->a:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->a:F

    goto :goto_1

    :cond_4
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "Unknown tag"

    .line 232
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
