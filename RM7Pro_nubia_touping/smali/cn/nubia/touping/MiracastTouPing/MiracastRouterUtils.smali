.class public Lcn/nubia/touping/MiracastTouPing/MiracastRouterUtils;
.super Ljava/lang/Object;
.source "MiracastRouterUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiracastTouPingUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRouterGroupId(Landroid/media/MediaRouter;)Z
    .locals 10
    .param p0, "mediaRouter"    # Landroid/media/MediaRouter;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setRouterGroupId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 19
    .local v1, "method_1":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.media.mirroring_group"

    aput-object v7, v5, v6

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    .local v2, "obj":Ljava/lang/Object;
    const-string v5, "MiracastTouPingUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "miracasttest obj = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v2, :cond_0

    .line 26
    .end local v1    # "method_1":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local v1    # "method_1":Ljava/lang/reflect/Method;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    move v3, v4

    .line 21
    goto :goto_0

    .line 22
    .end local v1    # "method_1":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const-string v3, "MiracastTouPingUtils"

    const-string v5, "miracasttest 1 test setRouterGroupId exception"

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 26
    goto :goto_0
.end method
