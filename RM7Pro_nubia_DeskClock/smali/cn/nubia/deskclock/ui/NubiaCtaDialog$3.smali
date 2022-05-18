.class Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;
.super Ljava/lang/Object;
.source "NubiaCtaDialog.java"

# interfaces
.implements Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/NubiaCtaDialog;->requestPermissions(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->this$0:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 122
    if-nez p1, :cond_1

    .line 123
    const-string v1, "NubiaCtaDialog"

    const-string v2, " result is null"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v1, "grant_count"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "grant_count":I
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/Utils;->saveAllowAccessNetworkToSharedPref(Landroid/content/Context;Z)V

    .line 129
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/Utils;->saveFirstLaunchToSharedPref(Landroid/content/Context;Z)V

    .line 131
    const-string v1, "NubiaCtaDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onRequestResult grant_count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-ne v4, v0, :cond_2

    .line 133
    const-string v1, "NubiaCtaDialog"

    const-string v2, " request permission failed"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    instance-of v1, v1, Lcn/nubia/deskclock/DeskClock;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    check-cast v1, Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->checkAndRequestPermissions()V

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, -0x2

    if-ne v1, v0, :cond_4

    .line 138
    const-string v1, "NubiaCtaDialog"

    const-string v2, " request permission not support this requestPermission method"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    instance-of v1, v1, Lcn/nubia/deskclock/DeskClock;

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$context:Landroid/content/Context;

    check-cast v1, Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->checkAndRequestPermissions()V

    .line 142
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    invoke-interface {v1}, Lcn/nubia/deskclock/inter/INubiaCtaCallback;->onCtaShown()V

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "NubiaCtaDialog"

    const-string v2, " request permission success"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;->val$nubiaCtaCallBack:Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    invoke-interface {v1}, Lcn/nubia/deskclock/inter/INubiaCtaCallback;->onCtaShown()V

    goto :goto_0
.end method
