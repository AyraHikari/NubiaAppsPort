.class public Lcn/nubia/calendar/ui_component/view/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mButton:Landroid/widget/ImageButton;

.field private mCollapseDrawable:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mExpandDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxCollapsedLines:I

.field private mRelayout:Z

.field mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    .line 42
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    .line 47
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    .line 52
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->init()V

    .line 53
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f11018b

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f11018c

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    .line 113
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 128
    const-string v0, ""

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method init()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    .line 58
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    .line 71
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mExpandDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 73
    :cond_3
    const v0, 0x7fffffff

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 79
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    .line 87
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 94
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    if-le v0, v1, :cond_1

    .line 100
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mCollapsed:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mMaxCollapsedLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mRelayout:Z

    .line 118
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->findViews()V

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "trimmedText":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/ui_component/view/ExpandableTextView;->setVisibility(I)V

    .line 124
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
