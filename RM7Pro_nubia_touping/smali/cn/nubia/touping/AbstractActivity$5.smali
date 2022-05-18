.class Lcn/nubia/touping/AbstractActivity$5;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IParceResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity;->getQRCodeDevice(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "info"    # Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .prologue
    const/4 v0, 0x1

    .line 500
    if-ne p1, v0, :cond_2

    .line 501
    if-nez p2, :cond_0

    .line 530
    :goto_0
    return-void

    .line 502
    :cond_0
    sput-object p2, Lcn/nubia/touping/AbstractActivity;->mSelectInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 503
    sput v0, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 504
    if-eqz p2, :cond_1

    .line 505
    const-string v0, "AbstractActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QR type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 508
    const-string v0, "AbstractActivity"

    const-string v1, "QR startMirrorTouPing = begin"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v0, p2}, Lcn/nubia/touping/Utils/LeBoOprate;->startMirrorTouPing(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 510
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/nubia/touping/Utils/LeBoOprate;->setLinkType(I)V

    .line 511
    const-string v0, "AbstractActivity"

    const-string v1, "QR startMirrorTouPing = end"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    new-instance v1, Lcn/nubia/touping/AbstractActivity$5$1;

    invoke-direct {v1, p0, p2}, Lcn/nubia/touping/AbstractActivity$5$1;-><init>(Lcn/nubia/touping/AbstractActivity$5;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/AbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 519
    :cond_2
    const-string v0, "AbstractActivity"

    const-string v1, "QR else = begin"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    new-instance v1, Lcn/nubia/touping/AbstractActivity$5$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/AbstractActivity$5$2;-><init>(Lcn/nubia/touping/AbstractActivity$5;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/AbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    const-string v0, "AbstractActivity"

    const-string v1, "QR else = begin"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
