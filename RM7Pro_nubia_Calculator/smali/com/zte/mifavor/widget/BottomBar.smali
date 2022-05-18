.class public Lcom/zte/mifavor/widget/BottomBar;
.super Landroid/widget/LinearLayout;
.source "BottomBar.java"


# static fields
.field public static final BUTTON1:I = 0x0

.field public static final BUTTON2:I = 0x1

.field public static final BUTTON3:I = 0x2

.field private static final BUTTON_NUM:I = 0x2

.field private static final BlankWeight:[F

.field private static final BlankWeightSinglePort:[F

.field private static final ButtonWeight:[F

.field public static final GRAVITY_END:I = 0x1

.field public static final GRAVITY_INVALID:I = -0x1

.field public static final GRAVITY_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BottomBar"


# instance fields
.field private mButtonContainers:[Landroid/widget/LinearLayout;

.field private mButtonGravity:I

.field private mButtons:[Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDividers:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 36
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/BottomBar;->BlankWeight:[F

    .line 37
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/BottomBar;->BlankWeightSinglePort:[F

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/mifavor/widget/BottomBar;->ButtonWeight:[F

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40533333    # 3.3f
    .end array-data

    :array_2
    .array-data 4
        0x42b40000    # 90.0f
        0x422d3333    # 43.3f
        0x41de6666    # 27.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/BottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    sget v0, Lcom/zte/extres/R$attr;->bottomBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/BottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    sget v0, Lcom/zte/extres/R$style;->BottomBarStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/BottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x3

    .line 42
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 43
    new-array v2, v1, [Landroid/widget/Button;

    iput-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    .line 44
    new-array v2, v1, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    .line 60
    iput-object p1, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    .line 62
    iget-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    sget v3, Lcom/zte/extres/R$drawable;->bottombar_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/BottomBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x11

    .line 63
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/BottomBar;->setGravity(I)V

    .line 65
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingTop()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingBottom()I

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingStart()I

    move-result v3

    .line 68
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$dimen;->bottombar_padding_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 69
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingEnd()I

    move-result v5

    .line 70
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/zte/extres/R$dimen;->bottombar_padding_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 66
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/zte/mifavor/widget/BottomBar;->setPaddingRelative(IIII)V

    .line 73
    :cond_0
    new-array v3, v0, [I

    sget v4, Lcom/zte/extres/R$id;->button1:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/zte/extres/R$id;->button2:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/zte/extres/R$id;->button3:I

    aput v4, v3, v1

    move v4, v5

    :goto_0
    if-ge v4, v1, :cond_1

    .line 75
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v4

    .line 76
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->generateWeightLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/zte/mifavor/widget/BottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    new-instance v8, Landroid/widget/Button;

    iget-object v9, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v4

    .line 79
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object v7, v7, v4

    aget v8, v3, v4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 80
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v4

    .line 81
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v4

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 82
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object v8, v8, v4

    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->generateWrapContentLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v7, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v4

    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->generateWeightLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/zte/mifavor/widget/BottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 86
    iget-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->generateWeightLayoutParam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/widget/BottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    sget-object v2, Lcom/zte/extres/R$styleable;->BottomBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    new-array p2, v0, [I

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_text1:I

    aput p3, p2, v5

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_text2:I

    aput p3, p2, v6

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_text3:I

    aput p3, p2, v1

    move p3, v5

    :goto_1
    if-ge p3, v1, :cond_2

    .line 94
    iget-object p4, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p4, p4, p3

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 97
    :cond_2
    new-array p2, v0, [I

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_enabled1:I

    aput p3, p2, v5

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_enabled2:I

    aput p3, p2, v6

    sget p3, Lcom/zte/extres/R$styleable;->BottomBar_enabled3:I

    aput p3, p2, v1

    move p3, v5

    :goto_2
    if-ge p3, v1, :cond_3

    .line 100
    iget-object p4, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p4, p4, p3

    aget v2, p2, p3

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 103
    :cond_3
    new-array p2, v0, [I

    fill-array-data p2, :array_0

    .line 104
    new-array p3, v0, [I

    sget p4, Lcom/zte/extres/R$styleable;->BottomBar_visibility1:I

    aput p4, p3, v5

    sget p4, Lcom/zte/extres/R$styleable;->BottomBar_visibility2:I

    aput p4, p3, v6

    sget p4, Lcom/zte/extres/R$styleable;->BottomBar_visibility3:I

    aput p4, p3, v1

    move p4, v5

    :goto_3
    if-ge p4, v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p4

    aget v2, p3, p4

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 110
    :cond_4
    sget p2, Lcom/zte/extres/R$styleable;->BottomBar_gravity:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/BottomBar;->setButtonGravity(I)V

    .line 112
    sget p2, Lcom/zte/extres/R$styleable;->BottomBar_android_textAppearance:I

    sget p3, Lcom/zte/extres/R$style;->BottomBarTextStyle:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    :goto_4
    if-ge v5, v1, :cond_5

    .line 115
    iget-object p3, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p3, p3, v5

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextAppearance(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 118
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->initUI()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method private generateWeightLayoutParam()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 153
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object p0
.end method

.method private generateWrapContentLayoutParam()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 148
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getButtonCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/BottomBar;->shouldShow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getScreenWidth()I
    .locals 2

    .line 263
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 265
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 266
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private initUI()V
    .locals 8

    .line 158
    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->getButtonCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/mifavor/utils/DisplayModeManager;->isMulty(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {v1}, Lcom/zte/mifavor/utils/DisplayModeManager;->getCurrentMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 169
    sget-object v1, Lcom/zte/mifavor/widget/BottomBar;->BlankWeightSinglePort:[F

    goto :goto_3

    .line 171
    :cond_4
    sget-object v1, Lcom/zte/mifavor/widget/BottomBar;->BlankWeight:[F

    :goto_3
    move v4, v2

    :goto_4
    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    .line 176
    iget-object v5, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    sget-object v6, Lcom/zte/mifavor/widget/BottomBar;->ButtonWeight:[F

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    iget-object v5, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    .line 179
    :goto_5
    aget v6, v1, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 181
    iget-object v5, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 182
    iget-object v5, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v4

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v5, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 186
    :cond_7
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    aget v0, v1, v2

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private shouldShow(Landroid/view/View;)Z
    .locals 0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getButtonGravity()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonGravity:I

    return p0
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getButtonVisibility(I)I
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public isButtonEnabled(I)Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 227
    iget v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonGravity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/mifavor/utils/DisplayModeManager;->isMulty(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/mifavor/utils/DisplayModeManager;->isInZoomMode(Landroid/content/Context;)Z

    move-result v1

    .line 230
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->getScreenWidth()I

    move-result v6

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->getButtonCount()I

    move-result v1

    rem-int/2addr v1, v4

    if-ne v1, v3, :cond_2

    div-int/lit8 v1, v6, 0x2

    if-le v0, v1, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/zte/mifavor/widget/BottomBar;->getButtonCount()I

    move-result v0

    add-int/2addr v0, v3

    div-int/2addr v6, v0

    .line 235
    iget v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonGravity:I

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v5, v0, v6, v1}, Lcom/zte/mifavor/widget/BottomBar;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v6, v0, v5, v1}, Lcom/zte/mifavor/widget/BottomBar;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v5, v0, v5, v1}, Lcom/zte/mifavor/widget/BottomBar;->setPaddingRelative(IIII)V

    .line 245
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_bottom_height01:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 254
    :cond_4
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    .line 250
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 249
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 258
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setButtonEnabled(IZ)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setButtonGravity(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonGravity:I

    .line 129
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/BottomBar;->invalidate()V

    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtons:[Landroid/widget/Button;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/zte/mifavor/widget/BottomBar;->mButtonContainers:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object p0, p0, Lcom/zte/mifavor/widget/BottomBar;->mDividers:[Landroid/widget/ImageView;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
