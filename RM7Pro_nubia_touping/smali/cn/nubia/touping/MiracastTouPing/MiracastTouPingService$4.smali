.class Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$4;
.super Landroid/database/ContentObserver;
.source "MiracastTouPingService.java"


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
.method constructor <init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 628
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$4;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 631
    const-string v0, "MiracastTouPingService"

    const-string v1, "mSettingsObserver Setting onChange"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$4;->this$0:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V

    .line 633
    return-void
.end method
