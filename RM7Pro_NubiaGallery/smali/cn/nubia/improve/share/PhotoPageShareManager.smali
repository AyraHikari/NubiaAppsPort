.class public Lcn/nubia/improve/share/PhotoPageShareManager;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;,
        Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_CUT_VIDEO:Ljava/lang/String; = "cn.nubia.share.intent.action.VIEW_CUT_VIDEO"

.field public static final IS_SORT_SHARE:Ljava/lang/String; = "isSortShare"

.field public static final MSG_LEAVE_SHARE_MODE:I = 0x1

.field private static final MSG_RESET_DATA:I = 0x2

.field private static final NEOSHARE_PACKAGE_NAME:Ljava/lang/String; = "neoshare"

.field private static final PROCESS_END:I = 0x2

.field private static final PROCESS_END_MORE:I = 0x4

.field private static final PROCESS_ING:I = 0x1

.field private static final PROCESS_STAER_MORE:I = 0x3

.field private static final PROCESS_START:I = 0x0

.field private static final SHAREVIEHEIGHTVER:I = 0x14b

.field public static final TAG:Ljava/lang/String; = "PhotoPageShareManager"

.field public static final TAGINTENT:Ljava/lang/String; = "PhotoPageShareManagerINTENT"

.field private static final VIEWPAGEITMENUM:I = 0x8

.field private static final VIEWPAGERHEIGHT:I = 0x9c

.field private static final VIEWPAGERSMAX:I = 0x2

.field private static final WECHAT:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field private static final WECHAT_FAVORITES:Ljava/lang/String; = "com.tencent.mm.ui.tools.AddFavoriteUI"

.field private static final WECHAT_MOMENTS:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"


# instance fields
.field private PROGRESS_SHOW:I

.field private arrayListVP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public click_pos:I

.field public click_uid:I

.field handler:Landroid/os/Handler;

.field private img_cancel:Landroid/widget/ImageView;

.field info_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isNeedRefresh:Z

.field private isPtriHasGrayBG:Z

.field private isShow:Z

.field private isSortShare:Z

.field private leagueShareLayout:Landroid/widget/FrameLayout;

.field private lpWm:Landroid/view/WindowManager$LayoutParams;

.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mCustomShareFilter:Lcn/nubia/improve/share/CustomShareFilter;

.field private mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

.field private mCustomShareViewListener:Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

.field private mDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mDotsContainer:Landroid/widget/LinearLayout;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExceedMaxNum:Z

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFilterName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntentAction:Ljava/lang/String;

.field private mIntentType:Ljava/lang/String;

.field private mLeagueShare:Lcn/nubia/share/league/LeagueShare;

.field private mOtherIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCount:I

.field private mSelectedMediaType:I

.field private mShareCancel:Landroid/widget/Button;

.field private mShareSorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mType:Ljava/lang/String;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mediasSize:J

.field moreInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private moreIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field new_Uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private tvLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tvShareDetails:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 68
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    .line 77
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareCancel:Landroid/widget/Button;

    .line 82
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mFilterName:Ljava/util/ArrayList;

    .line 83
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    .line 86
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    .line 87
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    .line 89
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareViewListener:Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    .line 93
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mType:Ljava/lang/String;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    .line 102
    iput-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    .line 103
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    .line 104
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->new_Uris:Ljava/util/ArrayList;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->info_List:Ljava/util/ArrayList;

    .line 454
    iput v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->click_pos:I

    .line 455
    iput v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->click_uid:I

    const/16 v0, 0xa

    .line 456
    iput v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->PROGRESS_SHOW:I

    .line 457
    new-instance v0, Lcn/nubia/improve/share/PhotoPageShareManager$4;

    invoke-direct {v0, p0}, Lcn/nubia/improve/share/PhotoPageShareManager$4;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    .line 871
    new-instance v0, Lcn/nubia/improve/share/PhotoPageShareManager$7;

    invoke-direct {v0, p0}, Lcn/nubia/improve/share/PhotoPageShareManager$7;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 109
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->initData()V

    return-void
.end method

