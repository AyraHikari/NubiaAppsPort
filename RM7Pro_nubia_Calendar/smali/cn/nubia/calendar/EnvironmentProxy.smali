.class public Lcn/nubia/calendar/EnvironmentProxy;
.super Ljava/lang/Object;
.source "EnvironmentProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondaryStorageDirectory()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 11
    :try_start_0
    const-string v5, "android.os.Environment"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 12
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "getSecondaryStorageDirectory"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 14
    .local v2, "getSecondaryDir":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 15
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 17
    check-cast v3, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    .end local v2    # "getSecondaryDir":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    move-object v3, v4

    .line 28
    goto :goto_0

    .line 22
    :catch_1
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 24
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSecondaryStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 33
    :try_start_0
    const-string v4, "android.os.Environment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "getSecondaryStorageState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 35
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "getSecondaryState":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 37
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 39
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v2    # "getSecondaryState":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 50
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    const-string v3, "removed"

    goto :goto_0

    .line 44
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
