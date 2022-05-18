.class final Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->loadFromNet(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .prologue
    .line 130
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;->val$url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "ImageLoader"

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$2;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 155
    return-void
.end method
