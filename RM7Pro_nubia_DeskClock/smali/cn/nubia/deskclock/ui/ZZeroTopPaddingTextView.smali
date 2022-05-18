.class public Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;
.super Landroid/widget/TextView;
.source "ZZeroTopPaddingTextView.java"


# static fields
.field private static final BOLD_FONT_BOTTOM_PADDING_RATIO:F = 0.188f

.field private static final BOLD_FONT_PADDING_RATIO:F = 0.098f

.field private static final NORMAL_FONT_BOTTOM_PADDING_RATIO:F = 0.185f

.field private static final NORMAL_FONT_PADDING_RATIO:F = 0.188f

.field private static final SAN_SERIF_BOLD:Landroid/graphics/Typeface;

.field private static final SAN_SERIF__CONDENSED_BOLD:Landroid/graphics/Typeface;


# instance fields
.field private mPaddingRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    const-string v0, "san-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    .line 42
    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->SAN_SERIF__CONDENSED_BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v0, p0, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->mPaddingRight:I

    .line 58
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->setIncludeFontPadding(Z)V

    .line 59
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->updatePadding()V

    .line 60
    return-void
.end method


# virtual methods
.method public setPaddingRight(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 78
    iput p1, p0, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->mPaddingRight:I

    .line 79
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->updatePadding()V

    .line 80
    return-void
.end method

.method public updatePadding()V
    .locals 7

    .prologue
    .line 63
    const v1, 0x3e408312    # 0.188f

    .line 64
    .local v1, "paddingRatio":F
    const v0, 0x3e3d70a4    # 0.185f

    .line 65
    .local v0, "bottomPaddingRatio":F
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->SAN_SERIF__CONDENSED_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    const v1, 0x3dc8b439

    .line 68
    const v0, 0x3e408312    # 0.188f

    .line 73
    :cond_1
    const/4 v2, 0x0

    neg-float v3, v1

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->mPaddingRight:I

    neg-float v5, v0

    .line 74
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->getTextSize()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 73
    invoke-virtual {p0, v2, v3, v4, v5}, Lcn/nubia/deskclock/ui/ZZeroTopPaddingTextView;->setPadding(IIII)V

    .line 75
    return-void
.end method
