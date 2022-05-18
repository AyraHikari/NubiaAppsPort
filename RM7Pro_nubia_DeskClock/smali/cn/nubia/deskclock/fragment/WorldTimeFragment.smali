.class public Lcn/nubia/deskclock/fragment/WorldTimeFragment;
.super Lcn/nubia/deskclock/fragment/BaseFragment;
.source "WorldTimeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WorldTimeFragment"

.field private static final WORLDTIME_HANDLER_DO_UPDATEDAY:I = 0x25c


# instance fields
.field private mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

.field private mAddButton:Landroid/widget/TextView;

.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/Button;

.field private mEnabelDeleteButton:Z

.field private mIsInActionMode:Z

.field private mLastClickTime:J

.field private mSelectCount:Landroid/widget/TextView;

.field private mSelectImageView:Landroid/widget/ImageView;

.field private mWorldTimeHandler:Landroid/os/Handler;

.field private mWorldTimeLv:Landroid/widget/ListView;

.field private mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mLastClickTime:J

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mEnabelDeleteButton:Z

    .line 357
    new-instance v0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;-><init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/fragment/WorldTimeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mEnabelDeleteButton:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->seletAllCities()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/fragment/WorldTimeFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->deleteCity(Landroid/content/Context;)V

    return-void
.end method

.method private addNewCity(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "WorldTimeFragment"

    const-string v2, "addNewCity"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method private deleteCity(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mEnabelDeleteButton:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->deleteSelection(Landroid/content/Context;)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mEnabelDeleteButton:Z

    .line 317
    return-void
.end method

.method private seletAllCities()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->isSelectAll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->unSelectall()V

    .line 380
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0200a7

    .line 381
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    .line 388
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->updateActionModeViews()V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0200a9

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->selectAll()V

    goto :goto_1
.end method

.method private setWorldTimeTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/model/WorldTimeModel;->setDeleteStateString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateActionModeViews()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 235
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getSelectCount()I

    move-result v1

    .line 239
    .local v1, "size":I
    if-lez v1, :cond_3

    .line 240
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :cond_2
    :goto_1
    const v2, 0x7f0d00e1

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->setWorldTimeTitle(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->isSelectAll()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0200a7

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_3
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 253
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0200a9

    .line 254
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 253
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public createActionMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 180
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v4

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 185
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "custom":Landroid/view/View;
    iput-boolean v4, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    .line 187
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/DeskClock;->setActionCustomView(Landroid/view/View;)V

    .line 188
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    .line 189
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    iget-boolean v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->setInActionMode(Z)V

    .line 190
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->unSelectall()V

    .line 191
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v2, v4}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 195
    :cond_2
    const v2, 0x7f120109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    .line 196
    const v2, 0x7f120106

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mCancelImageView:Landroid/widget/ImageView;

    .line 197
    const v2, 0x7f12010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    .line 198
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mCancelImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mDeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public deleteSelection(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getSelectCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 324
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "contentView":Landroid/view/View;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcn/nubia/deskclock/fragment/WorldTimeFragment$3;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment$3;-><init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    .line 327
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;-><init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    .line 333
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 344
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 345
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 346
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    new-instance v3, Lcn/nubia/deskclock/fragment/WorldTimeFragment$4;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment$4;-><init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 352
    const v2, 0x7f1200e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public destroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    .line 206
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v0, v2}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->setInActionMode(Z)V

    .line 211
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    .line 214
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->removeActionCustomView()V

    .line 215
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->setWorldTimeTitle(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public doBackPressed()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->destroyActionMode()V

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMotionContentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->addNewCity(Landroid/content/Context;)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x7f1200af
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 107
    const v2, 0x7f040082

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "view":Landroid/view/View;
    const-string v2, "WorldTimeFragment"

    const-string v3, "onCreateView: "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getWorldTimeModel()Lcn/nubia/deskclock/model/WorldTimeModel;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    .line 111
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getWorldTimeHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/DeskClock;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 115
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/DeskClock;->getMainBottom(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "mButtonView":Landroid/view/View;
    const v2, 0x7f120177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    .line 117
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 119
    const v2, 0x7f1200af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAddButton:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAddButton:Landroid/widget/TextView;

    new-instance v3, Lcn/nubia/deskclock/fragment/WorldTimeFragment$1;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment$1;-><init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v2, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .line 134
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 138
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAddButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .line 158
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroyView()V

    .line 163
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->unRegisterReceiver()V

    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->releaseHandle()V

    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->clearParams()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    .line 173
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "itemView"    # Landroid/view/View;
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
    .line 269
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mIsInActionMode:Z

    if-eqz v3, :cond_2

    .line 270
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v3, :cond_0

    .line 288
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3, p3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 275
    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 276
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3, v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->addDeletedCity(Lcn/nubia/deskclock/model/City;)V

    .line 277
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->updateActionModeViews()V

    .line 278
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    .line 280
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->updateActionModeViews()V

    goto :goto_0

    .line 282
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string v3, "WorldTimeFragment"

    const-string v4, "onItemClick"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "modify_city"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v3, "position"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "itemView"    # Landroid/view/View;
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 220
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 223
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2, p3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 226
    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 227
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->createActionMode()Z

    .line 228
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->addDeletedCity(Lcn/nubia/deskclock/model/City;)V

    .line 229
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->updateActionModeViews()V

    .line 230
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onPageChanged(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onPause()V

    .line 90
    const-string v0, "WorldTimeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_0

    .line 94
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onResume()V

    .line 77
    const-string v0, "WorldTimeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->reloadData(Landroid/content/Context;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 85
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onStop()V

    .line 99
    const-string v0, "WorldTimeFragment"

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mWorldTimeHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->setUserVisibleHint(Z)V

    .line 146
    const-string v0, "WorldTimeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [setUserVisibleHint] isVisibleToUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mAdapter:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    if-eqz v0, :cond_0

    .line 150
    :cond_0
    return-void
.end method
