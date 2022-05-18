.class Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .line 2688
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2697
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 2699
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2701
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3094
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3095
    const-class v1, Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3096
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2600(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3097
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 3099
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3102
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3103
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3104
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3107
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3108
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3109
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3111
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3112
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 3114
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3115
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    .line 3118
    iget p3, v3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, v3, Landroid/graphics/Rect;->left:I

    .line 3119
    iget p3, v3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, v3, Landroid/graphics/Rect;->top:I

    .line 3120
    iget p3, v3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, v3, Landroid/graphics/Rect;->right:I

    .line 3121
    iget p3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, v3, Landroid/graphics/Rect;->bottom:I

    .line 3123
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3125
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser()Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3128
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3129
    iget-object p4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p4, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 3130
    aget p4, p3, p4

    aget p3, p3, v2

    invoke-virtual {v3, p4, p3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p1, :cond_3

    .line 3133
    iget p1, v3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Rect;->left:I

    .line 3134
    iget p1, v3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Rect;->top:I

    .line 3135
    iget p1, v3, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 3136
    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 3138
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3140
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    const/16 p1, 0x40

    .line 3141
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3143
    :cond_4
    iget p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_5

    const/16 p1, 0x80

    .line 3144
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3146
    :cond_5
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3147
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_7

    :cond_6
    const/16 p1, 0x1000

    .line 3148
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3150
    :cond_7
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_9

    :cond_8
    const/16 p0, 0x2000

    .line 3151
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_9
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 3060
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3061
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3062
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3063
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3064
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3065
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 3066
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3067
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3068
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3069
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3070
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3071
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2500(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3072
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3074
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3075
    iget-object p4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p4, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 3076
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3077
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3079
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0x40

    .line 3080
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3082
    :cond_0
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    const/16 p1, 0x80

    .line 3083
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3085
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    .line 3086
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 3036
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    .line 3037
    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3038
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3039
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    .line 3040
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3042
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    .line 3043
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3045
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3046
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3047
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2300(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3048
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3050
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3051
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 3052
    aget p0, p1, p0

    const/4 p2, 0x1

    aget p1, p1, p2

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 3053
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2993
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2994
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2995
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2996
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2998
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 3003
    :pswitch_1
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 3004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 3005
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3006
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3008
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3011
    :cond_1
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 3012
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3013
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3014
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3016
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3022
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 3023
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3024
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3025
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 3027
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 2

    .line 3167
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3168
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2800(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3169
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2900(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I

    move-result v0

    .line 3171
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3172
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3100(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 3173
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    .line 3179
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3180
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2800(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3181
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2900(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I

    move-result v0

    .line 3183
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3184
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3100(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 3185
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$800(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    .line 3159
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 1

    .line 3163
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    .line 2976
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2977
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2978
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2979
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2980
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2981
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2982
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2983
    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2984
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1, p0, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 2964
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2000(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2965
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2967
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2968
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2969
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2970
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2731
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v1, 0x3

    .line 2714
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2715
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2716
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    .line 2712
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 2718
    :pswitch_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2719
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2720
    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2721
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2718
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v1, 0x1

    .line 2725
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2726
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2727
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2728
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2729
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v0

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 2723
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 2708
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2709
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2710
    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2708
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2740
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2760
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2755
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_1
    const/4 p1, 0x3

    .line 2744
    invoke-direct {p0, v0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x2

    .line 2746
    invoke-direct {p0, v0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x1

    .line 2748
    invoke-direct {p0, v0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eq p2, v7, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    return v5

    .line 2920
    :cond_0
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    .line 2921
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2922
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2925
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    return v4

    :cond_1
    return v5

    .line 2909
    :cond_2
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_3

    .line 2910
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2911
    invoke-virtual {p0, p1, v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2914
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    return v4

    :cond_3
    return v5

    .line 2899
    :cond_4
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v4, :cond_5

    move v5, v4

    .line 2901
    :cond_5
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2902
    invoke-virtual {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6
    return v5

    :pswitch_1
    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 2852
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 2815
    :pswitch_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2816
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2817
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_7
    return v5

    .line 2808
    :pswitch_3
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2809
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2810
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_8
    return v5

    .line 2841
    :cond_9
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 2842
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2843
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2846
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    .line 2830
    :cond_b
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 2831
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2832
    invoke-virtual {p0, p1, v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2835
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    .line 2823
    :cond_d
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2824
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    return v4

    :cond_e
    return v5

    :pswitch_4
    if-eq p2, v7, :cond_13

    if-eq p2, v3, :cond_11

    if-eq p2, v2, :cond_f

    return v5

    .line 2882
    :cond_f
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_10

    .line 2883
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2884
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2887
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p2

    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2888
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result p0

    .line 2887
    invoke-virtual {p1, v5, p2, p3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    return v4

    :cond_10
    return v5

    .line 2870
    :cond_11
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_12

    .line 2871
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2872
    invoke-virtual {p0, p1, v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2875
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result p2

    iget-object p3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2876
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBottom()I

    move-result p0

    .line 2875
    invoke-virtual {p1, v5, p2, p3, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    return v4

    :cond_12
    return v5

    .line 2861
    :cond_13
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2862
    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p2, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2863
    invoke-virtual {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14
    return v5

    :cond_15
    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_19

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_16

    .line 2934
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 2795
    :cond_16
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2796
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 2797
    :cond_17
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    return v4

    :cond_18
    return v5

    .line 2787
    :cond_19
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 2788
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1b

    .line 2789
    :cond_1a
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    return v4

    :cond_1b
    return v5

    .line 2779
    :cond_1c
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1d

    .line 2780
    iput v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2781
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->clearAccessibilityFocus()V

    return v4

    :cond_1d
    return v5

    .line 2771
    :cond_1e
    iget p2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1f

    .line 2772
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2773
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestAccessibilityFocus()Z

    return v4

    :cond_1f
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2941
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2943
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2942
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2948
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2952
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2954
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2953
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
