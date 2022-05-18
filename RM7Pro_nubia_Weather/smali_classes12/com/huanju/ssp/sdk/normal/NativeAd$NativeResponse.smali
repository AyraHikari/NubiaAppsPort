.class public Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;,
        Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;
    }
.end annotation


# static fields
.field public static final BAIDU_BIG_PIC:I = 0x4

.field public static final BAIDU_NATIVE_SANTU:I = 0x5

.field public static final BAIDU_NATIVE_SMART_OPT:I = 0x6

.field public static final BAIDU_NATIVE_SMART_OPT_VIDEO:I = 0x7

.field public static final BIG_IMAG:I = 0x3

.field public static final IMAGS:I = 0x1

.field public static final KSAD_GROUP_IMG:I = 0x10

.field public static final KSAD_SINGLE_IMG:I = 0xf

.field public static final KSAD_VIDEO:I = 0xe

.field public static final SMALL_IMAG:I = 0x2

.field public static final SSPAD_VIDEO:I = 0x11

.field public static final TTAD_EXPRESS_NATIVE:I = 0xd

.field public static final TTAD_GROUP_IMAG:I = 0xa

.field public static final TTAD_LARGE_IMAG:I = 0x9

.field public static final TTAD_SMALL_IMAG:I = 0x8

.field public static final TTAD_VERTICAL_IMG:I = 0xc

.field public static final TTAD_VIDEO:I = 0xb

.field public static final TYPE_COUNT:I = 0x11


# instance fields
.field private adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

.field private adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

.field private adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

.field private adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

.field private imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isShow:Z

.field private mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

.field private mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

.field private mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

.field private titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/baidu/mobad/feeds/NativeResponse;)V
    .locals 2
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p2, "bdFeedAd"    # Lcom/baidu/mobad/feeds/NativeResponse;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 678
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    .line 679
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobad/feeds/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 680
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobad/feeds/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 692
    return-void
.end method

.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 2
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p2, "ttFeedAd"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 706
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 707
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 708
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 709
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 712
    return-void
.end method

.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 1
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p2, "ttNativeExpressAd"    # Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 715
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 716
    return-void
.end method

.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 4
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p2, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    const/4 v3, 0x0

    .line 652
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    .line 650
    iput-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 654
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 655
    iget-object v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    if-eqz v1, :cond_2

    .line 656
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 657
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->sub_title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 658
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->imgurl:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    .line 664
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v3, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    .line 665
    const-string v0, ""

    .line 666
    .local v0, "src":Ljava/lang/String;
    iget v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 667
    const-string v0, "\u5e7f\u544a"

    .line 673
    :cond_1
    :goto_1
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 674
    return-void

    .line 659
    .end local v0    # "src":Ljava/lang/String;
    :cond_2
    iget-object v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v1, :cond_0

    .line 660
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 661
    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->sub_title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    goto :goto_0

    .line 668
    .restart local v0    # "src":Ljava/lang/String;
    :cond_3
    iget v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 669
    const-string v0, "\u63a8\u5e7f"

    goto :goto_1
.end method

.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 2
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;
    .param p2, "ksNattiveAd"    # Lcom/kwad/sdk/api/KsNativeAd;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 696
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 697
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 698
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    .line 702
    return-void
.end method

