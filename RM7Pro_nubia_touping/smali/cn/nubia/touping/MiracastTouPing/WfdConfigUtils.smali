.class public Lcn/nubia/touping/MiracastTouPing/WfdConfigUtils;
.super Ljava/lang/Object;
.source "WfdConfigUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdConfigUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveMiracastTouPingQuality(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    :try_start_0
    const-string v5, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 19
    .local v3, "quality":I
    const-string v4, ""

    .line 20
    .local v4, "wfdconfigpath":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 37
    const-string v4, "vendor/etc/wfdconfig.xml"

    .line 39
    :goto_0
    const-string v5, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "setSystemProperties"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "sys.nubia.tp.wfdconfig"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "quality":I
    .end local v4    # "wfdconfigpath":Ljava/lang/String;
    :goto_1
    return-void

    .line 22
    .restart local v3    # "quality":I
    .restart local v4    # "wfdconfigpath":Ljava/lang/String;
    :pswitch_0
    const-string v4, "vendor/etc/wfdconfig0.xml"

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    const-string v4, "vendor/etc/wfdconfig1.xml"

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    const-string v4, "vendor/etc/wfdconfig2.xml"

    .line 29
    goto :goto_0

    .line 31
    :pswitch_3
    const-string v4, "vendor/etc/wfdconfig3.xml"

    .line 32
    goto :goto_0

    .line 34
    :pswitch_4
    const-string v4, "vendor/etc/wfdconfig4.xml"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 42
    .end local v3    # "quality":I
    .end local v4    # "wfdconfigpath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const-string v5, "WfdConfigUtils"

    const-string v6, "changleitest555 saveMiracastTouPingQuality exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
