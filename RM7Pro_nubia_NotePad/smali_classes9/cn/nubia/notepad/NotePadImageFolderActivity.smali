.class public Lcn/nubia/notepad/NotePadImageFolderActivity;
.super Lcn/nubia/notepad/NotePadActivity;
.source "NotePadImageFolderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;
    }
.end annotation


# static fields
.field private static final MSG_FINISH:I = 0x4

.field private static final MSG_SCAN_MEDIA_COMPLETED:I = 0x3

.field public static final SELECTED_IMAGES_PATH:Ljava/lang/String; = "selectedImagesPath"

.field private static final START_CAMERA_ACTIVITY:I = 0x2

.field public static final START_IMAGE_SELECT_ACTIVITY:I = 0x1


# instance fields
.field private final PICTURE_MIN_SIZE:I

.field private mAdapter:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

.field private mCaptureImagePath:Ljava/lang/String;

.field private mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

.field private mFloderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/utils/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderInfoMap:Ljava/util/Map;

.field private mGridView:Lcn/nubia/notepad/view/NotePadGridView;

.field private mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;-><init>()V

    .line 61
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->PICTURE_MIN_SIZE:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->startQueryImageFolder()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NotePadImageFolderActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NotePadImageFolderActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/NotePadImageFolderActivity;)Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->parseCursorInBackground()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/notepad/NotePadImageFolderActivity;)Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/NotePadImageFolderActivity;)Ljava/text/Collator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private checkCtaAndPermissions()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;-><init>(Landroid/app/Activity;)V

    .line 149
    .local v0, "ctaPermissionUtils":Lcn/nubia/notepad/utils/CtaPermissionUtils;
    const-string v1, "Storage"

    new-instance v2, Lcn/nubia/notepad/NotePadImageFolderActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadImageFolderActivity$1;-><init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    .line 160
    return-void
.end method

