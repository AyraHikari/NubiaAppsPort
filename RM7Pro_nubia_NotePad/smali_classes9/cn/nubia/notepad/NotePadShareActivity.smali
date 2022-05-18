.class public Lcn/nubia/notepad/NotePadShareActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "NotePadShareActivity.java"

# interfaces
.implements Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;,
        Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;
    }
.end annotation


# static fields
.field private static final MSG_DELIVERY_SHARE_IMAGES_PATH:I = 0x5

.field private static final MSG_DISMISS_PROGRESS:I = 0x4

.field private static final MSG_INIT_NOTE_CONTENT_DATA:I = 0x1

.field private static final MSG_SHARE_NOTE_FAILED:I = 0x2

.field private static final MSG_SHOW_PROGRESS:I = 0x3


# instance fields
.field private final NOTEPAD_EDITOR_EDITTEXT_VIEW:Ljava/lang/String;

.field private final NOTEPAD_EDITOR_IMAGE_VIEW:Ljava/lang/String;

.field private final NUBIA_SHARE_SERVICE:Ljava/lang/String;

.field private isShowImageGenerateProgress:Z

.field private mContentsData:Lcn/nubia/notepad/utils/ContentsData;

.field private mContext:Landroid/content/Context;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

.field private mImageDataIndex:I

.field private mImageScaleDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNubiaServiceExist:Z

.field private mNoteContentsData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation
.end field

.field private mNotePadEditorBodyViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNoteShareBackground:Landroid/widget/LinearLayout;

.field private mNoteShareBodyLayout:Landroid/widget/LinearLayout;

.field private mNoteTitle:Landroid/widget/TextView;

.field private mNotepadDataLoadingLayout:Landroid/widget/RelativeLayout;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mQueryText:Ljava/lang/String;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShareButton:Landroid/widget/Button;

.field private mShareController:Lcn/nubia/share/NubiaNotepadShareController;

.field private mShareDialogMenu:Landroid/widget/Button;

