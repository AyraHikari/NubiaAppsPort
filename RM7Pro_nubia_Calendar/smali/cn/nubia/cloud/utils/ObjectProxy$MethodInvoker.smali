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
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mObject:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    .line 76
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
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

    .prologue
    .line 83
    iget-object v1, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/cloud/utils/ObjectProxy$MethodInvoker;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/utils/ObjectProxy$ObjectProxyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
