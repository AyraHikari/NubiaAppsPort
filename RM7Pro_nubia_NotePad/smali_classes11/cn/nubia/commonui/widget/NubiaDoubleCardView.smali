.class public Lcn/nubia/commonui/widget/NubiaDoubleCardView;
.super Landroid/widget/LinearLayout;
.source "NubiaDoubleCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private final PhoneConstants_SUB1:I

.field private final PhoneConstants_SUB2:I

.field private mCard1View:Landroid/widget/ImageView;

.field private mCard2View:Landroid/widget/ImageView;

.field private mCheckedItem:I

.field private mDoubleCardView:Landroid/view/View;

.field protected mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB1:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB2:I

    .line 112
    new-instance v0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;-><init>(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    .line 30
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB1:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB2:I

    .line 112
    new-instance v0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;-><init>(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    .line 35
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB1:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->PhoneConstants_SUB2:I

    .line 112
    new-instance v0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;-><init>(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    .line 40
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    return v0
.end method

.method private initCheckdItem()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    .line 62
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->setCardInUseDefault()V

    .line 63
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_double_card_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_card1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_card2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mDoubleCardView:Landroid/view/View;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method private updateCardIndicationDefault()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card1_secondary:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card2_secondary:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public final getCardInUse()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->initView()V

    .line 45
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->initCheckdItem()V

    .line 46
    return-void
.end method

.method public final setCardInUse(I)V
    .locals 3
    .param p1, "useItem"    # I

    .prologue
    const/4 v1, -0x1

    .line 67
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal useItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    if-eq v0, p1, :cond_1

    .line 73
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    .line 76
    :cond_1
    if-ne p1, v1, :cond_2

    .line 77
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->updateCardIndicationDefault()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->updateCardIndication()V

    goto :goto_0
.end method

.method public final setCardInUseDefault()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->updateCardIndicationDefault()V

    .line 85
    return-void
.end method

.method public final setOnCardClickeListener(Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    .line 135
    return-void
.end method

.method protected updateCardIndication()V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card1_primary:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card2_secondary:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCheckedItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard1View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card1_secondary:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mCard2View:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_ic_double_card_card2_primary:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
