.class Lcn/nubia/touping/AbstractActivity$5$2;
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


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/AbstractActivity$5;

    .prologue
    .line 520
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$5$2;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5$2;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity$5$2;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v1, v1, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Lcn/nubia/touping/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5$2;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 525
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity$5$2;->this$1:Lcn/nubia/touping/AbstractActivity$5;

    iget-object v0, v0, Lcn/nubia/touping/AbstractActivity$5;->this$0:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 526
    return-void
.end method
