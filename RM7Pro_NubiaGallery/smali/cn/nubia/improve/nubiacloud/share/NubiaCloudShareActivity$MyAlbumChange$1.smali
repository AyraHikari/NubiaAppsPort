.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange$1;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->albumChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange$1;->this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange$1;->this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;

    iget-object v0, v0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-virtual {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->refreshFooterViews()V

    return-void
.end method
