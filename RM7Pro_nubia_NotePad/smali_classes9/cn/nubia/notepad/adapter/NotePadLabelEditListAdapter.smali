.class public Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotePadLabelEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLabelSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "holder":Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 63
    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f03002a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;

    .end local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    invoke-direct {v0, p0, p2}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;Landroid/view/View;)V

    .line 65
    .restart local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 82
    :cond_0
    :goto_1
    return-object p2

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    check-cast v0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v0}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->access$000(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v2}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v2}, Lcn/nubia/notepad/utils/NotesLabelData;->getmCount()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v2}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v1

    .line 76
    .local v1, "id":I
    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-static {v0}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->access$100(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-static {v0}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->access$100(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSelectSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->mSelectedLabelSet:Ljava/util/HashSet;

    .line 41
    return-void
.end method
