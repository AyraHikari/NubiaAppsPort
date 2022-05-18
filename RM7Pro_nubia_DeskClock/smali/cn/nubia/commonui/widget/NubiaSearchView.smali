.class public Lcn/nubia/commonui/widget/NubiaSearchView;
.super Landroid/widget/LinearLayout;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;,
        Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NubiaSearchView"

.field public static final MAX:I = 0x63


# instance fields
.field private final mCancelArea:Landroid/view/View;

.field private final mCancelDivider:Landroid/widget/ImageView;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private final mCancelTextView:Landroid/widget/TextView;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/widget/EditText;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTotalTextView:Landroid/widget/TextView;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    .line 102
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$1;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$1;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$2;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$2;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 647
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$5;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$5;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 660
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$6;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$6;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 819
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$7;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$7;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 191
    sget-object v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "layout_inflater"

    .line 194
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 195
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_layout:I

    sget v9, Lcn/nubia/commonui/R$layout;->nubia_search_view:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 197
    .local v5, "layoutResId":I
    const/4 v8, 0x1

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 199
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_src_text:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    .line 201
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_edit_frame:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 202
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_plate:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchPlate:Landroid/view/View;

    .line 203
    sget v8, Lcn/nubia/commonui/R$id;->nubia_submit_area:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    .line 205
    sget v8, Lcn/nubia/commonui/R$id;->nubia_cancel_area:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelArea:Landroid/view/View;

    .line 206
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_cancel_text:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelTextView:Landroid/widget/TextView;

    .line 207
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelTextView:Landroid/widget/TextView;

    new-instance v9, Lcn/nubia/commonui/widget/NubiaSearchView$3;

    invoke-direct {v9, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$3;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_cancel_divider:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelDivider:Landroid/widget/ImageView;

    .line 218
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_button:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 219
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_go_btn:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    .line 220
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_close_btn:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 221
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_mag_icon:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 223
    sget v8, Lcn/nubia/commonui/R$id;->nubia_total:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    .line 226
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_queryBackground:I

    .line 227
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 226
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_submitBackground:I

    .line 229
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 228
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_searchIcon:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchIconResId:I

    .line 232
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchIconResId:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_goIcon:I

    .line 234
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 233
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_closeIcon:I

    .line 236
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 235
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_searchIcon:I

    .line 238
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 237
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 248
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    new-instance v9, Lcn/nubia/commonui/widget/NubiaSearchView$4;

    invoke-direct {v9, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$4;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_iconifiedByDefault:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 260
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_maxWidth:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 262
    .local v6, "maxWidth":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 263
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaSearchView;->setMaxWidth(I)V

    .line 266
    :cond_0
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_queryHint:I

    .line 267
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 268
    .local v7, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 269
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_imeOptions:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 274
    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 275
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeOptions(I)V

    .line 278
    :cond_2
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_inputType:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 280
    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 281
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setInputType(I)V

    .line 284
    :cond_3
    const/4 v1, 0x1

    .line 285
    .local v1, "focusable":Z
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_focusable:I

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 287
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setFocusable(Z)V

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 290
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 291
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->showSoftInputUnchecked()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/widget/NubiaSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onCloseClicked()V

    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 728
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 729
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    invoke-interface {v1}, Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 736
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 742
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 743
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 749
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 750
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 751
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 754
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 3

    .prologue
    .line 672
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 673
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 674
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 676
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-interface {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 677
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 680
    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 691
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 692
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 693
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 695
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 696
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateCloseButton()V

    .line 697
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitArea()V

    .line 698
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 699
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 702
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 703
    return-void

    .line 693
    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 621
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 634
    if-eqz p1, :cond_1

    .line 635
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 639
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 641
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 806
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 810
    return-void

    .line 809
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private showSoftInputUnchecked()V
    .locals 8

    .prologue
    .line 120
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    .line 123
    :try_start_0
    const-string v5, "android.view.inputmethod.InputMethodManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "showSoftInputUnchecked"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 125
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 126
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ce":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "ce":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 611
    .local v0, "hasText":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    if-nez v0, :cond_0

    .line 613
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 615
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_3

    sget-object v1, Lcn/nubia/commonui/widget/NubiaSearchView;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 617
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v1

    .line 608
    goto :goto_0

    .line 611
    .restart local v0    # "hasText":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 615
    :cond_3
    sget-object v1, Lcn/nubia/commonui/widget/NubiaSearchView;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 0

    .prologue
    .line 624
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->invalidate()V

    .line 625
    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateQueryTextAppearence(Z)V
    .locals 3
    .param p1, "hasText"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 836
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 600
    const/16 v0, 0x8

    .line 601
    .local v0, "visibility":I
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 604
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 605
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 591
    const/16 v0, 0x8

    .line 592
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 596
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    return-void
.end method

.method private updateTotalTextView(I)V
    .locals 7
    .param p1, "total"    # I

    .prologue
    const/16 v5, 0x63

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 713
    if-le p1, v5, :cond_2

    .line 714
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_total_text:I

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 714
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :cond_1
    return-void

    .line 717
    :cond_2
    if-ltz p1, :cond_0

    .line 718
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_total_text:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 719
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 718
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 5
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 573
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconified:Z

    .line 575
    if-eqz p1, :cond_0

    move v1, v2

    .line 577
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 579
    .local v0, "hasText":Z
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 581
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateCloseButton()V

    .line 583
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitArea()V

    .line 584
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 575
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 577
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v2

    .line 581
    goto :goto_2
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    .line 359
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 360
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 361
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 362
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    .line 363
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryTextView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchEditFrame()Landroid/view/View;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHintIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 768
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 769
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 770
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 771
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 772
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 779
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 782
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 783
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    .line 784
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 786
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 631
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 792
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 793
    const-class v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 794
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 798
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 799
    const-class v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 800
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 532
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 565
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 538
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 540
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 562
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 563
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 544
    :sswitch_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 545
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 547
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 549
    goto :goto_1

    .line 553
    :sswitch_1
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 554
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 559
    :sswitch_2
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 540
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 759
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->postUpdateFocusedState()V

    .line 760
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 342
    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 345
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 347
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 352
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCancelBtnVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 839
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelArea:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 840
    return-void

    .line 839
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCancelDividerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 857
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 858
    return-void
.end method

.method public setCancelDividerBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 854
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 843
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 844
    return-void
.end method

.method public setCancelTextViewColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    :cond_0
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onCloseClicked()V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 446
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    .line 449
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 450
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 311
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 325
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 517
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    .line 518
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestLayout()V

    .line 519
    return-void
.end method

.method public setOnCloseListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    .prologue
    .line 376
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    .line 377
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 383
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 384
    return-void
.end method

.method public setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .prologue
    .line 369
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 370
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 393
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 394
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 411
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 414
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSubmitQuery()V

    .line 417
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 424
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 425
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    .line 426
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryRefinement:Z

    .line 503
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    .line 485
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 486
    return-void
.end method

.method public setTotalTextHint(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 710
    return-void
.end method
