.class public Lcn/nubia/toolbar/TopBarTitleLayout;
.super Landroid/widget/RelativeLayout;
.source "TopBarTitleLayout.java"


# instance fields
.field private mCancelText:Landroid/widget/TextView;

.field private mConfirmText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomImage:Landroid/widget/ImageView;

.field private mFeatureIcon:Landroid/widget/ImageView;

.field private mMidSubTitleText:Landroid/widget/TextView;

.field private mMidTitleText:Landroid/widget/TextView;

.field private mNavigationIcon:Landroid/widget/ImageView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static setImageView(Landroid/widget/ImageView;ILandroid/view/View$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 181
    new-instance v0, Lcn/nubia/toolbar/TopBarTitleLayout$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcn/nubia/toolbar/TopBarTitleLayout$1;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/Context;Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 222
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 225
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method private static setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCustomImageView()Landroid/widget/ImageView;
    .locals 1

    .line 176
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCustomImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mNavigationIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 168
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public resetVisibility()V
    .locals 2

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0, v0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNoMidTitleText(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0, v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setCustomImage(ILandroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0, v1, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setFeatureIcon(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancelText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f090199

    .line 46
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancelTextColor(Z)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f090199

    .line 114
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCancelText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f0600f5

    goto :goto_0

    :cond_1
    const p1, 0x7f06007c

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mConfirmText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f09019a

    .line 54
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mConfirmText:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mConfirmText:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomImage(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCustomImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f09019b

    .line 100
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCustomImage:Landroid/widget/ImageView;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mCustomImage:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setImageView(Landroid/widget/ImageView;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFeatureIcon(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mFeatureIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f09019c

    .line 130
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mFeatureIcon:Landroid/widget/ImageView;

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mFeatureIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setImageView(Landroid/widget/ImageView;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMidSubTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidSubTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f09019f

    .line 84
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidSubTitleText:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidSubTitleText:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMidTextCenter(Z)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 231
    iget-object v1, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f09019d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 234
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    invoke-virtual {p0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07023e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p1, 0x3c

    .line 238
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 239
    invoke-virtual {p0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07023d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public setMidTitleText(Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f09019d

    .line 76
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMidTitleTextColor(Z)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f09019d

    .line 122
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06002e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setNavigationIcon(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mNavigationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0901a0

    .line 107
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mNavigationIcon:Landroid/widget/ImageView;

    .line 109
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mNavigationIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setImageView(Landroid/widget/ImageView;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNoMidTitleText(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f09019d

    .line 92
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->setMidTextCenter(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mMidTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0901a1

    .line 62
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0901a1

    .line 69
    invoke-virtual {p0, v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/toolbar/TopBarTitleLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
