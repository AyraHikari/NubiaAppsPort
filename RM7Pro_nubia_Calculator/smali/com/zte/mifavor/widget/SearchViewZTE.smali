.class public Lcom/zte/mifavor/widget/SearchViewZTE;
.super Landroid/widget/SearchView;
.source "SearchViewZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/SearchViewZTE$OnCloseListener;,
        Lcom/zte/mifavor/widget/SearchViewZTE$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final CLOSE_BTN_PADDING:I = 0x3

.field private static final CLOSE_BTN_WIDTH:I = 0x18

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LAYOUT_WEIGHT:I = 0x1

.field private static final PADDING_LEFT_RIGHT:F = 0.25f

.field private static final PADDING_NO:I = 0x0

.field private static final PADDING_PLATE_RIGHT:I = 0x1

.field private static final SEARCH_BTN:Ljava/lang/String; = "search_mag_icon"

.field private static final SEARCH_CLOSE_BTN:Ljava/lang/String; = "search_close_btn"

.field private static final SEARCH_EDIT_FRAME:Ljava/lang/String; = "search_edit_frame"

.field private static final SEARCH_PLATE:Ljava/lang/String; = "search_plate"

.field private static final SEARCH_SRC_TEXT:Ljava/lang/String; = "search_src_text"


# instance fields
.field private mEditState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SearchViewZTE;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SearchViewZTE;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SearchViewZTE;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/SearchViewZTE;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "search_edit_frame"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const v2, 0x800003

    .line 90
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "search_plate"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 94
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/SearchViewZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$dimen;->mfvc_ic_txt_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 97
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 98
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    .line 99
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 95
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "search_src_text"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    .line 103
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v3, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;D)I

    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;D)I

    move-result v3

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0, v1, v4, v3, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setPaddingRelative(IIII)V

    const v1, 0x800013

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setGravity(I)V

    .line 106
    sget v1, Lcom/zte/extres/R$style;->mfvc_appbar_search_normal_font:I

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setTextAppearance(I)V

    .line 107
    sget v1, Lcom/zte/extres/R$color;->mfv_common_acb_search_txt:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->isIconfiedByDefault()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 110
    sget v1, Lcom/zte/extres/R$drawable;->search_hint_x:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    new-instance v4, Landroid/text/style/ImageSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 113
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v6, "   "

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    .line 114
    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 115
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$color;->mfv_common_acb_search_txt_watermark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 117
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 116
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "search_close_btn"

    const-string v2, "id"

    const-string v4, "android"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 124
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 123
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 127
    sget v1, Lcom/zte/extres/R$color;->mfv_common_acb_search_clear:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 129
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x10

    .line 130
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/zte/extres/R$dimen;->mfvc_small_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public enableSearchVoice(Z)V
    .locals 0

    return-void
.end method

.method public getEditState()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    return p0
.end method

.method public performAnimate(IIIIILandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    const/4 v0, 0x2

    .line 173
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    new-instance p6, Lcom/zte/mifavor/widget/SearchViewZTE$1;

    move-object v1, p6

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/SearchViewZTE$1;-><init>(Lcom/zte/mifavor/widget/SearchViewZTE;IIII)V

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p0, p5

    .line 193
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x1
        0x64
    .end array-data
.end method

.method public setCloseButtonColor(I)V
    .locals 0

    return-void
.end method

.method public setEditState(Z)V
    .locals 4

    .line 136
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SearchViewZTE;->mEditState:Z

    .line 137
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SearchViewZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "search_src_text"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SearchViewZTE;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SearchView$SearchAutoComplete;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSearchHintIconColor(I)V
    .locals 0

    return-void
.end method

.method public setSearchVoiceText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
