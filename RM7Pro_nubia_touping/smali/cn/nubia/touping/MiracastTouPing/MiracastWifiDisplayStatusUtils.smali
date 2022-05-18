.class public Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;
.super Ljava/lang/Object;
.source "MiracastWifiDisplayStatusUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiracastWifiDisplayStatusUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectWifiDisplay(Landroid/content/Context;Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mWifiDisplayMiracastBean"    # Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    .prologue
    .line 104
    :try_start_0
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test connectWifiDisplay begin"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "display"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 107
    .local v1, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "connectWifiDisplay"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    .local v2, "method_1":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test connectWifiDisplay end"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "method_1":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test connectWifiDisplay exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static disconnectWifiDisplay(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    :try_start_0
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test disconnectWifiDisplay begin"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v3, "display"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 122
    .local v1, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "disconnectWifiDisplay"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    .local v2, "method_1":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test disconnectWifiDisplay end"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "method_1":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string v3, "MiracastWifiDisplayStatusUtils"

    const-string v4, "changlei 1 test disconnectWifiDisplay exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentTouPingStatus(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "DISPLAY_STATE_NOT_CONNECTED":I
    const/4 v1, 0x1

    .line 52
    .local v1, "DISPLAY_STATE_CONNECTING":I
    const/4 v0, 0x2

    .line 54
    .local v0, "DISPLAY_STATE_CONNECTED":I
    :try_start_0
    const-string v11, "display"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 55
    .local v5, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getWifiDisplayStatus"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 56
    .local v7, "method_1":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 58
    .local v8, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getActiveDisplayState"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 59
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 60
    .local v9, "result":Ljava/lang/Object;
    const-string v11, "MiracastWifiDisplayStatusUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changlei result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "result":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 62
    .local v4, "flag":I
    const-string v11, "MiracastWifiDisplayStatusUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changlei flag = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v4    # "flag":I
    .end local v5    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "method_1":Ljava/lang/reflect/Method;
    .end local v8    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const-string v11, "MiracastWifiDisplayStatusUtils"

    const-string v12, "changlei 1 test getCurrentTouPingStatus exception"

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v10

    .line 68
    goto :goto_0
.end method

.method public static getDisplays(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    :try_start_0
    const-string v10, "display"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 176
    .local v5, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getWifiDisplayStatus"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 177
    .local v7, "method_1":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 179
    .local v8, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getDisplays"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 180
    .local v6, "method":Ljava/lang/reflect/Method;
    const-string v10, "MiracastWifiDisplayStatusUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changlei method = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 182
    .local v1, "displays":[Ljava/lang/Object;
    const-string v10, "MiracastWifiDisplayStatusUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changlei displays = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v1, :cond_0

    .line 184
    const-string v10, "MiracastWifiDisplayStatusUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changlei displays.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_2

    .line 187
    aget-object v10, v1, v3

    invoke-static {v10}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getWifiDisplayMiracastBean(Ljava/lang/Object;)Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    move-result-object v9

    .line 188
    .local v9, "temp":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    if-eqz v9, :cond_1

    .line 189
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "displays":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v5    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "method_1":Ljava/lang/reflect/Method;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v9    # "temp":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method

.method public static getFeatureState(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 73
    :try_start_0
    const-string v7, "display"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 74
    .local v1, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getWifiDisplayStatus"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 75
    .local v3, "method_1":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getFeatureState"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 80
    .local v5, "result":Ljava/lang/Object;
    const-string v7, "MiracastWifiDisplayStatusUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changlei result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "result":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 86
    .end local v1    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "method_1":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return v6

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v7, "MiracastWifiDisplayStatusUtils"

    const-string v8, "changlei 1 test isMiracastTouPingStatus exception"

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMiracastTouPingDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    :try_start_0
    const-string v8, "display"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 154
    .local v2, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getWifiDisplayStatus"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 155
    .local v5, "method_1":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 157
    .local v6, "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getActiveDisplay"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 158
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "activeDisplay":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getDeviceAddress"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 161
    .local v4, "methodDeviceName":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 162
    .local v7, "result":Ljava/lang/Object;
    const-string v8, "MiracastWifiDisplayStatusUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changlei 2 getMiracastTouPingDeviceAddress result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "activeDisplay":Ljava/lang/Object;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodDeviceName":Ljava/lang/reflect/Method;
    .end local v5    # "method_1":Ljava/lang/reflect/Method;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "result":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const-string v8, "MiracastWifiDisplayStatusUtils"

    const-string v9, "changlei test getMiracastTouPingDeviceAddress exception"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v7, "Micracast"

    goto :goto_0
.end method

.method public static getMiracastTouPingDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    :try_start_0
    const-string v8, "display"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 134
    .local v2, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getWifiDisplayStatus"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 135
    .local v5, "method_1":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 137
    .local v6, "obj":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getActiveDisplay"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 138
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "activeDisplay":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getDeviceName"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 141
    .local v4, "methodDeviceName":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 142
    .local v7, "result":Ljava/lang/Object;
    const-string v8, "MiracastWifiDisplayStatusUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changlei 2 result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "activeDisplay":Ljava/lang/Object;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodDeviceName":Ljava/lang/reflect/Method;
    .end local v5    # "method_1":Ljava/lang/reflect/Method;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "result":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v8, "MiracastWifiDisplayStatusUtils"

    const-string v9, "changlei test getMiracastTouPingDeviceName exception"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v7, "Micracast"

    goto :goto_0
.end method

.method public static getWifiDisplayStatus(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    const-string v4, "display"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 92
    .local v1, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWifiDisplayStatus"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    .local v2, "method_1":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .end local v1    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "method_1":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMiracastTouPingStatus(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, "DISPLAY_STATE_NOT_CONNECTED":I
    const/4 v1, 0x1

    .line 25
    .local v1, "DISPLAY_STATE_CONNECTING":I
    const/4 v0, 0x2

    .line 27
    .local v0, "DISPLAY_STATE_CONNECTED":I
    :try_start_0
    const-string v11, "display"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 28
    .local v5, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getWifiDisplayStatus"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 29
    .local v7, "method_1":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 31
    .local v8, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getActiveDisplayState"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 32
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 33
    .local v9, "result":Ljava/lang/Object;
    const-string v11, "MiracastWifiDisplayStatusUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changlei result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "result":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v0, :cond_0

    const/4 v4, 0x1

    .line 35
    .local v4, "flag":Z
    :goto_0
    const-string v11, "MiracastWifiDisplayStatusUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changlei flag = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v4    # "flag":Z
    .end local v5    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "method_1":Ljava/lang/reflect/Method;
    .end local v8    # "obj":Ljava/lang/Object;
    :goto_1
    return v4

    .restart local v5    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "method_1":Ljava/lang/reflect/Method;
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_0
    move v4, v10

    .line 34
    goto :goto_0

    .line 37
    .end local v5    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "method_1":Ljava/lang/reflect/Method;
    .end local v8    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 38
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const-string v11, "MiracastWifiDisplayStatusUtils"

    const-string v12, "changlei 1 test isMiracastTouPingStatus exception"

    invoke-static {v11, v12}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v10

    .line 41
    goto :goto_1
.end method
