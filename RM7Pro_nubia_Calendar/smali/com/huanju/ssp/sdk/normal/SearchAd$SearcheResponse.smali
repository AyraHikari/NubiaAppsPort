.class public Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
.super Ljava/lang/Object;
.source "SearchAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SearchAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearcheResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;,
        Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;
    }
.end annotation


# static fields
.field public static final BIG_IMAG:I = 0x3

.field public static final IMAGS:I = 0x1

.field public static final SMALL_IMAG:I = 0x2


# instance fields
.field private adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

.field private adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

.field private adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

.field private adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

.field private imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isShow:Z

.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

.field private titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 3
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SearchAd;
    .param p2, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 115
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    .line 116
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->sub_title:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    .line 117
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    iget-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->imgurl:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    .line 118
    const-string v0, ""

    .line 119
    .local v0, "src":Ljava/lang/String;
    iget v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 120
    const-string v0, "\u5e7f\u544a"

    .line 126
    :cond_0
    :goto_0
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    .line 129
    return-void

    .line 121
    :cond_1
    iget v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 122
    const-string v0, "\u63a8\u5e7f"

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    return v0
.end method

.method private submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "findView"    # Landroid/view/View;
    .param p2, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 268
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method


# virtual methods
.method public varargs bindingImgUrl([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->access$302(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;[I)[I

    .line 145
    return-void
.end method

.method public bindingSource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$202(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;I)I

    .line 141
    return-void
.end method

.method public bindingSub_title(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$202(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;I)I

    .line 137
    return-void
.end method

.method public bindingTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$202(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;I)I

    .line 133
    return-void
.end method

.method checkSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "parant"    # Landroid/view/View;
    .param p2, "subId"    # I

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "textvView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    return-void
.end method

.method public closeClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "reason"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "&&&&downloadClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 327
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const-string v0, "&&&&clickAdDownload:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1500(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1, p2, p3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAdClos(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;ILjava/lang/String;)V

    .line 331
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 335
    :cond_0
    return-void
.end method

.method public downloadClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    const-string v0, "&&&&downloadClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1200(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-string v0, "&&&&clickAdDownload:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1300(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 313
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 317
    :cond_0
    return-void
.end method

.method getAdUUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;->type:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    return v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$900(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1000(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 300
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1100(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 301
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 305
    :cond_0
    return-void
.end method

.method public isDownloadApp()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

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
    .line 343
    const/4 v1, 0x0

    .line 345
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

    .line 350
    :goto_0
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    :cond_0
    new-instance v2, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$2;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$2;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 381
    if-eqz p1, :cond_2

    .line 382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://"

    .line 383
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1600(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 386
    :cond_2
    return-void

    .line 346
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

    .line 199
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    if-nez v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    if-nez v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->setValue(Landroid/view/View;)V

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$200(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSub_title:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$200(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adSource:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-virtual {v1, p1, v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->setValue(Landroid/view/View;Z)V

    .line 223
    :cond_1
    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    if-nez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->isShow:Z

    .line 228
    :cond_2
    return-void

    .line 203
    :cond_3
    iput-object v5, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->access$300(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;)[I

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_5

    aget v0, v3, v1

    .line 210
    .local v0, "subId":I
    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->checkSubView(Landroid/view/View;I)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    .end local v0    # "subId":I
    :cond_5
    iput-object v5, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    goto :goto_1
.end method

.method public setImagsBindDataProxy(Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "imagsBindDataProxy":Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy<[Landroid/view/View;[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->imagsBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    .line 180
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->access$500(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    .line 181
    .local v2, "views":[Landroid/view/View;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 182
    array-length v3, v2

    new-array v1, v3, [I

    .line 183
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 184
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    aput v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adImage:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    invoke-static {v3, v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->access$302(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;[I)[I

    .line 190
    return-void

    .line 188
    .end local v0    # "i":I
    .end local v1    # "ids":[I
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "\u7ed1\u5b9a\u89c6\u56fe\u4e0d\u5b58\u5728"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setTitlBindDataProxy(Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "titleBindDataProxy":Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy<Landroid/view/View;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->titleBindDataProxy:Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;

    .line 194
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->adTitle:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$400(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$BindDataProxy;->BindData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;->access$202(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdText;I)I

    .line 195
    return-void
.end method
