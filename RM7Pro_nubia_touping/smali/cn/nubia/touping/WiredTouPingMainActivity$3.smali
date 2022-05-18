.class Lcn/nubia/touping/WiredTouPingMainActivity$3;
.super Ljava/lang/Object;
.source "WiredTouPingMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredTouPingMainActivity;->doSomethingWhenAgreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredTouPingMainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/Utils/CTAAgreementUtils;->setHASAGREECTAAGREEMENT(Landroid/content/Context;)V

    .line 324
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-static {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->access$200(Lcn/nubia/touping/WiredTouPingMainActivity;)V

    .line 325
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-static {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->access$000(Lcn/nubia/touping/WiredTouPingMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-static {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->access$300(Lcn/nubia/touping/WiredTouPingMainActivity;)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$3;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/Utils/LeBoOprate;->reInitLeboSDK(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
