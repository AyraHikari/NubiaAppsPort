.class public Lcn/nubia/cloud/utils/ObjectProxy;
.super Ljava/lang/Object;
.source "ObjectProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;,
        Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    .line 16
    iput-object p2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
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

    .line 22
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 28
    new-instance v0, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 26
    new-instance v0, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs getMethodInvoker(Ljava/lang/String;[Ljava/lang/Class;)Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 51
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p2, v2

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;

    if-nez v1, :cond_2

    .line 59
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;

    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    .line 60
    iget-object v3, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 59
    invoke-direct {v1, v2, p1}, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object p1, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {p2, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_2
    return-object v1
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {p2, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {p2, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 40
    new-instance p2, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {p2, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
