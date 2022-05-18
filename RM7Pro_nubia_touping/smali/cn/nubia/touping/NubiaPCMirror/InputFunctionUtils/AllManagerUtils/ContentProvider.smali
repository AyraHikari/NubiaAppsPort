.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field private static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field private static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field private static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field private static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field private static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field private static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final NAME_VALUE_TABLE_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_GLOBAL:Ljava/lang/String; = "global"

.field public static final TABLE_SECURE:Ljava/lang/String; = "secure"

.field public static final TABLE_SYSTEM:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private callMethod:Ljava/lang/reflect/Method;

.field private callMethodLegacy:Z

.field private final manager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

.field private final name:Ljava/lang/String;

.field private final provider:Ljava/lang/Object;

.field private final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "manager"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;
    .param p2, "provider"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->manager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    .line 44
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->provider:Ljava/lang/Object;

    .line 45
    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->token:Landroid/os/IBinder;

    .line 47
    return-void
.end method

.method private call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "callMethod"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->getCallMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 66
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethodLegacy:Z

    if-nez v3, :cond_0

    .line 67
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cn.nubia.touping"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "settings"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object p1, v0, v3

    const/4 v3, 0x3

    aput-object p2, v0, v3

    const/4 v3, 0x4

    aput-object p3, v0, v3

    .line 71
    .local v0, "args":[Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->provider:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 74
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 69
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cn.nubia.touping"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object p1, v0, v3

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "args":[Ljava/lang/Object;
    goto :goto_0

    .line 72
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    const-string v3, "ContentProvider"

    const-string v4, "Could not invoke method"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private getCallMethod()Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 50
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->provider:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "call"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethod:Ljava/lang/reflect/Method;

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->provider:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "call"

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethod:Ljava/lang/reflect/Method;

    .line 56
    iput-boolean v6, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->callMethodLegacy:Z

    goto :goto_0
.end method

.method private static getGetMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "table"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :sswitch_0
    const-string v1, "secure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "global"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 85
    :pswitch_0
    const-string v0, "GET_secure"

    .line 89
    :goto_1
    return-object v0

    .line 87
    :pswitch_1
    const-string v0, "GET_system"

    goto :goto_1

    .line 89
    :pswitch_2
    const-string v0, "GET_global"

    goto :goto_1

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_2
        -0x3604a489 -> :sswitch_0
        -0x34e38dd1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getPutMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "table"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :sswitch_0
    const-string v1, "secure"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "global"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 98
    :pswitch_0
    const-string v0, "PUT_secure"

    .line 102
    :goto_1
    return-object v0

    .line 100
    :pswitch_1
    const-string v0, "PUT_system"

    goto :goto_1

    .line 102
    :pswitch_2
    const-string v0, "PUT_global"

    goto :goto_1

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_2
        -0x3604a489 -> :sswitch_0
        -0x34e38dd1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->manager:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->name:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 80
    return-void
.end method

.method public getAndPutValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "oldValue":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->getGetMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "method":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "arg":Landroid/os/Bundle;
    const-string v3, "_user"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-direct {p0, v2, p2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 113
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->getPutMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "method":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "arg":Landroid/os/Bundle;
    const-string v2, "_user"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "value"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v1, p2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 125
    return-void
.end method
