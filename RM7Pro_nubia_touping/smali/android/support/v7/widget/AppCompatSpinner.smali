.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;,
        Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mDropDownWidth:I

.field private mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

.field private mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 197
    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    const/4 v10, 0x0

    invoke-static {p1, p2, v9, p3, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 200
    .local v1, "a":Landroid/support/v7/widget/TintTypedArray;
    new-instance v9, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v9, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 202
    if-eqz p5, :cond_5

    .line 203
    new-instance v9, Landroid/support/v7/view/ContextThemeWrapper;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 215
    :goto_0
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-eqz v9, :cond_2

    .line 216
    const/4 v9, -0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, "aa":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v9, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 221
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p4

    .line 227
    :cond_0
    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    .end local v2    # "aa":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_2

    .line 234
    new-instance v7, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {v7, p0, v9, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    .local v7, "popup":Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    sget-object v10, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    const/4 v11, 0x0

    invoke-static {v9, p2, v10, p3, v11}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    .line 237
    .local v6, "pa":Landroid/support/v7/widget/TintTypedArray;
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v10, -0x2

    invoke-virtual {v6, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v9

    iput v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 239
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 240
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 239
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 244
    iput-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 245
    new-instance v9, Landroid/support/v7/widget/AppCompatSpinner$1;

    invoke-direct {v9, p0, p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    .line 262
    .end local v6    # "pa":Landroid/support/v7/widget/TintTypedArray;
    .end local v7    # "popup":Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    :cond_2
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 263
    .local v5, "entries":[Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 264
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    invoke-direct {v3, p1, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 266
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v9, Landroid/support/v7/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 272
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    .line 276
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v9, :cond_4

    .line 277
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 281
    :cond_4
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v9, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 282
    return-void

    .line 205
    .end local v5    # "entries":[Ljava/lang/CharSequence;
    :cond_5
    sget v9, Landroid/support/v7/appcompat/R$styleable;->Spinner_popupTheme:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 206
    .local v8, "popupThemeResId":I
    if-eqz v8, :cond_6

    .line 207
    new-instance v9, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v9, p1, v8}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 211
    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v9, v10, :cond_7

    move-object v9, p1

    :goto_2
    iput-object v9, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 224
    .end local v8    # "popupThemeResId":I
    .restart local v2    # "aa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "AppCompatSpinner"

    const-string v10, "Could not read android:spinnerMode"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 227
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_8

    .line 228
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    throw v9
.end method

.method static synthetic access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatSpinner;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatSpinner;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/AppCompatSpinner;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/AppCompatSpinner;

    .prologue
    .line 68
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    return v0
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 542
    if-nez p1, :cond_1

    .line 543
    const/4 v8, 0x0

    .line 582
    :cond_0
    :goto_0
    return v8

    .line 546
    :cond_1
    const/4 v8, 0x0

    .line 547
    .local v8, "width":I
    const/4 v5, 0x0

    .line 548
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 550
    .local v4, "itemType":I
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 552
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 556
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 557
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 558
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 559
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 560
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 561
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 562
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 563
    move v4, v6

    .line 564
    const/4 v5, 0x0

    .line 566
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 567
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 568
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 573
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 577
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 578
    iget-object v10, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 579
    iget-object v10, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 539
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOffset()I

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 360
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getVerticalOffset()I

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 334
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 335
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 377
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 381
    :goto_0
    return v0

    .line 378
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 379
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 316
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 292
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 501
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 530
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 405
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 408
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 422
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 425
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 424
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 426
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 424
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 427
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v2

    .line 424
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 429
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 438
    :cond_0
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 388
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v1, :cond_1

    .line 389
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 395
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    .local v0, "popupContext":Landroid/content/Context;
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 396
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 462
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 465
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 345
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 326
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 368
    iput p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 370
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 302
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 488
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 517
    :cond_0
    return-void
.end method
