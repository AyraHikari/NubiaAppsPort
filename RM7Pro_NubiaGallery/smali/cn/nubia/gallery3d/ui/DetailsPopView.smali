.class public Lcn/nubia/gallery3d/ui/DetailsPopView;
.super Ljava/lang/Object;
.source "DetailsPopView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;,
        Lcn/nubia/gallery3d/ui/DetailsPopView$EntityDetails;
    }
.end annotation


# static fields
.field private static final ENTER_TOTAL_DURATION_TIME:J = 0x1f4L

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "DialogDetailsView"


# instance fields
.field private detailContainer:Landroid/view/View;

.field private detailsList:Lcn/nubia/gallery3d/ui/CustomDetailsListView;

.field private mAdapter:Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

.field private final mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mDetails:Lcn/nubia/gallery3d/data/MediaDetails;

.field private mDialog:Landroid/app/Dialog;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIndex:I

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;

.field private mLock:Ljava/lang/Object;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

.field private mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private titleView:Landroid/widget/TextView;

.field private viewBg:Landroid/view/View;

.field private viewDetails:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 81
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 82
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e28f5c3    # 0.165f

    const v0, 0x3f570a3d    # 0.84f

    const v1, 0x3ee147ae    # 0.44f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 83
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f0ccccd    # 0.55f

    const v0, 0x3d6147ae    # 0.055f

    const v1, 0x3f2ccccd    # 0.675f

    const v2, 0x3e428f5c    # 0.19f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/DetailsPopView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->onHideDetails()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/DetailsPopView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->startExitAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/DetailsPopView;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/DetailsPopView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListener:Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDetails:Lcn/nubia/gallery3d/data/MediaDetails;

    return-object p0
.end method

.method private getContetnViewHeight()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mAdapter:Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 225
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43260000    # 166.0f

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initData(Z)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mAdapter:Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailsList:Lcn/nubia/gallery3d/ui/CustomDetailsListView;

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method private initPopData()V
    .locals 7

    .line 196
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 198
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v6

    const-string v2, "setLayoutInScreenEnabled"

    move-object v6, v0

    .line 198
    invoke-static/range {v1 .. v6}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f09007f

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewBg:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/CustomDetailsListView;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailsList:Lcn/nubia/gallery3d/ui/CustomDetailsListView;

    .line 255
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->titleView:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method private onHideDetails()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListener:Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;->onClose()V

    :cond_1
    return-void
.end method

.method private onShowDetails()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    .line 95
    :cond_0
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f110129

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 96
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f100085

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100059

    new-instance v3, Lcn/nubia/gallery3d/ui/DetailsPopView$1;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$1;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    .line 97
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    .line 103
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 104
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcn/nubia/gallery3d/ui/DetailsPopView$2;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$2;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setContainerParams()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailsList:Lcn/nubia/gallery3d/ui/CustomDetailsListView;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 212
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->getContetnViewHeight()I

    move-result v1

    .line 213
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 214
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    .line 215
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->initPopData()V

    return-void
.end method

.method private setDetails(Lcn/nubia/gallery3d/data/MediaDetails;Z)V
    .locals 1

    .line 152
    new-instance v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;Lcn/nubia/gallery3d/data/MediaDetails;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mAdapter:Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

    .line 153
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->initView()V

    .line 154
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->setListern()V

    .line 155
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/DetailsPopView;->initData(Z)V

    return-void
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 5

    .line 159
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 164
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 165
    invoke-virtual {v0, v2, v4, p1}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 166
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->getCount()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v3, v1

    .line 170
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/DetailsPopView$DetailsAdapter;->getCount()I

    const/4 p1, -0x1

    .line 172
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 173
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07008b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 177
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v1, p1, :cond_2

    .line 178
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setListern()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/ui/DetailsPopView$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$3;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->viewDetails:Landroid/view/View;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/ui/DetailsPopView$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$4;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startEntryAnimation()V
    .locals 8

    .line 262
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->getContetnViewHeight()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    int-to-float v0, v0

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x0

    const/4 v5, 0x1

    aput v0, v3, v5

    const-string v0, "translationY"

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x1f4

    .line 269
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 270
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v2, [I

    .line 272
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 274
    new-instance v3, Lcn/nubia/gallery3d/ui/DetailsPopView$5;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$5;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private startExitAnimation()V
    .locals 8

    .line 285
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->getContetnViewHeight()I

    move-result v0

    .line 290
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->detailContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    const-string v0, "translationY"

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    .line 291
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 292
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v2, [I

    .line 293
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 295
    new-instance v3, Lcn/nubia/gallery3d/ui/DetailsPopView$6;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$6;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/gallery3d/ui/DetailsPopView$7;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/DetailsPopView$7;-><init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->onHideDetails()V

    return-void
.end method

.method public reloadDetails(I)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;->findIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;->isCameraPic()Z

    move-result v1

    if-eqz v0, :cond_2

    .line 143
    iget v2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mIndex:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDetails:Lcn/nubia/gallery3d/data/MediaDetails;

    if-ne v2, v0, :cond_1

    return-void

    .line 145
    :cond_1
    iput p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mIndex:I

    .line 146
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mDetails:Lcn/nubia/gallery3d/data/MediaDetails;

    .line 147
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->setDetails(Lcn/nubia/gallery3d/data/MediaDetails;Z)V

    :cond_2
    return-void
.end method

.method public setCloseListener(Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mListener:Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsPopView;->mSource:Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->reloadDetails(I)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->setContainerParams()V

    .line 126
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->startEntryAnimation()V

    .line 128
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DetailsPopView;->onShowDetails()V

    return-void
.end method
