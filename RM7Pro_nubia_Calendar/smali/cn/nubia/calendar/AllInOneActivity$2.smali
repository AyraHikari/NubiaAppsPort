.class Lcn/nubia/calendar/AllInOneActivity$2;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/AllInOneActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/AllInOneActivity;

.field final synthetic val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/AllInOneActivity;Lcom/huanju/ssp/sdk/inf/AdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/AllInOneActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/calendar/AllInOneActivity$2;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    iput-object p2, p0, Lcn/nubia/calendar/AllInOneActivity$2;->val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$2;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v0}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportErrorCach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/AllInOneActivity$2;->val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/AdManager;->reportErrorCach()V

    .line 133
    return-void
.end method
