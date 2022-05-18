.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->doUseMobileData(Landroid/content/Context;)V
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

    .line 643
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "nubiashare"

    const-string p2, "ok"

    .line 646
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$2300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$2100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$2200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)J

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcn/nubia/improve/xcloud/CloudManager;->shareImage(Landroid/content/Context;Ljava/util/HashMap;J)V

    .line 648
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V

    return-void
.end method
