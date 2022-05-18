.class final Lcn/nubia/touping/Utils/HttpPostRequest$2;
.super Ljava/lang/Object;
.source "HttpPostRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/HttpPostRequest;->getLeboVip(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$qrString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$qrString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/Utils/HttpPostRequest;->getDataByLeBoGet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "resultFromServer":Ljava/lang/String;
    const-string v2, "HttpPostRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultFromServer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    const-string v3, "LELINK_VIP_HADGET"

    invoke-static {v2, v3, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    check-cast v2, Lcn/nubia/touping/AbstractActivity;

    iget-object v3, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$qrString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/touping/AbstractActivity;->doSomethingForLeboVIP(Ljava/lang/String;)V

    .line 64
    .end local v1    # "resultFromServer":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iget-object v2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    check-cast v2, Lcn/nubia/touping/AbstractActivity;

    iget-object v3, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$qrString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/touping/AbstractActivity;->doSomethingForLeboVIP(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$context:Landroid/content/Context;

    check-cast v2, Lcn/nubia/touping/AbstractActivity;

    iget-object v4, p0, Lcn/nubia/touping/Utils/HttpPostRequest$2;->val$qrString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcn/nubia/touping/AbstractActivity;->doSomethingForLeboVIP(Ljava/lang/String;)V

    throw v3
.end method
