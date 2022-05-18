.class Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$4;
.super Ljava/lang/Object;
.source "NubiaWirelessTouPingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setNubiaTouPingP2pPackageList2System()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 570
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x7e

    .line 574
    :try_start_0
    const-string v4, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 575
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "setSystemProperties"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 576
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->access$100(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "pippackagetlist":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 578
    const/4 v4, 0x0

    const/16 v5, 0x7e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 580
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "sys.nubia.touping.nubiamirrorpippackagelist"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v4, "NubiaWirelessTouPingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touping333 pippackagetlist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "pippackagetlist":Ljava/lang/String;
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
