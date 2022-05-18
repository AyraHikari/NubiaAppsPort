.class public Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;,
        Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

.field private final mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v0, "NubiaWidget"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 203
    sget v0, Lcn/nubia/commonui/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    .line 93
    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 98
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    .line 100
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 101
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 105
    iput v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    .line 116
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    .line 117
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;

    .line 118
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;

    .line 119
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 230
    sget-object v0, Lcn/nubia/commonui/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Lcn/nubia/commonui/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 234
    sget v1, Lcn/nubia/commonui/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 236
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 237
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mLayoutDirection:I

    .line 247
    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1049
    .line 1051
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    if-nez v0, :cond_5

    .line 1052
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1060
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$2;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1070
    new-instance v4, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {v4, v5, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 1071
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1075
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1076
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setFocusable(Z)V

    .line 1077
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setFocusableInTouchMode(Z)V

    .line 1078
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    new-instance v4, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$3;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1094
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mScrollListener:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$d;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1096
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 1102
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1103
    if-eqz v6, :cond_b

    .line 1106
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1109
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1113
    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v5, :pswitch_data_0

    .line 1125
    const-string v0, "NubiaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_1
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1133
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1135
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move-object v1, v4

    .line 1142
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    .line 1157
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_6

    .line 1159
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1160
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 1164
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_9

    .line 1165
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v7, v0

    .line 1172
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1173
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1174
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1175
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1174
    invoke-virtual {v0, v1, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    .line 1177
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_7

    .line 1178
    :cond_3
    add-int v0, v4, v7

    .line 1206
    :goto_5
    return v0

    :cond_4
    move v0, v2

    .line 1070
    goto/16 :goto_0

    .line 1115
    :pswitch_0
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1120
    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1121
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1144
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1145
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1146
    if-eqz v1, :cond_a

    .line 1148
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move v6, v0

    goto :goto_3

    .line 1168
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_4

    .line 1182
    :cond_7
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v0, :pswitch_data_1

    .line 1196
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1200
    :goto_6
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->measureHeightOfChildrenCompat(IIIII)I

    move-result v0

    .line 1204
    if-lez v0, :cond_8

    add-int/2addr v6, v7

    .line 1206
    :cond_8
    add-int/2addr v0, v6

    goto :goto_5

    .line 1184
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1185
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    .line 1184
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 1190
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1191
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    .line 1190
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    :cond_9
    move v7, v0

    goto/16 :goto_4

    :cond_a
    move v6, v2

    goto/16 :goto_3

    :cond_b
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1182
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isConfirmKey(I)Z
    .locals 1

    .prologue
    .line 1767
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 690
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 691
    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5

    .prologue
    .line 1771
    sget-object v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1773
    :try_start_0
    sget-object v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    const-string v0, "NubiaWidget"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 748
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;Z)Z

    .line 752
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->removePromptView()V

    .line 673
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mResizePopupRunnable:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 798
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 821
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const-wide/high16 v0, -0x8000000000000000L

    .line 824
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const/4 v0, -0x1

    .line 811
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    .line 837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 870
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 876
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 877
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 878
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 879
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItemPosition()I

    move-result v5

    .line 882
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 884
    :goto_0
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 887
    const v4, 0x7fffffff

    .line 888
    const/high16 v3, -0x80000000

    .line 890
    if-eqz v6, :cond_1

    .line 891
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    .line 892
    if-eqz v3, :cond_5

    move v4, v2

    .line 894
    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 898
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-ne p1, v7, :cond_2

    if-le v5, v4, :cond_3

    :cond_2
    if-nez v0, :cond_7

    if-ne p1, v8, :cond_7

    if-lt v5, v3, :cond_7

    .line 902
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->clearListSelection()V

    .line 903
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 904
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 950
    :goto_3
    :sswitch_0
    return v1

    :cond_4
    move v0, v2

    .line 882
    goto :goto_0

    .line 892
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 893
    invoke-virtual {v4, v2, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    .line 894
    :cond_6
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 895
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6, v2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->lookForSelectablePosition(IZ)I

    move-result v3

    goto :goto_2

    .line 909
    :cond_7
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-static {v6, v2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;Z)Z

    .line 912
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v6, p1, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 915
    if-eqz v6, :cond_9

    .line 918
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 923
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->requestFocusFromTouch()Z

    .line 924
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 926
    sparse-switch p1, :sswitch_data_0

    :cond_8
    move v1, v2

    .line 950
    goto :goto_3

    .line 936
    :cond_9
    if-eqz v0, :cond_a

    if-ne p1, v8, :cond_a

    .line 939
    if-ne v5, v3, :cond_8

    goto :goto_3

    .line 942
    :cond_a
    if-nez v0, :cond_8

    if-ne p1, v7, :cond_8

    if-ne v5, v4, :cond_8

    goto :goto_3

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 988
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 991
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 992
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 993
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 994
    if-eqz v1, :cond_0

    .line 995
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 998
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 999
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1000
    if-eqz v1, :cond_2

    .line 1001
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1003
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1004
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1009
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 964
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 966
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    .line 973
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 6

    .prologue
    .line 779
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 781
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 782
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 783
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 784
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 786
    :cond_0
    const/4 v0, 0x1

    .line 788
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 436
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 408
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .prologue
    .line 340
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 341
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .prologue
    .line 481
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    .line 482
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .prologue
    .line 325
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 326
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 530
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    .line 531
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .prologue
    .line 451
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 452
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    .prologue
    .line 855
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 856
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 383
    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .prologue
    .line 304
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 553
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptPosition:I

    .line 282
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->removePromptView()V

    .line 566
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 567
    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 570
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    .line 730
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 731
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->a(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;Z)Z

    .line 732
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setSelection(I)V

    .line 734
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 735
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setItemChecked(IZ)V

    .line 740
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 364
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .prologue
    .line 470
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 472
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    .line 499
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 584
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->buildDropDown()I

    move-result v5

    .line 589
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v2

    .line 591
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 592
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v4, v0, :cond_3

    move v4, v0

    .line 602
    :goto_0
    iget v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v6, v0, :cond_9

    .line 605
    if-eqz v2, :cond_5

    .line 606
    :goto_1
    if-eqz v2, :cond_7

    .line 607
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v6, v0, :cond_6

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 622
    :cond_0
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_2
    :goto_4
    return-void

    .line 596
    :cond_3
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v4, v7, :cond_4

    .line 597
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 599
    :cond_4
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_5
    move v5, v0

    .line 605
    goto :goto_1

    :cond_6
    move v0, v1

    .line 607
    goto :goto_2

    .line 611
    :cond_7
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_8

    move v2, v0

    :goto_5
    invoke-virtual {v6, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_5

    .line 616
    :cond_9
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-eq v0, v7, :cond_0

    .line 619
    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    .line 627
    :cond_a
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_d

    move v2, v0

    .line 637
    :goto_6
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v0, :cond_f

    move v4, v0

    .line 647
    :goto_7
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    invoke-direct {p0, v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 652
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_11

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mTouchInterceptor:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownList:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$a;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 659
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->clearListSelection()V

    .line 661
    :cond_c
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mHideSelector:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 630
    :cond_d
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v7, :cond_e

    .line 631
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    .line 633
    :cond_e
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_6

    .line 640
    :cond_f
    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v7, :cond_10

    .line 641
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    .line 643
    :cond_10
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v5, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_7

    :cond_11
    move v3, v1

    .line 652
    goto :goto_8
.end method
