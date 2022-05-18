.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$3;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$3;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 315
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$3;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->cleanImageViewFlag()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
