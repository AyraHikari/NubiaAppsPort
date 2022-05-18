.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addAlbumSetView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

.field final synthetic val$setPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    iput-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->val$setPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$600(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/widget/LinearLayout;)V

    .line 305
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;->val$setPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$800(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
