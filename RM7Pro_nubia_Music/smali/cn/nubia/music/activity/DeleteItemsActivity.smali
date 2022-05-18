.class public Lcn/nubia/music/activity/DeleteItemsActivity;
.super Landroid/app/Activity;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcn/nubia/music/app/listener/IDeleteMusicCallBack;


# instance fields
.field private del_item1:Landroid/widget/TextView;

.field private del_item2:Landroid/widget/TextView;

.field private mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasCheckBox:Z

.field private mIsDel:Z

.field private mIsFav:Z

.field private mItemList:[J

.field private mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mPlayListId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsDel:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mHasCheckBox:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsFav:Z

    .line 178
    new-instance v0, Lcn/nubia/music/activity/DeleteItemsActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/DeleteItemsActivity$5;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/DeleteItemsActivity;)[J
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mItemList:[J

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/DeleteItemsActivity;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsDel:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/DeleteItemsActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->createProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/DeleteItemsActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPlayListId:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/DeleteItemsActivity;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsFav:Z

    return v0
.end method

.method private createProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 151
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    .line 152
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 154
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 157
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 189
    invoke-virtual {p0, v0, v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->overridePendingTransition(II)V

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->setVolumeControlStream(I)V

    .line 56
    const-string v0, "layout_inflater"

    .line 57
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    const v1, 0x7f030029

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mView:Landroid/view/View;

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item1:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mView:Landroid/view/View;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item2:Landroid/widget/TextView;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mItemList:[J

    .line 66
    invoke-virtual {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hascheckbox"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "hascheckbox"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mHasCheckBox:Z

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "playlistid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v2, "playlistid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPlayListId:I

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFav"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "isFav"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsFav:Z

    .line 76
    :cond_2
    iget-object v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b0049

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item1:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/activity/DeleteItemsActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/DeleteItemsActivity$1;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->del_item2:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/music/activity/DeleteItemsActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/DeleteItemsActivity$2;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mView:Landroid/view/View;

    .line 132
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/activity/DeleteItemsActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/DeleteItemsActivity$3;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 141
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 142
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 144
    return-void
.end method

.method public onDelete(I)V
    .locals 2

    .prologue
    .line 167
    .line 168
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/DeleteItemsActivity$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/activity/DeleteItemsActivity$4;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mPDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 218
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mIsDel:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcn/nubia/music/activity/DeleteItemsActivity;->finish()V

    .line 163
    :cond_0
    return-void
.end method

.method public onfinish(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    .line 195
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/DeleteItemsActivity$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/activity/DeleteItemsActivity$6;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
