.class public Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
.super Ljava/lang/Object;
.source "WifiDisplayMiracastBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDisplayMiracastBean"


# instance fields
.field private mCanConnect:Z

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAlias:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mIsRemembered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiDisplayMiracastBean(Ljava/lang/Object;)Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .locals 19
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 29
    :try_start_0
    new-instance v9, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    invoke-direct {v9}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;-><init>()V

    .line 31
    .local v9, "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei className = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "getDeviceAddress"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 34
    .local v10, "method_1":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_1 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "mDeviceAddress":Ljava/lang/String;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mDeviceAddress = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9, v4}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmDeviceAddress(Ljava/lang/String;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "getDeviceName"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 40
    .local v11, "method_2":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_2 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    .local v6, "mDeviceName":Ljava/lang/String;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mDeviceName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v9, v6}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmDeviceName(Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "getDeviceAlias"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 46
    .local v12, "method_3":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_3 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    .local v5, "mDeviceAlias":Ljava/lang/String;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mDeviceAlias = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9, v5}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmDeviceAlias(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "isAvailable"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 52
    .local v13, "method_4":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_4 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 54
    .local v7, "mIsAvailable":Z
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mIsAvailable = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v9, v7}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmIsAvailable(Z)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "canConnect"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 58
    .local v14, "method_5":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_5 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 60
    .local v3, "mCanConnect":Z
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mCanConnect = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v9, v3}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmCanConnect(Z)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "isRemembered"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 64
    .local v15, "method_6":Ljava/lang/reflect/Method;
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei method_6 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 66
    .local v8, "mIsRemembered":Z
    const-string v16, "WifiDisplayMiracastBean"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "changlei mIsRemembered = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9, v8}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->setmIsRemembered(Z)V

    .line 69
    const-string v16, "WifiDisplayMiracastBean"

    const-string v17, "changlei method_6 = end"

    invoke-static/range {v16 .. v17}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v3    # "mCanConnect":Z
    .end local v4    # "mDeviceAddress":Ljava/lang/String;
    .end local v5    # "mDeviceAlias":Ljava/lang/String;
    .end local v6    # "mDeviceName":Ljava/lang/String;
    .end local v7    # "mIsAvailable":Z
    .end local v8    # "mIsRemembered":Z
    .end local v9    # "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .end local v10    # "method_1":Ljava/lang/reflect/Method;
    .end local v11    # "method_2":Ljava/lang/reflect/Method;
    .end local v12    # "method_3":Ljava/lang/reflect/Method;
    .end local v13    # "method_4":Ljava/lang/reflect/Method;
    .end local v14    # "method_5":Ljava/lang/reflect/Method;
    .end local v15    # "method_6":Ljava/lang/reflect/Method;
    :goto_0
    return-object v9

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getmDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeviceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public ismCanConnect()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mCanConnect:Z

    return v0
.end method

.method public ismIsAvailable()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsAvailable:Z

    return v0
.end method

.method public ismIsRemembered()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsRemembered:Z

    return v0
.end method

.method public setmCanConnect(Z)V
    .locals 0
    .param p1, "mCanConnect"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mCanConnect:Z

    .line 115
    return-void
.end method

.method public setmDeviceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceAddress"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAddress:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setmDeviceAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceAlias"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAlias:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setmDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setmIsAvailable(Z)V
    .locals 0
    .param p1, "mIsAvailable"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsAvailable:Z

    .line 107
    return-void
.end method

.method public setmIsRemembered(Z)V
    .locals 0
    .param p1, "mIsRemembered"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsRemembered:Z

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplayMiracastBean{mDeviceAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mCanConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRemembered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->mIsRemembered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
