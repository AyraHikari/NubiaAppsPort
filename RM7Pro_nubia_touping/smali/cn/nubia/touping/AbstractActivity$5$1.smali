.class Lcn/nubia/touping/AbstractActivity$5$1;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity$5;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/AbstractActivity$5;

.field final synthetic val$info:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity$5;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/AbstractActivity$5;

    .prologue
    .line 512
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$5$1;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iput-object p2, p0, Lcn/nubia/touping/AbstractActivity$5$1;->val$info:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5$1;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$5$1;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v2, v2, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Lcn/nubia/touping/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$5$1;->val$info:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    return-void
.end method
