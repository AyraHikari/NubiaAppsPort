.class public Lcn/nubia/notepad/view/NotepadListMoveDialogListView;
.super Landroid/widget/ListView;
.source "NotepadListMoveDialogListView.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 9
    const/16 v0, 0x360

    iput v0, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/16 v0, 0x360

    iput v0, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/16 v0, 0x360

    iput v0, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 30
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 32
    .local v1, "heightSize":I
    iget v3, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    if-gt v1, v3, :cond_0

    .line 33
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 34
    .local v2, "maxHeightMeasureSpec":I
    invoke-super {p0, p1, v2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 35
    return-void

    .line 32
    .end local v2    # "maxHeightMeasureSpec":I
    :cond_0
    iget v1, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    goto :goto_0
.end method

.method public setListViewMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 24
    iput p1, p0, Lcn/nubia/notepad/view/NotepadListMoveDialogListView;->mMaxHeight:I

    .line 25
    return-void
.end method
