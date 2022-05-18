.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;
.super Ljava/lang/Object;
.source "MiracastTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;


# direct methods
.method constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 676
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)I

    move-result v0

    .line 680
    .local v0, "changes":I
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1602(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)I

    .line 681
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-static {v1, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1700(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 682
    return-void
.end method
