.class public Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;
.super Landroid/widget/PopupWindow;
.source "NotePadLabelPopupWindow.java"


# static fields
.field private static final LABEL_DROP_DOWN_Y:I = -0x2d


# instance fields
.field private height:I

.field private isHomePage:Z

.field private mAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsLeftHandMode:Z

.field private mLastHorizontalLine:Landroid/view/View;

.field private mLeftBottomView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMarginBottom:I

.field private mMiddleBottomView:Landroid/view/View;

.field private mRightBottomView:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private maxItemCount:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x2

    .line 42
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 37
    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->width:I

    .line 38
    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->height:I

    .line 43
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHomePage"    # Z

    .prologue
    const/4 v0, -0x2

    .line 53
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 37
    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->width:I

    .line 38
    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->height:I

    .line 54
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean p2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    .line 56
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->initView()V

    .line 57
    invoke-direct {p0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->initPopouWindow()V

    .line 58
    return-void
.end method

.method private initPopouWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setContentView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, v1}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setFocusable(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setTouchable(Z)V

    .line 111
    invoke-virtual {p0, v1}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setOutsideTouchable(Z)V

    .line 112
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->width:I

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setWidth(I)V

    .line 114
    iget v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->height:I

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setHeight(I)V

    .line 115
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f0c007c

    const v5, 0x7f0201e3

    const v4, 0x7f0201e2

    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLastHorizontalLine:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLeftBottomView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRightBottomView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mMiddleBottomView:Landroid/view/View;

    .line 69
    iget-boolean v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "xuxiaokun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is home page1?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->width:I

    .line 74
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->maxItemCount:I

    .line 75
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLeftBottomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 83
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLastHorizontalLine:Landroid/view/View;

    .line 84
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mMarginBottom:I

    .line 105
    return-void

    .line 87
    :cond_0
    const-string v0, "xuxiaokun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is home page2?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRootView:Landroid/view/View;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->width:I

    .line 91
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->maxItemCount:I

    .line 92
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mMiddleBottomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLastHorizontalLine:Landroid/view/View;

    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setListAdapter(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLastHorizontalLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .line 176
    return-void
.end method

.method public setOnClickListenerForLeftBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mLeftBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public setOnClickListenerForMiddleBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mMiddleBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method public setOnClickListenerForRightBottomTitle(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public setOnItemClickListenerForListView(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method

.method public setOnItemLongClickListenerForListView(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    return-void
.end method

.method public setRightBottomEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, -0x2d

    .line 184
    iget-object v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    invoke-virtual {v3}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->getCount()I

    move-result v3

    iget v4, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->maxItemCount:I

    if-le v3, v4, :cond_0

    .line 185
    iget-object v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 187
    .local v0, "bottomLayoutHegiht":I
    iget-object v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 189
    .local v2, "listItemHeight":I
    iget-object v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 191
    .local v1, "freeTopHegiht":I
    iget v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->maxItemCount:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setHeight(I)V

    .line 195
    .end local v0    # "bottomLayoutHegiht":I
    .end local v1    # "freeTopHegiht":I
    .end local v2    # "listItemHeight":I
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcn/nubia/notepad/utils/Util;->isViewRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v3, v5}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 201
    :goto_1
    return-void

    .line 193
    :cond_0
    iget v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->height:I

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->setHeight(I)V

    goto :goto_0

    .line 197
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->isHomePage:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v3, v5}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_1
.end method