.method private JumpToMore()V
    .locals 3

    .line 404
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    iget-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    const-string v2, "isSortShare"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    iget-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    const-string v2, "share_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    const-string v2, "share_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "share_num"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    const-string v2, "share_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 413
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->info_List:Ljava/util/ArrayList;

    const-string v2, "share_resolveinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreInfo:Ljava/util/ArrayList;

    const-string v2, "PhotoPageShareManager"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreIntents:Ljava/util/ArrayList;

    const-string v2, "PhotoPageShareManagerINTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEnablePrivacyStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    const-string v2, "share_uris"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 419
    :cond_1
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    .line 421
    invoke-virtual {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/share/PhotoPageShareManager;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->fromAlbumSetPage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/nubia/improve/share/PhotoPageShareManager;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/widget/LinearLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareViewListener:Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/share/PhotoPageShareManager;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setupIntent()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateVp()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->JumpToMore()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/share/PhotoPageShareManager;)I
    .locals 0

    .line 53
    iget p0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->PROGRESS_SHOW:I

    return p0
.end method

.method private addDotsView()V
    .locals 6

    .line 787
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 788
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    move v0, v2

    .line 794
    :goto_1
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 796
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 797
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 798
    iget-object v4, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 799
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 800
    invoke-virtual {v5, v4, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 801
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_1

    const v3, 0x7f0801ef

    .line 803
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_1
    const v3, 0x7f0801ee

    .line 806
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 809
    :goto_2
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private caculateShareSize(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    iget-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    if-eqz v1, :cond_0

    .line 282
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const v1, 0x7f1001ff

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    const v3, 0x7f1001de

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 284
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mediasSize:J

    invoke-static {v5, v6, v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 287
    iget-object v6, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    aput-object v5, v2, v1

    invoke-virtual {v6, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvShareDetails:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private closeInputMethod()V
    .locals 3

    .line 844
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 845
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 846
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2

    .line 510
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f11012a

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 511
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 512
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    const/4 p0, 0x0

    .line 513
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 514
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    if-lez p2, :cond_0

    const/4 p0, 0x1

    .line 516
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    :cond_0
    return-object v0
.end method

.method private fromAlbumSetPage()Z
    .locals 1

    .line 1002
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    return v0
.end method

.method private getNeoShareIntent()Landroid/content/Intent;
    .locals 8

    .line 968
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 969
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move v3, v2

    .line 973
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 974
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 975
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v7, "neoshare"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_3

    .line 981
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "android.intent.extra.STREAM"

    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 982
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 984
    :cond_2
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 986
    :goto_2
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_3
    return-object v5
.end method

.method private initArrayListVp(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 306
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 313
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7f09015e

    const v4, 0x7f09015d

    const v5, 0x7f09015c

    const v6, 0x7f09015b

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-gt v1, v2, :cond_2

    .line 315
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 324
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 326
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    move v1, v8

    :goto_1
    if-ge v1, v0, :cond_4

    .line 333
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v9, 0x7f0c0041

    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 335
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    const v10, 0x7f09015f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    const v10, 0x7f090160

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    const v10, 0x7f090161

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v9, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    const v10, 0x7f090162

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_4
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_8

    :goto_2
    if-ge v8, v0, :cond_9

    .line 350
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 352
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0xf

    if-ne v8, v1, :cond_6

    .line 356
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfoMore(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    goto :goto_3

    :cond_6
    if-ge v8, v1, :cond_7

    .line 359
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)V

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    if-ge v8, v0, :cond_9

    .line 364
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->setTextViewInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private initData()V
    .locals 5

    .line 114
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->initWm()V

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e28f5c3    # 0.165f

    const v2, 0x3f570a3d    # 0.84f

    const v3, 0x3ee147ae    # 0.44f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 116
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3d6147ae    # 0.055f

    const v3, 0x3f2ccccd    # 0.675f

    const v4, 0x3e428f5c    # 0.19f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mTranslateOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Lcn/nubia/improve/share/CustomShareFilter;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/improve/share/CustomShareFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareFilter:Lcn/nubia/improve/share/CustomShareFilter;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mFilterName:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreInfo:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->moreIntents:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    return-void
.end method

.method private initLayout()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/CustomShareView;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f090191

    .line 148
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->leagueShareLayout:Landroid/widget/FrameLayout;

    .line 149
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->tvShareDetails:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->img_cancel:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f090163

    .line 153
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    .line 154
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareCancel:Landroid/widget/Button;

    .line 155
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 157
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    new-instance v1, Lcn/nubia/improve/share/PhotoPageShareManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/share/PhotoPageShareManager$1;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CustomShareView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initWm()V
    .locals 2

    .line 128
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    .line 129
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    check-cast v0, Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->wm:Landroid/view/WindowManager;

    .line 130
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 131
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x320

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setWmBgGrabUnTouchAble(Z)V

    return-void
.end method

.method private isShareToWechat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 994
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.tools.AddFavoriteUI"

    .line 995
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setListerner()V
    .locals 2

    .line 753
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/nubia/improve/share/PhotoPageShareManager$6;

    invoke-direct {v1, p0}, Lcn/nubia/improve/share/PhotoPageShareManager$6;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setTextViewInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)V
    .locals 5

    .line 424
    new-instance v0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/pm/ResolveInfo;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 425
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 424
    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 426
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 427
    new-instance v0, Lcn/nubia/improve/share/PhotoPageShareManager$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager$3;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTextViewInfoMore(Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 374
    new-instance v0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Boolean;

    .line 375
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 374
    invoke-virtual {v0, v1, v3}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    new-instance v0, Lcn/nubia/improve/share/PhotoPageShareManager$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager$2;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWmBgGrabUnTouchAble(Z)V
    .locals 2

    .line 735
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    .line 737
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    and-int/lit16 p1, v0, -0x101

    and-int/lit8 p1, p1, -0x21

    .line 740
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 742
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    or-int/lit16 p1, v0, 0x100

    or-int/lit8 p1, p1, 0x20

    .line 745
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private setupIntent()V
    .locals 9

    .line 224
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 226
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 227
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 228
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 229
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 230
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 231
    invoke-static {}, Lcn/nubia/improve/share/ShareUtils;->getCutVideo()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "android.intent.extra.STREAM"

    if-eqz v6, :cond_2

    const v6, 0x186a0

    div-int/2addr v5, v6

    sget v6, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    const-string v6, "video/"

    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    const-string v6, "android.intent.action.SEND"

    .line 233
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 234
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "cn.nubia.share.intent.action.VIEW_CUT_VIDEO"

    .line 235
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "videocut"

    .line 236
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "mimetype"

    const-string v6, "video/mp4"

    .line 237
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "activityName"

    .line 238
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 240
    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v5, v6}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 242
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v6, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v6, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 250
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v1, "android.intent.extra.INTENT"

    .line 252
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 254
    :cond_2
    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :goto_1
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 261
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const/16 v5, 0x9

    if-le v1, v5, :cond_4

    .line 263
    invoke-direct {p0, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->isShareToWechat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v3, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 267
    :cond_4
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 271
    :cond_5
    :goto_2
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    :cond_6
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcn/nubia/share/league/LeagueShare;->setData_itent(Landroid/content/Intent;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/share/league/LeagueShare;->setmUris(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method private showShareView(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 663
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->initLayout()V

    .line 664
    invoke-virtual {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->InitLeaqueData()V

    .line 665
    invoke-direct {p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->caculateShareSize(Ljava/util/ArrayList;)V

    .line 666
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateShareInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setupIntent()V

    .line 668
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateVp()V

    .line 669
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->addDotsView()V

    .line 670
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setListerner()V

    .line 671
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateUI()V

    .line 672
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->startEntryAnimation()V

    const/4 p1, 0x1

    .line 673
    iput-boolean p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isShow:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 675
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p3, p3, -0x3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 677
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 679
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->wm:Landroid/view/WindowManager;

    iget-object p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    iget-object p4, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p3, p4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object p1

    .line 681
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getNubiaTrackFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cn.nubia.gallery3d"

    const-string p4, "nubia_shared_usage"

    const-string v0, "file_type"

    .line 680
    invoke-virtual {p1, p3, p4, v0, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startEntryAnimation()V
    .locals 4

    .line 904
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHeight:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 910
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 911
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 913
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 914
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startExitAnimation()V
    .locals 4

    .line 918
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mDotsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHeight:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/improve/share/PhotoPageShareManager$8;

    invoke-direct {v2, p0}, Lcn/nubia/improve/share/PhotoPageShareManager$8;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x1f4

    .line 935
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 936
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mTranslateInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 937
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 938
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateShareInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    :cond_0
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    const/4 p2, 0x6

    .line 191
    invoke-static {p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_1
    iput-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.SEND"

    .line 198
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 196
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    .line 200
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_4

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 205
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 205
    invoke-static {v1, v2, v3, p1}, Lcn/nubia/improve/share/ShareUtils;->getShareSorts(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    .line 208
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 209
    invoke-static {}, Lcn/nubia/improve/share/ShareUtils;->getResolveList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    .line 210
    iput-boolean p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    goto :goto_3

    .line 212
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareFilter:Lcn/nubia/improve/share/CustomShareFilter;

    if-eqz p1, :cond_6

    .line 213
    invoke-virtual {p1}, Lcn/nubia/improve/share/CustomShareFilter;->release()V

    .line 214
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 215
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareFilter:Lcn/nubia/improve/share/CustomShareFilter;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mFilterName:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/improve/share/CustomShareFilter;->filterInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareFilter:Lcn/nubia/improve/share/CustomShareFilter;

    invoke-virtual {p1}, Lcn/nubia/improve/share/CustomShareFilter;->getOtherInfo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    .line 218
    iput-boolean p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    :cond_6
    :goto_3
    return-void
.end method

.method private updateUI()V
    .locals 7

    const/4 v0, 0x1

    .line 687
    invoke-direct {p0, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setWmBgGrabUnTouchAble(Z)V

    .line 688
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, 0x431c0000    # 156.0f

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 690
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43750000    # 245.0f

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 691
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 692
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 694
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x43de0000    # 444.0f

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 697
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    .line 698
    invoke-static {v3, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 700
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isPtriHasGrayBG:Z

    if-eqz v1, :cond_1

    .line 703
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDisplayWidthPixels(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHeight:I

    goto :goto_1

    .line 705
    :cond_1
    iput v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHeight:I

    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setWmBgGrabUnTouchAble(Z)V

    .line 708
    :goto_1
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDisplayWidthPixels(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    .line 710
    :cond_2
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/high16 v5, 0x43b40000    # 360.0f

    if-gt v0, v3, :cond_3

    .line 712
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 713
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x43780000    # 248.0f

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 714
    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 715
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 717
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 720
    :cond_3
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 721
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const v3, 0x43ac8000    # 345.0f

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 722
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    .line 723
    invoke-static {v5, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 725
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v6, v1

    move v1, v0

    move v0, v6

    .line 727
    :goto_2
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDisplayWidthPixels(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHeight:I

    .line 729
    :goto_3
    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 730
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->lpWm:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private updateVp()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSortedInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->initArrayListVp(Ljava/util/ArrayList;)V

    .line 297
    new-instance v0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->arrayListVP:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;Ljava/util/List;)V

    .line 298
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public InitIntent()Landroid/content/Intent;
    .locals 3

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method public InitLeaqueData()V
    .locals 2

    .line 648
    new-instance v0, Lcn/nubia/share/league/LeagueShare;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/share/league/LeagueShare;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    .line 649
    invoke-virtual {v0}, Lcn/nubia/share/league/LeagueShare;->createLeagueShareView()Landroid/view/View;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->leagueShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-virtual {v0}, Lcn/nubia/share/league/LeagueShare;->load()V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 816
    iget-boolean v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isShow:Z

    if-nez v0, :cond_0

    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->wm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 819
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isShow:Z

    :cond_1
    return-void
.end method

.method public leaveShareMode(I)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 958
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-eqz p1, :cond_1

    .line 959
    invoke-virtual {p1}, Lcn/nubia/share/league/LeagueShare;->activityOnDestroy()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 855
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->closeInputMethod()V

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900b5

    if-eq p1, v0, :cond_0

    const v0, 0x7f090158

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    .line 860
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->fromAlbumSetPage()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 861
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 864
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public process(Z)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/improve/share/PhotoPageShareManager$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager$5;-><init>(Lcn/nubia/improve/share/PhotoPageShareManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    .line 178
    iput-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mType:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setCustomShareViewListener(Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareViewListener:Lcn/nubia/improve/share/PhotoPageShareManager$CustomShareViewListener;

    return-void
.end method

.method public setPtriHasGrayBG(Z)V
    .locals 0

    .line 964
    iput-boolean p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isPtriHasGrayBG:Z

    return-void
.end method

.method public setSelectedMediaTypeAndCount(II)V
    .locals 3

    .line 942
    iget v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSelectedMediaType:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSelectedCount:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    if-eq p2, v2, :cond_2

    :cond_0
    if-ne v0, v2, :cond_1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 947
    iput-boolean v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isNeedRefresh:Z

    goto :goto_1

    .line 945
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isNeedRefresh:Z

    .line 949
    :goto_1
    iput p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSelectedMediaType:I

    .line 950
    iput p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mSelectedCount:I

    return-void
.end method

.method protected setShareItemClick(II)V
    .locals 6

    .line 575
    iget-boolean v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 576
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const p2, 0x7f1001ff

    invoke-static {p1, p2, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 577
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 579
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    const v0, 0x186a0

    .line 580
    div-int/2addr p2, v0

    sget v0, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    if-eq p2, v0, :cond_2

    .line 581
    iget-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mOtherIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sget v1, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    invoke-interface {p2, v0, v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->startActivityAsUser(Landroid/content/Intent;I)V

    :goto_0
    const/4 p2, 0x1

    .line 585
    invoke-virtual {p0, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    .line 586
    iget-boolean p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isSortShare:Z

    if-eqz p2, :cond_3

    .line 587
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentAction:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mIntentType:Ljava/lang/String;

    iget-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mShareSorts:Ljava/util/ArrayList;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcn/nubia/improve/share/ShareUtils;->saveShareSorts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    goto :goto_2

    .line 578
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    const p2, 0x7f100247

    invoke-static {p1, p2, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public show(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ)V"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iput-wide p4, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mediasSize:J

    .line 630
    iput-boolean p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    const/4 p3, 0x1

    .line 631
    invoke-direct {p0, p1, p2, p3, p6}, Lcn/nubia/improve/share/PhotoPageShareManager;->showShareView(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V

    .line 632
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->img_cancel:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showLand(Ljava/util/ArrayList;Ljava/lang/String;ZJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ)V"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iput-wide p4, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mediasSize:J

    .line 639
    iput-boolean p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    const/4 p3, 0x0

    .line 640
    invoke-direct {p0, p1, p2, p3, p6}, Lcn/nubia/improve/share/PhotoPageShareManager;->showShareView(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V

    .line 641
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->img_cancel:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/ArrayList;Ljava/lang/String;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    .line 825
    iput-wide p4, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mediasSize:J

    .line 826
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mUris:Ljava/util/ArrayList;

    .line 827
    iput-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mType:Ljava/lang/String;

    .line 828
    iput-boolean p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mExceedMaxNum:Z

    .line 829
    iget-object p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->mCustomShareView:Lcn/nubia/gallery3d/ui/CustomShareView;

    if-eqz p3, :cond_1

    .line 830
    invoke-direct {p0, p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->caculateShareSize(Ljava/util/ArrayList;)V

    .line 831
    iget-boolean p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager;->isNeedRefresh:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 832
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateShareInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 833
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setupIntent()V

    .line 834
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateVp()V

    .line 835
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->addDotsView()V

    .line 836
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->updateUI()V

    goto :goto_0

    .line 838
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/share/PhotoPageShareManager;->setupIntent()V

    :cond_1
    :goto_0
    return-void
.end method