.method private getAlbumInfo()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 395
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 396
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "bucket_id"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "bucket_display_name"

    aput-object v4, v2, v0

    .line 399
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_size > 1000 AND (mime_type = \'image/jpeg\' OR mime_type = \'image/jpg\' OR mime_type = \'image/png\')"

    .line 404
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v7

    .line 408
    goto :goto_0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, "titleActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 99
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 100
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;-><init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCollator:Ljava/text/Collator;

    .line 91
    new-instance v0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    .line 92
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NotePadGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadGridView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mGridView:Lcn/nubia/notepad/view/NotePadGridView;

    .line 84
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->initActionBar()V

    .line 85
    return-void
.end method

.method private parseCursorInBackground()V
    .locals 11

    .prologue
    .line 317
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->getAlbumInfo()Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, "mCursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 373
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 323
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 325
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 326
    const-string v8, "bucket_id"

    .line 327
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 326
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "BUCKET_ID":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 329
    const-string v8, "_data"

    .line 330
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 329
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 333
    .local v2, "data":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 338
    .local v7, "parentFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 341
    new-instance v4, Lcn/nubia/notepad/utils/FolderInfo;

    invoke-direct {v4}, Lcn/nubia/notepad/utils/FolderInfo;-><init>()V

    .line 342
    .local v4, "folderInfo":Lcn/nubia/notepad/utils/FolderInfo;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcn/nubia/notepad/utils/FolderInfo;->setDir(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v4, v2}, Lcn/nubia/notepad/utils/FolderInfo;->setFirstImgPath(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4, v0}, Lcn/nubia/notepad/utils/FolderInfo;->setBucketId(Ljava/lang/String;)V

    .line 345
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 356
    .end local v0    # "BUCKET_ID":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "folderInfo":Lcn/nubia/notepad/utils/FolderInfo;
    .end local v7    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v6, 0x0

    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    new-instance v9, Lcn/nubia/notepad/NotePadImageFolderActivity$3;

    invoke-direct {v9, p0}, Lcn/nubia/notepad/NotePadImageFolderActivity$3;-><init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 334
    .restart local v0    # "BUCKET_ID":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 335
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 359
    .end local v0    # "BUCKET_ID":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v6, 0x0

    .line 361
    throw v8

    .line 349
    .restart local v0    # "BUCKET_ID":Ljava/lang/String;
    :cond_2
    :try_start_5
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, "count":I
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 353
    .end local v0    # "BUCKET_ID":Ljava/lang/String;
    .end local v1    # "count":I
    :cond_3
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/utils/FolderInfo;

    .line 354
    .local v5, "info":Lcn/nubia/notepad/utils/FolderInfo;
    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFolderInfoMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcn/nubia/notepad/utils/FolderInfo;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcn/nubia/notepad/utils/FolderInfo;->setCount(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 359
    .end local v5    # "info":Lcn/nubia/notepad/utils/FolderInfo;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v6, 0x0

    .line 361
    goto :goto_2
.end method

.method private startCameraActicity()V
    .locals 11

    .prologue
    .line 220
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMG_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "yyyyMMdd_hhmmss"

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 223
    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    .line 222
    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "picResourceFileName":Ljava/lang/String;
    const-string v3, ""

    .line 226
    .local v3, "floderPath":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mFloderInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/FolderInfo;

    .line 227
    .local v2, "floderInfo":Lcn/nubia/notepad/utils/FolderInfo;
    invoke-virtual {v2}, Lcn/nubia/notepad/utils/FolderInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Camera"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    invoke-virtual {v2}, Lcn/nubia/notepad/utils/FolderInfo;->getDir()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 231
    .end local v2    # "floderInfo":Lcn/nubia/notepad/utils/FolderInfo;
    :cond_1
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 232
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DCIM/Camera/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 238
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    .line 240
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_3

    .line 241
    const/4 v6, 0x0

    .line 242
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v9}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 243
    const-string v7, "output"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_1
    const-string v7, "autofouse"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    :try_start_0
    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x2

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_2
    return-void

    .line 245
    :cond_3
    const-string v7, "output"

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private startImageListActivity(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    const v2, 0x7f0f00a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, "folder":Landroid/widget/TextView;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "bucket_id"

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "notepad_image_count"

    .line 261
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notepad_image_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 260
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v2, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method private startQueryImageFolder()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NotePadImageFolderActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadImageFolderActivity$2;-><init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v5, "selectedImagesPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v1, "i":Landroid/content/Intent;
    const-string v7, "selectedImagesPath"

    check-cast v5, Ljava/util/ArrayList;

    .end local v5    # "selectedImagesPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 298
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v1}, Lcn/nubia/notepad/NotePadImageFolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->finish()V

    .line 300
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    return-void

    .line 271
    .restart local v5    # "selectedImagesPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 280
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v2}, Lcn/nubia/notepad/NotePadImageFolderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    iget-object v7, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mCaptureImagePath:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :pswitch_1
    if-eqz p3, :cond_1

    .line 288
    const-string v7, "selectedImages"

    .line 289
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 290
    .local v4, "selectedImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, "selectedImage":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 76
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->setContentView(I)V

    .line 77
    iput-object p0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->initView()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->initData()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iput-object v1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mHandler:Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    .line 203
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 204
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 205
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onDestroy()V

    .line 206
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    if-nez p3, :cond_1

    .line 212
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->startCameraActicity()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0, p2}, Lcn/nubia/notepad/NotePadImageFolderActivity;->startImageListActivity(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->finish()V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionEnd(Ljava/lang/String;)V

    .line 115
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onPause()V

    .line 116
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    .line 130
    .local v0, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, p3, v2

    .line 131
    .local v1, "result":I
    if-eqz v1, :cond_2

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->finish()V

    .line 137
    .end local v1    # "result":I
    :cond_1
    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->startQueryImageFolder()V

    goto :goto_0

    .line 130
    .restart local v1    # "result":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->checkCtaAndPermissions()V

    .line 121
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionStart(Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onResume()V

    .line 123
    return-void
.end method
