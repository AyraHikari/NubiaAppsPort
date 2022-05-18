.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->showFolderDialog()V
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

    .line 407
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1002(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->cleanImageViewFlag()V

    return-void
.end method
