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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

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
    .locals 5

    .prologue
    .line 70
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    if-ltz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

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

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->bindRightWidget()V

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcn/nubia/commonui/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v0, Lcn/nubia/commonui/R$id;->top_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightLayout(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "rigthWidget"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 60
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidget:I

    .line 61
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method public setRightView(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightWidgetView:Landroid/view/View;

    .line 66
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->mRightParentListener:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method
