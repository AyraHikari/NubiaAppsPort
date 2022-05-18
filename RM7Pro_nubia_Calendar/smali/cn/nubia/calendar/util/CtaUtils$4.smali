.class Lcn/nubia/calendar/util/CtaUtils$4;
.super Ljava/lang/Object;
.source "CtaUtils.java"

# interfaces
.implements Lcn/nubia/calendar/util/PermissionRequestUtil$PermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/util/CtaUtils;->RequestPermission(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/util/CtaUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/util/CtaUtils;

    .prologue
    .line 167
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils$4;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iput-object p2, p0, Lcn/nubia/calendar/util/CtaUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 170
    if-nez p1, :cond_0

    .line 171
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

    .line 187
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v1, "grant_count"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, "grant_count":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 176
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils$4;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iget-object v2, p0, Lcn/nubia/calendar/util/CtaUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/CtaUtils;->access$100(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    goto :goto_0

    .line 179
    :cond_1
    if-eq v2, v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 180
    :cond_2
    if-eqz p1, :cond_4

    .line 181
    const-string v1, "calendar_preset"

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

    .line 186
    :cond_3
    :goto_1
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils$4;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iget-object v2, p0, Lcn/nubia/calendar/util/CtaUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/CtaUtils;->access$100(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :cond_4
    const-string v1, "calendar_preset"

    const-string v2, "NubiaCTAPermissionUtils failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
