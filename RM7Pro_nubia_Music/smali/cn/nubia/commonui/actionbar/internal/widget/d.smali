.class Lcn/nubia/commonui/actionbar/internal/widget/d;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->a:Ljava/lang/ThreadLocal;

    .line 30
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->b:[I

    .line 31
    new-array v0, v2, [I

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->c:[I

    .line 33
    new-array v0, v3, [I

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->d:[I

    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->d:[I

    aput p1, v0, v1

    .line 57
    const/4 v0, 0x0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/d;->d:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return v1

    .line 61
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static a(Landroid/content/Context;IF)I
    .locals 2

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 103
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 104
    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 38
    new-array v0, v1, [[I

    .line 39
    new-array v1, v1, [I

    .line 40
    const/4 v2, 0x0

    .line 43
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/d;->b:[I

    aput-object v3, v0, v2

    .line 44
    aput p1, v1, v2

    .line 45
    const/4 v2, 0x1

    .line 48
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/d;->c:[I

    aput-object v3, v0, v2

    .line 49
    aput p0, v1, v2

    .line 52
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static a()Landroid/util/TypedValue;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 94
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 96
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-object v0
.end method

.method static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/d;->d:[I

    aput p1, v0, v1

    .line 67
    const/4 v0, 0x0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/d;->d:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static c(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/d;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/d;->b:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a()Landroid/util/TypedValue;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 86
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 88
    invoke-static {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;IF)I

    move-result v0

    goto :goto_0
.end method
