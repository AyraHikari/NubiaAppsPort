.class Lcn/nubia/touping/AbstractActivity$1;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/AbstractActivity;->doSomethingForLeboVIP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/AbstractActivity;

.field final synthetic val$scanResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 219
    iput-object p1, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    iput-object p2, p0, Lcn/nubia/touping/AbstractActivity$1;->val$scanResult:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xde

    .line 222
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    const-string v3, "LELINK_VIP_HADGET"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "result":Ljava/lang/String;
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v3, p0, Lcn/nubia/touping/AbstractActivity$1;->val$scanResult:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lcn/nubia/touping/AbstractActivity;->access$100(Lcn/nubia/touping/AbstractActivity;ILjava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    const-class v3, Lcn/nubia/touping/PCMirrorActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "MirrorActivityqrUrl"

    iget-object v3, p0, Lcn/nubia/touping/AbstractActivity$1;->val$scanResult:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity$1;->this$0:Lcn/nubia/touping/AbstractActivity;

    iget-object v3, p0, Lcn/nubia/touping/AbstractActivity$1;->val$scanResult:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lcn/nubia/touping/AbstractActivity;->access$100(Lcn/nubia/touping/AbstractActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
