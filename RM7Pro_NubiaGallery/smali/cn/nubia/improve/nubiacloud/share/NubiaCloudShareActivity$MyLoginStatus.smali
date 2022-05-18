.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoginStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    return-void
.end method


# virtual methods
.method public loginCompleted()V
    .locals 2

    const-string v0, "nubiashare"

    const-string v1, "MyLoginStatus  loginCompleted "

    .line 575
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1800(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    return-void
.end method

.method public loginError()V
    .locals 0

    return-void
.end method

.method public updateStorage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
