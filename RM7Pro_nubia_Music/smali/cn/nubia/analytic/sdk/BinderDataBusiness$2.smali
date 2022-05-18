.class Lcn/nubia/analytic/sdk/BinderDataBusiness$2;
.super Ljava/lang/Object;
.source "BinderDataBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/analytic/sdk/BinderDataBusiness;->fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/analytic/sdk/BinderDataBusiness;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcn/nubia/analytic/interfaces/RemoteDataCallback;


# direct methods
.method constructor <init>(Lcn/nubia/analytic/sdk/BinderDataBusiness;Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->a:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    iput-object p2, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->c:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->a:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    invoke-static {v0}, Lcn/nubia/analytic/sdk/BinderDataBusiness;->access$0(Lcn/nubia/analytic/sdk/BinderDataBusiness;)Lcn/nubia/analytic/sdk/BinderDataHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;->c:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/analytic/sdk/BinderDataHandler;->fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method
