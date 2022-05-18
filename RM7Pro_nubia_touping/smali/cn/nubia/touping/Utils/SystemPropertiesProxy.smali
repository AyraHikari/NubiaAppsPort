.class public Lcn/nubia/touping/Utils/SystemPropertiesProxy;
.super Ljava/lang/Object;
.source "SystemPropertiesProxy.java"


# static fields
.field public static final PROPERTY_HDMI_ROTATION:Ljava/lang/String; = "persist.sys.nubia.hdmirotation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 12
    const-string v7, ""

    .line 14
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 15
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 16
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 17
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 18
    const-string v8, "get"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 19
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 20
    .local v6, "params":[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 21
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ret":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    .restart local v7    # "ret":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 22
    .end local v7    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 23
    .local v4, "iAE":Ljava/lang/IllegalArgumentException;
    throw v4

    .line 24
    .end local v4    # "iAE":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, ""

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0
.end method
