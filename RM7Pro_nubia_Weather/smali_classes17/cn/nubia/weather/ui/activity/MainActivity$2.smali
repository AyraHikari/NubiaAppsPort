.class Lcn/nubia/weather/ui/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/MainActivity;->showWithHot(Ljava/lang/String;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/MainActivity;

.field final synthetic val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity;Lcom/huanju/ssp/sdk/inf/AdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$2;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    iput-object p2, p0, Lcn/nubia/weather/ui/activity/MainActivity$2;->val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$2;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$000(Lcn/nubia/weather/ui/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportErrorCach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$2;->val$adManager:Lcom/huanju/ssp/sdk/inf/AdManager;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/AdManager;->reportErrorCach()V

    .line 121
    return-void
.end method
