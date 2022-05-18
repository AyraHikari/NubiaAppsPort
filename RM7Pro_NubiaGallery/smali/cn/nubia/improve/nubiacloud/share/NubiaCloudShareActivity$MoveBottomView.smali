.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;
.super Landroid/widget/LinearLayout;
.source "NubiaCloudShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveBottomView"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/content/Context;)V
    .locals 3

    .line 240
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    .line 241
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003c

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 242
    invoke-static {p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$202(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/view/View;)Landroid/view/View;

    .line 244
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f100264

    .line 248
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 249
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900e3

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 252
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$400(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    .line 253
    invoke-virtual {p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addNewFolderView(Landroid/view/ViewGroup;)V

    .line 254
    invoke-virtual {p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addAlbumSetView(Landroid/view/ViewGroup;)V

    .line 255
    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public removeBottomView()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$500(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method
