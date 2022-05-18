.class public Lcn/nubia/analytic/sdk/DataHandlerFactory;
.super Ljava/lang/Object;
.source "DataHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcn/nubia/analytic/sdk/DataHandlerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/analytic/sdk/DataHandlerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataHandler(Landroid/content/Context;)Lcn/nubia/analytic/interfaces/IDataHandler;
    .locals 6

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getSendBy(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    new-instance v0, Lcn/nubia/analytic/sdk/BinderDataHandler;

    invoke-direct {v0}, Lcn/nubia/analytic/sdk/BinderDataHandler;-><init>()V

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v2, Lcn/nubia/analytic/sdk/DataHandlerFactory;->TAG:Ljava/lang/String;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use SdkDataHandler COST time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Lcn/nubia/analytic/util/NeoLog;->iSdk(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method
