.class public Lcn/nubia/cloud/utils/ObjectProxy;
.super Ljava/lang/Object;
.source "ObjectProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;,
        Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;",
            ">;"
        }
    .end annotation
.end field

.field private final mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    .line 16
    iput-object p2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .prologue
    .line 22
    :try_start_0
    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 23
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 25
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 27
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 29
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public varargs getMethodInvoker(Ljava/lang/String;[Ljava/lang/Class;)Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "keyBuilder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 51
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 52
    .local v1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "methodKey":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;

    .line 57
    .local v6, "methodInvoker":Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    if-nez v6, :cond_1

    .line 59
    :try_start_0
    new-instance v6, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;

    .end local v6    # "methodInvoker":Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    iget-object v8, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    iget-object v9, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v9, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .restart local v6    # "methodInvoker":Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    iget-object v8, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    return-object v6

    .line 61
    .end local v6    # "methodInvoker":Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v8, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v8, v2}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 37
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    return-void

    .line 39
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 41
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v2, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
