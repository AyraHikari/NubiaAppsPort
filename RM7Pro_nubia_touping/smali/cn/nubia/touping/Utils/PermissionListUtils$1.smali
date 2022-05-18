.class final Lcn/nubia/touping/Utils/PermissionListUtils$1;
.super Ljava/lang/Object;
.source "PermissionListUtils.java"

# interfaces
.implements Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/PermissionListUtils;->requestPermission(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 30
    const-string v1, "cn.nubia.touping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-nez p1, :cond_1

    .line 32
    const-string v1, "NubiaCTAPermissionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v1, "grant_count"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "grant_count":I
    const-string v1, "cn.nubia.touping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grant_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 40
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v1, Lcn/nubia/touping/AbstractActivity;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/AbstractActivity;->doSomethingWhenAgreen()V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->doSomethingWhenAgreen()V

    goto :goto_0

    .line 47
    :cond_3
    if-eq v4, v0, :cond_4

    const/4 v1, 0x2

    if-ne v1, v0, :cond_5

    .line 48
    :cond_4
    if-eqz p1, :cond_6

    .line 49
    const-string v1, "cn.nubia.touping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NubiaCTAPermissionUtils failed >> grant_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_5
    :goto_1
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v1, Lcn/nubia/touping/AbstractActivity;

    if-eqz v1, :cond_7

    .line 55
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/AbstractActivity;->doSomethingWhenAgreen()V

    goto :goto_0

    .line 51
    :cond_6
    const-string v1, "cn.nubia.touping"

    const-string v2, "NubiaCTAPermissionUtils failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    :cond_7
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcn/nubia/touping/Utils/PermissionListUtils$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->doSomethingWhenAgreen()V

    goto :goto_0
.end method
