.class public Lcn/nubia/commonui/widget/NubiaPreferenceCategory;
.super Landroid/preference/PreferenceGroup;
.source "NubiaPreferenceCategory.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mRightParent:Landroid/widget/LinearLayout;

.field private mRightParentListener:Landroid/view/View$OnClickListener;

.field private mRightWidget:I

.field private mRightWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    .line 18
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    .line 20
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->getContext()Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->setSelectable(Z)V

    .line 39
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_preferencecategory:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->setLayoutResource(I)V

    .line 40
    return-void
.end method

.method private bindRightWidget()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    if-ltz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onBindView(Landroid/view/View;)V

    .line 45
    sget v0, Lcn/nubia/commonui/R$id;->nubia_preference_category_right_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->bindRightWidget()V

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setRightLayout(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    .line 58
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method public setRightView(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method