.field private mShareNubiaTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 67
    const-string v0, "editTextView"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->NOTEPAD_EDITOR_EDITTEXT_VIEW:Ljava/lang/String;

    .line 68
    const-string v0, "imageView"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->NOTEPAD_EDITOR_IMAGE_VIEW:Ljava/lang/String;

    .line 69
    const-string v0, "cn.nubia.handler.shareservice"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->NUBIA_SHARE_SERVICE:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageScaleDatas:Ljava/util/List;

    .line 88
    iput v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageDataIndex:I

    .line 93
    new-instance v0, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;-><init>(Lcn/nubia/notepad/NotePadShareActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    .line 97
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->isShowImageGenerateProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->isShowImageGenerateProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/NotePadShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadShareActivity;->checkChildViewVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/NotePadShareActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadShareActivity;->getNoteData(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/notepad/NotePadShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadShareActivity;->handleNoteData()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/NotePadShareActivity;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;
    .param p1, "x1"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    return-object v0
.end method

.method private addImageView(ILjava/lang/String;I)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 424
    new-instance v6, Lcn/nubia/notepad/view/NotePadImageViewLayout;

    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcn/nubia/notepad/view/NotePadImageViewLayout;-><init>(Landroid/content/Context;)V

    .line 425
    .local v6, "mNotePadImageViewLayout":Lcn/nubia/notepad/view/NotePadImageViewLayout;
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadImageViewLayout;->initView()Landroid/view/View;

    move-result-object v4

    .line 426
    .local v4, "imageViewLayout":Landroid/view/View;
    iget-object v2, v6, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mImageView:Landroid/widget/ImageView;

    .line 427
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v11, v6, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mEditTextCursor:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->clearFocus()V

    .line 428
    iget-object v11, v6, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mEditTextCursor:Landroid/widget/EditText;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    .line 429
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 430
    const v11, -0x333334

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v12, v12, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, "picResourceFilePath":Ljava/lang/String;
    const v11, 0x7f0a0100

    invoke-virtual {v2, v11, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 436
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 437
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 438
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 439
    .local v10, "screenWidth":I
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0122

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    sub-int v5, v10, v11

    .line 441
    .local v5, "imageViewWidth":I
    int-to-float v12, v5

    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageScaleDatas:Ljava/util/List;

    iget v13, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageDataIndex:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageDataIndex:I

    .line 442
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v12

    float-to-int v3, v11

    .line 443
    .local v3, "imageViewHeight":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    .local v8, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0126

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 450
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0123

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 452
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0125

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 454
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0124

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 457
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    move/from16 v0, p1

    invoke-virtual {v11, v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "imageView"

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v11, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 461
    return-void
.end method

.method private addTextView(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "noteMode"    # I
    .param p4, "checked"    # Ljava/lang/String;
    .param p5, "size"    # I

    .prologue
    .line 398
    new-instance v0, Lcn/nubia/notepad/view/NotePadShareTextLayout;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, "notePadEditText":Lcn/nubia/notepad/view/NotePadShareTextLayout;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mQueryText:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->initView(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 404
    .local v8, "view":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 409
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 411
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 413
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 416
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "editTextView"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 420
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadShareActivity;->updateNumberModeView()V

    .line 421
    return-void
.end method

.method private checkChildViewVisibility()V
    .locals 8

    .prologue
    const v7, 0x7f0a0100

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 297
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 298
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "imageView"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    .line 299
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 300
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f0081

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 302
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 296
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 310
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "picResourceFilePath":Ljava/lang/String;
    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v5, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/notepad/NotePadShareActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v4, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 316
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "picResourceFilePath":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getNoteData(I)V
    .locals 8
    .param p1, "noteId"    # I

    .prologue
    .line 498
    new-instance v2, Lcn/nubia/notepad/utils/NotesData;

    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    .line 499
    .local v2, "mNotesData":Lcn/nubia/notepad/utils/NotesData;
    invoke-virtual {v2, p1}, Lcn/nubia/notepad/utils/NotesData;->getNoteDataById(I)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v1

    .line 500
    .local v1, "mNote":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    if-nez v1, :cond_1

    .line 526
    :cond_0
    return-void

    .line 503
    :cond_1
    iget-object v5, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    iput-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 505
    new-instance v5, Lcn/nubia/notepad/NotePadShareActivity$3;

    invoke-direct {v5, p0, v1}, Lcn/nubia/notepad/NotePadShareActivity$3;-><init>(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    invoke-virtual {p0, v5}, Lcn/nubia/notepad/NotePadShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 513
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v4, ""

    .line 514
    .local v4, "resourceFilePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 515
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v5, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v6, "image"

    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v6, v6, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 519
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v5, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 521
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 522
    iget-object v5, p0, Lcn/nubia/notepad/NotePadShareActivity;->mImageScaleDatas:Ljava/util/List;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleNoteData()V
    .locals 6

    .prologue
    .line 529
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 568
    :goto_0
    return-void

    .line 532
    :cond_0
    const/4 v2, 0x0

    .line 533
    .local v2, "index":I
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 534
    .local v3, "size":I
    const/4 v1, 0x0

    .line 535
    .local v1, "imageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 536
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v4, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    add-int/lit8 v3, v3, -0x1

    .line 535
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_2
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v4, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 541
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v4, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    :cond_3
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v4, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x3

    if-le v1, v4, :cond_4

    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->isShowImageGenerateProgress:Z

    if-nez v4, :cond_4

    .line 544
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->isShowImageGenerateProgress:Z

    .line 547
    :cond_4
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {p0, v4, v2, v3}, Lcn/nubia/notepad/NotePadShareActivity;->initNoteContentData(Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;II)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 551
    :cond_5
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotepadDataLoadingLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 552
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->bringToFront()V

    .line 555
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcn/nubia/notepad/NotePadShareActivity$4;

    invoke-direct {v5, p0}, Lcn/nubia/notepad/NotePadShareActivity$4;-><init>(Lcn/nubia/notepad/NotePadShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 205
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 207
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcn/nubia/notepad/NotePadShareActivity;->isNubiaShareServiceExist(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mIsNubiaServiceExist:Z

    .line 208
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mIsNubiaServiceExist:Z

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Lcn/nubia/share/NubiaNotepadShareController;

    invoke-direct {v2}, Lcn/nubia/share/NubiaNotepadShareController;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    .line 210
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-virtual {v2, p0}, Lcn/nubia/share/NubiaNotepadShareController;->setHandleShareDataListener(Lcn/nubia/share/NubiaNotepadShareController$OnHandlerShareDataListener;)V

    .line 211
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    invoke-virtual {v2}, Lcn/nubia/share/NubiaNotepadShareController;->initConnection()V

    .line 212
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/nubia/share/NubiaNotepadShareController;->startService(Landroid/content/Context;)V

    .line 215
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 216
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 217
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 219
    new-instance v2, Lcn/nubia/notepad/utils/ContentsData;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    .line 221
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadShareActivity;->finish()V

    .line 237
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v2, "notepad_share_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "mNoteId":I
    const-string v2, "notepad_query_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mQueryText:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/nubia/notepad/NotePadShareActivity$2;

    invoke-direct {v3, p0, v1}, Lcn/nubia/notepad/NotePadShareActivity$2;-><init>(Lcn/nubia/notepad/NotePadShareActivity;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initNoteContentData(Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;II)V
    .locals 6
    .param p1, "contentData"    # Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .param p2, "index"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 320
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 321
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 322
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0105

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0056

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    .line 324
    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0106

    .line 329
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0057

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    .line 330
    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0108

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005a

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    .line 336
    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0107

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    .line 342
    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 352
    :cond_5
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "0"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    :cond_6
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 357
    :cond_7
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 361
    :cond_8
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 365
    :cond_9
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 366
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 369
    :cond_a
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 370
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p2

    move v5, p3

    .line 370
    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 374
    :cond_b
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 375
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 378
    :cond_c
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 379
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 384
    :cond_d
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/NotePadShareActivity;->addTextView(ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 390
    :cond_e
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "image"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p3}, Lcn/nubia/notepad/NotePadShareActivity;->addImageView(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadShareActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    .line 191
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 192
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotepadDataLoadingLayout:Landroid/widget/RelativeLayout;

    .line 193
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotepadDataLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    .line 196
    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBackground:Landroid/widget/LinearLayout;

    .line 197
    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteTitle:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareNubiaTag:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareButton:Landroid/widget/Button;

    .line 202
    return-void
.end method

.method private isNubiaShareServiceExist(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 635
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "cn.nubia.handler.shareservice"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 638
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 639
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v6, v4, :cond_1

    :cond_0
    move v4, v5

    .line 646
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 644
    goto :goto_0
.end method

.method private onSaveShareImage(Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;

    .prologue
    .line 606
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcn/nubia/notepad/NotePadShareActivity$5;

    invoke-direct {v2, p0, p1}, Lcn/nubia/notepad/NotePadShareActivity$5;-><init>(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 629
    invoke-interface {p1}, Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;->onError()V

    goto :goto_0
.end method

.method private updateNumberModeView()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "numberModeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 466
    iget-object v4, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 467
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    const-string v4, "editTextView"

    .line 469
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadShareTextLayout;

    .line 470
    .local v3, "view":Lcn/nubia/notepad/view/NotePadShareTextLayout;
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 471
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 473
    invoke-virtual {v3, v2}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setNumberModeNumberShow(I)V

    .line 465
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadShareTextLayout;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .restart local v3    # "view":Lcn/nubia/notepad/view/NotePadShareTextLayout;
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 475
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 476
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 477
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    .line 478
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    .line 479
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 480
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->getEditMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 481
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 484
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadShareTextLayout;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 487
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadShareActivity;->finish()V

    .line 146
    return-void
.end method

.method public OnPositiveButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->isShowImageGenerateProgress:Z

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "showProgressMsg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    .end local v0    # "showProgressMsg":Landroid/os/Message;
    :cond_0
    new-instance v1, Lcn/nubia/notepad/NotePadShareActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadShareActivity$1;-><init>(Lcn/nubia/notepad/NotePadShareActivity;)V

    invoke-direct {p0, v1}, Lcn/nubia/notepad/NotePadShareActivity;->onSaveShareImage(Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;)V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 106
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadShareActivity;->setContentView(I)V

    .line 107
    iput-object p0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 111
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadShareActivity;->initView()V

    .line 112
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadShareActivity;->initData()V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mShareController:Lcn/nubia/share/NubiaNotepadShareController;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/share/NubiaNotepadShareController;->exitService(Landroid/content/Context;)V

    .line 120
    :cond_0
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 121
    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mNoteShareBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iput-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    .line 131
    :cond_2
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onGenerateShareImage()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 493
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity;->mHandler:Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/NotePadShareActivity$NotePadShareHandler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 137
    return-void
.end method
