.class public Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;
.super Ljava/lang/Object;
.source "ObjectProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/ObjectProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInvoker"
.end annotation


# instance fields
.field public final mMethod:Ljava/lang/reflect/Method;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mObject:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 87
    new-instance v0, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
