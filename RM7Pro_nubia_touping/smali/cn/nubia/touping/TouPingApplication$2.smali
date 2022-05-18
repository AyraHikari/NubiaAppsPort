.class Lcn/nubia/touping/TouPingApplication$2;
.super Ljava/lang/Object;
.source "TouPingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/TouPingApplication;->changeThreadInfoAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/TouPingApplication;


# direct methods
.method constructor <init>(Lcn/nubia/touping/TouPingApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/TouPingApplication;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/touping/TouPingApplication$2;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/touping/TouPingApplication$2;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-virtual {v0}, Lcn/nubia/touping/TouPingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/TouPingApplication$2;->this$0:Lcn/nubia/touping/TouPingApplication;

    iget-object v2, p0, Lcn/nubia/touping/TouPingApplication$2;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-static {v1, v2}, Lcn/nubia/touping/TouPingApplication;->access$000(Lcn/nubia/touping/TouPingApplication;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/touping/TouPingApplication$2;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-static {v0}, Lcn/nubia/touping/TouPingApplication;->access$200(Lcn/nubia/touping/TouPingApplication;)V

    .line 70
    :cond_0
    return-void
.end method
