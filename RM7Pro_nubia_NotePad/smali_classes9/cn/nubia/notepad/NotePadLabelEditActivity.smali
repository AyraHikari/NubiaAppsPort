.class public Lcn/nubia/notepad/NotePadLabelEditActivity;
.super Lcn/nubia/notepad/NotePadActivity;
.source "NotePadLabelEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;


# instance fields
.field private mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

.field private mActionModeCloseBtn:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurLableId:I

.field private mCurLableName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDelLabel:Landroid/view/MenuItem;

.field private mMenuRenameLabel:Landroid/view/MenuItem;

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSelectAllBtn:Landroid/widget/TextView;

.field private mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectTitle:Landroid/widget/TextView;

.field private mSelectedLabelIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;-><init>()V

    .line 375
    new-instance v0, Lcn/nubia/notepad/NotePadLabelEditActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadLabelEditActivity$4;-><init>(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectAllListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadLabelEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadLabelEditActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NotePadLabelEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadLabelEditActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NotePadLabelEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadLabelEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadLabelEditActivity;->renameLabel(Ljava/lang/String;)V

    return-void
.end method

.method private checkIsLabelExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "labelName"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 303
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 307
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const/4 v1, 0x1

    .line 311
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDeleteItemsDialog()V
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f03001b

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 177
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0034

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NotePadLabelEditActivity$1;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadLabelEditActivity$1;-><init>(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    .line 177
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 185
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0048

    .line 186
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NotePadLabelEditActivity$2;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadLabelEditActivity$2;-><init>(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    .line 185
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 195
    .local v1, "mAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    const/4 v2, -0x1

    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 196
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 197
    return-void
.end method

.method private deleteSelectedItems()V
    .locals 6

    .prologue
    .line 200
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    if-nez v3, :cond_0

    .line 201
    new-instance v3, Lcn/nubia/notepad/utils/NotesData;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 204
    :cond_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/utils/NotesData;->deleteNoteLabelData(Ljava/util/HashSet;)V

    .line 205
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v4}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 207
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->finishCurActivity()V

    .line 223
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "removeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesLabelData;>;"
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 212
    .local v1, "id":I
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 213
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 214
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    .end local v1    # "id":I
    :cond_4
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v3}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->notifyDataSetChanged()V

    .line 221
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateSelectTitle()V

    goto :goto_0
.end method

.method private finishCurActivity()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "delete_label_id"

    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 317
    const-string v1, "label_name"

    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mCurLableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->finish()V

    .line 320
    return-void
.end method

.method private getSelectLableName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 288
    const-string v2, ""

    .line 298
    :goto_0
    return-object v2

    .line 291
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    .local v1, "labelId":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 293
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 294
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 298
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private hasSelectAll()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelIds:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    .line 100
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->setSelectSet(Ljava/util/HashSet;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 105
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mListView:Landroid/widget/ListView;

    .line 86
    const v0, 0x7f0f00b7

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectAllBtn:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectAllBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectAllBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    new-instance v0, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;-><init>(Landroid/content/Context;Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    .line 91
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 92
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setSelectButtonListener(Landroid/view/View$OnClickListener;)Z

    .line 93
    return-void
.end method

.method private renameLabel()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcn/nubia/notepad/NotePadLabelEditActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadLabelEditActivity$3;-><init>(Lcn/nubia/notepad/NotePadLabelEditActivity;)V

    .line 237
    .local v0, "inputListener":Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;
    new-instance v1, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;

    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getSelectLableName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V

    .line 238
    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->show()V

    .line 239
    return-void
.end method

.method private renameLabel(Ljava/lang/String;)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getSelectLableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadLabelEditActivity;->checkIsLabelExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006d

    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 252
    .local v1, "labelId":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v2, v1, p1}, Lcn/nubia/notepad/utils/NotesData;->updateNoteLabelName(ILjava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 254
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 255
    invoke-virtual {v0, p1}, Lcn/nubia/notepad/utils/NotesLabelData;->setmTitle(Ljava/lang/String;)V

    .line 259
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :cond_4
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v2}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->notifyDataSetChanged()V

    .line 261
    iget v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mCurLableId:I

    if-ne v1, v2, :cond_0

    .line 262
    iput-object p1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mCurLableName:Ljava/lang/String;

    goto :goto_0
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 267
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 268
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v2}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v2}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v0

    .line 270
    .local v0, "id":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method private selectLabelOrNot(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    const v2, 0x7f0f00b4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 120
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v2}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v1

    .line 121
    .local v1, "id":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    :goto_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateMenuStatus()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateSelectTitle()V

    .line 131
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v5, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v5}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v5

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setSelectedTextView(Z)V

    .line 132
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 131
    goto :goto_1
.end method

.method private selectNone()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 276
    return-void
.end method

.method private setSelectedTextView(Z)V
    .locals 2
    .param p1, "selectAll"    # Z

    .prologue
    .line 368
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 370
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    :goto_0
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 373
    :cond_0
    return-void

    .line 369
    .end local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMenuStatus()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mMenuDelLabel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mMenuRenameLabel:Landroid/view/MenuItem;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v1, v2

    .line 136
    goto :goto_1
.end method

.method private updateSelectTitle()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setSelectedNumText(I)V

    .line 280
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 359
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->createDeleteItemsDialog()V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->renameLabel()V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x7f0f019a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->finishCurActivity()V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 145
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectAllOrNone()V

    goto :goto_0

    .line 149
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->finishCurActivity()V

    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x7f0f0032 -> :sswitch_1
        0x7f0f00b7 -> :sswitch_0
        0x7f0f00f0 -> :sswitch_1
        0x7f0f00f1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setContentView(I)V

    .line 75
    iput-object p0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LabelList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_label_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mCurLableId:I

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    .line 80
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->initViews()V

    .line 81
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->initData()V

    .line 82
    return-void
.end method

.method public onCreateActionMode(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 349
    const v0, 0x7f0f019a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mMenuDelLabel:Landroid/view/MenuItem;

    .line 350
    const v0, 0x7f0f019b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mMenuRenameLabel:Landroid/view/MenuItem;

    .line 351
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateMenuStatus()V

    .line 352
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateSelectTitle()V

    .line 353
    return-void
.end method

.method public onDestroyActionMode()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->finishCurActivity()V

    .line 339
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3, p2}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectLabelOrNot(ILandroid/view/View;)V

    .line 116
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3, p2}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectLabelOrNot(ILandroid/view/View;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionEnd(Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onPause()V

    .line 166
    return-void
.end method

.method public onPrepareActionMode()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionStart(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setSelectedTextView(Z)V

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAllOrNone()V
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->hasSelectAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectNone()V

    .line 330
    :goto_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateSelectTitle()V

    .line 331
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->notifyDataSetChanged()V

    .line 332
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->updateMenuStatus()V

    .line 333
    iget-object v0, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mSelectedLabelSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadLabelEditActivity;->mLabelListAdapter:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->setSelectedTextView(Z)V

    .line 334
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadLabelEditActivity;->selectAll()V

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
