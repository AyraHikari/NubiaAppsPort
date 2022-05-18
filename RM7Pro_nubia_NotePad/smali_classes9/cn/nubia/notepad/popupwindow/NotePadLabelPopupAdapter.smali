.class public Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotePadLabelPopupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurLabelId:I

.field private mIsHomePage:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isHomePage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean p3, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mIsHomePage:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0d00c6

    const v4, 0x7f0d0009

    .line 53
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V

    .line 55
    .local v0, "viewHolder":Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;
    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v1, 0x7f0f00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleTextView:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0f00c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleCount:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0f00c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mChoiceImageView:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 84
    :cond_0
    :goto_1
    return-object p2

    .line 62
    .end local v0    # "viewHolder":Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;
    goto :goto_0

    .line 69
    :cond_2
    iget-object v2, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mCurLabelId:I

    iget-object v1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 72
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mChoiceImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mChoiceImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v1, v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->mTitleCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public setCurLabelId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 88
    iput p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->mCurLabelId:I

    .line 89
    return-void
.end method
