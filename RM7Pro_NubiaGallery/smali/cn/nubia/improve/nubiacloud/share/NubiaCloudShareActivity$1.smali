.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;
.super Landroid/os/Handler;
.source "NubiaCloudShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->networkUnenable(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