.method static synthetic access$1900(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method private submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "findView"    # Landroid/view/View;
    .param p2, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 1454
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 1489
    return-void
.end method


# virtual methods
.method public bdAdShow()V
    .locals 3

    .prologue
    .line 898
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 899
    return-void
.end method

.method public bindKsDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .locals 2
    .param p1, "ksAppDownloadListener"    # Lcom/kwad/sdk/api/KsAppDownloadListener;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsNativeAd;->setDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 1333
    :cond_0
    return-void
.end method

.method public varargs bindingImgUrl([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 739
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->access$1502(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;[I)[I

    .line 740
    return-void
.end method

.method public bindingSource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1402(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;I)I

    .line 736
    return-void
.end method

.method public bindingSub_title(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1402(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;I)I

    .line 732
    return-void
.end method

.method public bindingTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1402(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;I)I

    .line 728
    return-void
.end method

.method checkSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "parant"    # Landroid/view/View;
    .param p2, "subId"    # I

    .prologue
    .line 1269
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1270
    .local v0, "textvView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1271
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1273
    :cond_0
    return-void
.end method

.method public closeClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "reason"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1534
    const-string v0, "&&&&downloadClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1535
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3200(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    const-string v0, "&&&&clickAdDownload:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3300(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1, p2, p3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAdClos(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;ILjava/lang/String;)V

    .line 1539
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_0

    .line 1540
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 1543
    :cond_0
    return-void
.end method

.method public downloadClick(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I

    .prologue
    .line 1510
    const-string v0, "&&&&downloadClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1511
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3000(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1512
    :cond_0
    const-string v0, "&&&&clickAdDownload:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 1514
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 1515
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 1516
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 1517
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 1519
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_1

    .line 1520
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 1525
    :cond_1
    :goto_0
    return-void

    .line 1522
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0, p1}, Lcom/baidu/mobad/feeds/NativeResponse;->handleClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getAdLogoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobad/feeds/NativeResponse;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v1

    .line 1114
    :goto_0
    return-object v1

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    .line 1110
    .local v0, "image":Lcom/bytedance/sdk/openadsdk/TTImage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1114
    .end local v0    # "image":Lcom/bytedance/sdk/openadsdk/TTImage;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getAdNativeSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_source:Ljava/lang/String;

    return-object v0
.end method

.method getAdUUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBDResponse()Lcom/baidu/mobad/feeds/NativeResponse;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    .line 1171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaiduLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    move-result-object v0

    .line 1121
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getBrandName()Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1
    .param p1, "ttDislikeDialogAbstract"    # Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    .line 874
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getFilterWords()Ljava/util/List;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getFilterWords()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 814
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobad/feeds/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 821
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getInteractionType()I

    move-result v0

    .line 844
    :goto_0
    return v0

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    move-result v0

    goto :goto_0

    .line 844
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getKsNattivedAd()Lcom/kwad/sdk/api/KsNativeAd;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    return-object v0
.end method

.method public getMultiPicUrls()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v4, :cond_1

    .line 1149
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v4}, Lcom/baidu/mobad/feeds/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v3

    .line 1164
    :cond_0
    :goto_0
    return-object v3

    .line 1151
    :cond_1
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v4, :cond_3

    .line 1152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v3, "imgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageList()Ljava/util/List;

    move-result-object v2

    .line 1154
    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTImage;>;"
    if-eqz v2, :cond_0

    .line 1155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1156
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 1157
    .local v1, "image":Lcom/bytedance/sdk/openadsdk/TTImage;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1158
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1164
    .end local v0    # "i":I
    .end local v1    # "image":Lcom/bytedance/sdk/openadsdk/TTImage;
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTImage;>;"
    .end local v3    # "imgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 971
    :goto_0
    return-object v0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    goto :goto_0

    .line 971
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSoftSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSspVideoImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->videoImg:Ljava/lang/String;

    .line 1210
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSspVideoSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->source:Ljava/lang/String;

    .line 1198
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSspVideoSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->sub_title:Ljava/lang/String;

    .line 1204
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSspVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;->title:Ljava/lang/String;

    .line 1192
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSspVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    .line 1178
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSspVideoUrlMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgmd5:Ljava/lang/String;

    .line 1185
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTFeedAd()Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-object v0
.end method

.method public getTTIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    .line 834
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTTNativeExpressAd()Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 759
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v3, :cond_2

    .line 760
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 761
    const/16 v1, 0x11

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->type:I

    goto :goto_0

    .line 764
    :cond_2
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v3, :cond_5

    .line 765
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v3, v3, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v0, v3, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    .line 766
    .local v0, "type":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getType type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 767
    if-eq v0, v7, :cond_0

    .line 769
    if-ne v0, v5, :cond_3

    move v1, v2

    .line 770
    goto :goto_0

    .line 771
    :cond_3
    if-ne v0, v6, :cond_e

    .line 772
    sget-object v1, Lcom/baidu/mobad/feeds/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobad/feeds/NativeResponse$MaterialType;

    invoke-virtual {v1}, Lcom/baidu/mobad/feeds/NativeResponse$MaterialType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v2}, Lcom/baidu/mobad/feeds/NativeResponse;->getAdMaterialType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 773
    const/4 v1, 0x7

    goto :goto_0

    .line 775
    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    .line 778
    .end local v0    # "type":I
    :cond_5
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v3, :cond_a

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getType mTTFeedAd.getImageMode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 780
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 781
    const/16 v1, 0x8

    goto :goto_0

    .line 782
    :cond_6
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 783
    const/16 v1, 0x9

    goto :goto_0

    .line 784
    :cond_7
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 785
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 786
    :cond_8
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 787
    const/16 v1, 0xb

    goto/16 :goto_0

    .line 788
    :cond_9
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getImageMode()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_e

    .line 789
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 791
    :cond_a
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_b

    .line 792
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v0, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    .line 793
    .restart local v0    # "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeExpressAd getType type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 795
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 797
    .end local v0    # "type":I
    :cond_b
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v1, :cond_e

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType mKsNativeAd.getMaterialType():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v2}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v1

    if-ne v1, v7, :cond_c

    .line 800
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 801
    :cond_c
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v1

    if-ne v1, v5, :cond_d

    .line 802
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 803
    :cond_d
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v1

    if-ne v1, v6, :cond_e

    .line 804
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 807
    :cond_e
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method public getW()I
    .locals 2

    .prologue
    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++getW  adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$1700(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",slotid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    return v0
.end method

.method public handleClick(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I

    .prologue
    .line 1492
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2800(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 1494
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 1495
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 1496
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 1497
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2900(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 1499
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_0

    .line 1500
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mBDFeedAd:Lcom/baidu/mobad/feeds/NativeResponse;

    invoke-interface {v0, p1}, Lcom/baidu/mobad/feeds/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 1504
    const-string v0, "+++onAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1505
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    goto :goto_0
.end method

.method public isDownloadApp()Z
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "imageUrls"    # Ljava/lang/String;

    .prologue
    .line 1551
    const/4 v1, 0x0

    .line 1553
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget v2, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :goto_0
    new-instance v2, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$10;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$10;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1589
    if-eqz p1, :cond_1

    .line 1590
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://"

    .line 1591
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1592
    :cond_0
    const-string v2, "loadImage loadImage"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1593
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3400(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 1595
    :cond_1
    return-void

    .line 1554
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1234
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    if-nez v1, :cond_3

    .line 1235
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 1241
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    if-nez v1, :cond_4

    .line 1242
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->setValue(Landroid/view/View;)V

    .line 1251
    :goto_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1400(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1400(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adSource:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 1257
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v.getId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1258
    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isShow:Z

    if-nez v1, :cond_2

    .line 1259
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0, p1, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 1261
    :cond_2
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mView:Landroid/view/View;

    .line 1264
    return-void

    .line 1238
    :cond_3
    iput-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    goto :goto_0

    .line 1244
    :cond_4
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->access$1500(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)[I

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_5

    aget v0, v3, v1

    .line 1245
    .local v0, "subId":I
    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->checkSubView(Landroid/view/View;I)V

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1247
    .end local v0    # "subId":I
    :cond_5
    iput-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    goto :goto_1
.end method

.method public recycleImage(Landroid/view/View;)V
    .locals 4
    .param p1, "imageView"    # Landroid/view/View;

    .prologue
    .line 1598
    const/4 v1, 0x0

    .line 1600
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget v3, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 1602
    if-eqz v1, :cond_0

    .line 1603
    const-string v3, "loadImage onViewDetachedFromWindow bitmap.recycle():"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1606
    :catch_0
    move-exception v2

    .line 1607
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public regKsViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adInteractionListener"    # Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 975
    .local p2, "clickViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;

    invoke-direct {v1, p0, p3}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    .line 1001
    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "listen"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p2, "clickViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "creativeViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;

    invoke-direct {v1, p0, p4}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 1034
    :cond_0
    return-void
.end method

.method public renderExpress()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 963
    :cond_0
    return-void
.end method

.method public scrollIdle(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1409
    const-string v0, "scrollIdle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1410
    if-nez p1, :cond_0

    .line 1411
    const-string v0, "NativeAd"

    const-string v1, "scrollIdle list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_1

    .line 1414
    const-string v0, "NativeAd"

    const-string v1, "scrollIdle ad is not nubia ad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_1
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 1450
    return-void
.end method

.method public scrollIdle(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 1365
    const-string v0, "scrollIdle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1366
    if-nez p1, :cond_0

    .line 1367
    const-string v0, "NativeAd"

    const-string v1, "scrollIdle list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_1

    .line 1370
    const-string v0, "NativeAd"

    const-string v1, "scrollIdle ad is not nubia ad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_1
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$7;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$7;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Landroid/widget/ListView;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 1406
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 865
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 868
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dislikeInteractionCallback"    # Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 912
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1
    .param p1, "dislikeDialog"    # Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 918
    :cond_0
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 957
    :cond_0
    return-void
.end method

.method public setImagsBindDataProxy(Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, "imagsBindDataProxy":Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy<[Landroid/view/View;[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    .line 1215
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->access$1800(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    .line 1216
    .local v2, "views":[Landroid/view/View;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1217
    array-length v3, v2

    new-array v1, v3, [I

    .line 1218
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1219
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    aput v3, v1, v0

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adImage:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-static {v3, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->access$1502(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;[I)[I

    .line 1225
    return-void

    .line 1223
    .end local v0    # "i":I
    .end local v1    # "ids":[I
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "\u7ed1\u5b9a\u89c6\u56fe\u4e0d\u5b58\u5728"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setKsVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .locals 2
    .param p1, "videoPlayListener"    # Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mKsNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsNativeAd;->setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    .line 1362
    :cond_0
    return-void
.end method

.method public setTTDownListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 2
    .param p1, "downloadListener"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .prologue
    .line 1037
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1088
    .local v0, "listener":Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1095
    :cond_1
    return-void
.end method

.method public setTitlBindDataProxy(Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, "titleBindDataProxy":Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy<Landroid/view/View;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;

    .line 1229
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1600(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;->access$1402(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdText;I)I

    .line 1230
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 881
    :cond_0
    return-void
.end method
