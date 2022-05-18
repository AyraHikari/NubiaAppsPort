.class Lcn/nubia/analytic/sdk/BinderDataHandler$2;
.super Ljava/lang/Object;
.source "BinderDataHandler.java"

# interfaces
.implements Lcn/nubia/analytic/interfaces/RemoteDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/analytic/sdk/BinderDataHandler;->fetchServerTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/analytic/sdk/BinderDataHandler;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/analytic/sdk/BinderDataHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$2;->a:Lcn/nubia/analytic/sdk/BinderDataHandler;

    iput-object p2, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$2;->b:Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 113
    const-string v0, "responseFetchSystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    const-string v2, "responseFetchTimeZone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v3, "BinderDataHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetchServerTime success with serverTime"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",timeZone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$2;->a:Lcn/nubia/analytic/sdk/BinderDataHandler;

    iget-object v3, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$2;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcn/nubia/analytic/sdk/BinderDataHandler;->access$1(Lcn/nubia/analytic/sdk/BinderDataHandler;Landroid/content/Context;J)V

    .line 117
    return-void
.end method
