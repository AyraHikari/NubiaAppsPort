.class final Lcn/nubia/touping/Utils/HttpPostRequest$1;
.super Ljava/lang/Object;
.source "HttpPostRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/HttpPostRequest;->getLeboVip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/touping/Utils/HttpPostRequest$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    iget-object v1, p0, Lcn/nubia/touping/Utils/HttpPostRequest$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/touping/Utils/HttpPostRequest;->getDataByLeBoGet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "resultFromServer":Ljava/lang/String;
    const-string v1, "HttpPostRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultFromServer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/HttpPostRequest$1;->val$context:Landroid/content/Context;

    const-string v2, "LELINK_VIP_HADGET"

    invoke-static {v1, v2, v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void
.end method
