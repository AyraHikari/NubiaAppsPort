.class Landroid/support/v4/graphics/PaintCompatApi14;
.super Ljava/lang/Object;
.source "PaintCompatApi14.java"


# static fields
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 33
    if-ne v4, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 38
    :cond_1
    const-string v3, "\udb3f\udffd"

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 39
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 41
    cmpl-float v3, v6, v0

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    if-le v3, v1, :cond_3

    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    cmpl-float v3, v6, v3

    if-gtz v3, :cond_0

    move v3, v0

    move v0, v2

    .line 65
    :goto_1
    if-ge v0, v4, :cond_2

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    .line 67
    add-int v8, v0, v7

    invoke-virtual {p0, p1, v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    add-float/2addr v3, v8

    .line 68
    add-int/2addr v0, v7

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    cmpl-float v0, v6, v3

    if-gez v0, :cond_0

    .line 75
    :cond_3
    cmpl-float v0, v6, v5

    if-eqz v0, :cond_4

    move v2, v1

    .line 77
    goto :goto_0

    .line 82
    :cond_4
    invoke-static {}, Landroid/support/v4/graphics/PaintCompatApi14;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v3

    .line 83
    const-string v5, "\udb3f\udffd"

    const-string v0, "\udb3f\udffd"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v0, v3, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v2, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 84
    iget-object v0, v3, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    iget-object v0, v3, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v3, v3, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/support/v4/util/Pair;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    sget-object v1, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 95
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
