.class Lcn/nubia/touping/LelinkProcessService$1;
.super Ljava/lang/Object;
.source "LelinkProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/LelinkProcessService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/LelinkProcessService;

.field final synthetic val$cast_app:Ljava/lang/String;

.field final synthetic val$cast_package:Ljava/lang/String;

.field final synthetic val$small_window:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 241
    iput-object p1, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    iput-object p2, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_package:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_app:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$small_window:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 244
    sget-object v6, Lcn/nubia/touping/LelinkProcessService;->CURRENT_FROM:Ljava/lang/String;

    const-string v7, "FROM_WIRELESS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-string v6, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 246
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "BURYINGPOINT_WIRELESS_CALL4"

    const-string v7, "LelinkProcessService"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-virtual {v6}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, ""

    const-string v8, "CALL_4"

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 251
    .local v1, "bundleResult":Landroid/os/Bundle;
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6}, Lcn/nubia/touping/LelinkProcessService;->access$000(Lcn/nubia/touping/LelinkProcessService;)J

    move-result-wide v2

    .line 252
    .local v2, "durationTime":J
    const-string v6, "CALL_4_KEY5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->getRealBitRate()I

    move-result v4

    .line 254
    .local v4, "realBirRate":I
    const-string v6, "CALL_4_KEY8"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v6, "CALL_4_KEY14"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v6, "CALL_4_KEY15"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$small_window:Z

    if-eqz v6, :cond_0

    .line 259
    const-string v6, "CALL_4_KEY17"

    const-string v7, "small_window"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setAllNeedData2SystemForWireLess(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 283
    .end local v4    # "realBirRate":I
    :goto_1
    return-void

    .line 261
    .restart local v4    # "realBirRate":I
    :cond_0
    const-string v6, "CALL_4_KEY17"

    const-string v7, "mirror"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleResult":Landroid/os/Bundle;
    .end local v2    # "durationTime":J
    .end local v4    # "realBirRate":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v6, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 266
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v6, "BURYINGPOINT_WIRE_CALL5"

    const-string v7, "LelinkProcessService"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-virtual {v6}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, ""

    const-string v8, "CALL_5"

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 271
    .restart local v1    # "bundleResult":Landroid/os/Bundle;
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6}, Lcn/nubia/touping/LelinkProcessService;->access$000(Lcn/nubia/touping/LelinkProcessService;)J

    move-result-wide v2

    .line 272
    .restart local v2    # "durationTime":J
    const-string v6, "CALL_5_KEY2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v6, "CALL_5_KEY4"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_package:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v6, "CALL_5_KEY5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$cast_app:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-boolean v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->val$small_window:Z

    if-eqz v6, :cond_2

    .line 276
    const-string v6, "CALL_5_KEY11"

    const-string v7, "small_window"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_2
    iget-object v6, p0, Lcn/nubia/touping/LelinkProcessService$1;->this$0:Lcn/nubia/touping/LelinkProcessService;

    invoke-static {v6, v1}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setAllNeedData2SystemForWire(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 278
    :cond_2
    const-string v6, "CALL_5_KEY11"

    const-string v7, "mirror"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
