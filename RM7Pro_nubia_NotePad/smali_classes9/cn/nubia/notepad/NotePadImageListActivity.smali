.class public Lcn/nubia/notepad/NotePadImageListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "NotePadImageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;
    }
.end annotation


# static fields
.field private static final NOTEPAD_SCAN_IMAGE_COMPLETE:I = 0x1


# instance fields
.field private final NOTEPAD_DEFAULT_IMAGE:Ljava/lang/String;

.field private final NOTEPAD_FILTER_COLOR:Ljava/lang/String;

.field private final NOTEPAD_IMAGE_SORT_ORDER_DEFAULT:Ljava/lang/String;

.field private final NOTEPAD_IMAGE_SORT_ORDER_REVERT:Ljava/lang/String;

.field private final PICTURE_MIN_SIZE:I

.field private mAdapter:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

.field private mBucketId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mGridView:Lcn/nubia/notepad/view/NotePadGridView;

.field private mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImgLimitCount:I

.field private mIsSingleReverseOpen:Z

.field private mLoadingView:Landroid/view/View;

.field private mNoteTitle:Landroid/widget/TextView;

.field private mSelectCountTxt:Landroid/widget/TextView;

.field private mSelectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleReverseObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->PICTURE_MIN_SIZE:I

    .line 49
    const-string v0, "#77000000"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->NOTEPAD_FILTER_COLOR:Ljava/lang/String;

    .line 50
    const-string v0, "default_image"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->NOTEPAD_DEFAULT_IMAGE:Ljava/lang/String;

    .line 52
    const-string v0, "date_modified DESC"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->NOTEPAD_IMAGE_SORT_ORDER_DEFAULT:Ljava/lang/String;

    .line 53
    const-string v0, "date_modified ASC"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->NOTEPAD_IMAGE_SORT_ORDER_REVERT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadImageListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/notepad/NotePadImageListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NotePadImageListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/view/NotePadGridView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->startQueryImageList()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->parseCursorInBackground()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/NotePadImageListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/adapter/NotePadImageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->setSelection()V

    return-void
.end method

.method private checkCtaAndPermissions()V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;-><init>(Landroid/app/Activity;)V

    .line 358
    .local v0, "ctaPermissionUtils":Lcn/nubia/notepad/utils/CtaPermissionUtils;
    const-string v1, "Storage"

    new-instance v2, Lcn/nubia/notepad/NotePadImageListActivity$4;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadImageListActivity$4;-><init>(Lcn/nubia/notepad/NotePadImageListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    .line 370
    return-void
.end method

.method private getPictureInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 241
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 242
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 245
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_size > 1000 AND (mime_type = \'image/jpeg\' OR mime_type = \'image/jpg\' OR mime_type = \'image/png\') AND bucket_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    if-eqz v5, :cond_0

    const-string v5, "date_modified ASC"

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 261
    :goto_1
    return-object v0

    .line 251
    :cond_0
    const-string v5, "date_modified DESC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v6

    .line 259
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v7

    .line 261
    goto :goto_1
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    .line 97
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 99
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 101
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    .line 106
    :cond_0
    const-string v1, "bucket_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mBucketId:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    .line 110
    :cond_1
    const-string v1, "notepad_image_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImgLimitCount:I

    .line 112
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    .line 114
    new-instance v1, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    .line 116
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    invoke-virtual {v1, p0}, Lcn/nubia/notepad/view/NotePadGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadGridView;->setSingleReverseOpen(Z)V

    .line 120
    new-instance v1, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;-><init>(Lcn/nubia/notepad/NotePadImageListActivity;)V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    .line 122
    new-instance v1, Lcn/nubia/notepad/NotePadImageListActivity$1;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/notepad/NotePadImageListActivity$1;-><init>(Lcn/nubia/notepad/NotePadImageListActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    .line 133
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->updateSelectCount()V

    .line 134
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    .line 87
    iput-object p0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    .line 88
    const v0, 0x7f0f00ab

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadGridView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    .line 89
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mLoadingView:Landroid/view/View;

    .line 90
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mNoteTitle:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method private parseCursorInBackground()V
    .locals 5

    .prologue
    .line 211
    iget-object v4, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mBucketId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcn/nubia/notepad/NotePadImageListActivity;->getPictureInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 212
    .local v2, "mCursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 217
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const-string v4, "_data"

    .line 219
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 218
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 222
    .local v0, "data":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .local v3, "parentFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 232
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v2, 0x0

    .line 237
    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 235
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v2, 0x0

    .line 237
    throw v4

    .line 235
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v2, 0x0

    .line 237
    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/utils/Util;->SINGLE_REVERSE_SWITCH_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 327
    return-void
.end method

.method private setSelection()V
    .locals 4

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "selection":I
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mIsSingleReverseOpen:Z

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    invoke-virtual {v2}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 314
    :goto_0
    move v0, v1

    .line 315
    .local v0, "select":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    new-instance v3, Lcn/nubia/notepad/NotePadImageListActivity$3;

    invoke-direct {v3, p0, v0}, Lcn/nubia/notepad/NotePadImageListActivity$3;-><init>(Lcn/nubia/notepad/NotePadImageListActivity;I)V

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void

    .line 312
    .end local v0    # "select":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startInsertImage()V
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0062

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "selectedImages"

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 275
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/notepad/NotePadImageListActivity;->setResult(ILandroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    goto :goto_0
.end method

.method private startQueryImageList()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadGridView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NotePadImageListActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadImageListActivity$2;-><init>(Lcn/nubia/notepad/NotePadImageListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    return-void
.end method

.method private updateSelectCount()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mNoteTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    .line 188
    return-void
.end method

.method public OnPositiveButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->startInsertImage()V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 79
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageListActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->initData()V

    .line 82
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->registerContentObserver()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mHandler:Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->unRegisterContentObserver()V

    .line 144
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 145
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 149
    const v2, 0x7f0f00b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    .local v1, "image":Landroid/widget/ImageView;
    const v2, 0x7f0f00b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 151
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 173
    :goto_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->updateSelectCount()V

    .line 174
    :cond_0
    :goto_1
    return-void

    .line 156
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 159
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImgLimitCount:I

    if-lt v2, v3, :cond_3

    .line 160
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005f

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 168
    :cond_3
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mSelectedImages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageListActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    const-string v2, "#77000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const/4 v0, 0x1

    .line 338
    .local v0, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, p3, v2

    .line 339
    .local v1, "result":I
    if-eqz v1, :cond_2

    .line 340
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    .line 346
    .end local v1    # "result":I
    :cond_1
    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->startQueryImageList()V

    goto :goto_0

    .line 338
    .restart local v1    # "result":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageListActivity;->checkCtaAndPermissions()V

    .line 180
    return-void
.end method
