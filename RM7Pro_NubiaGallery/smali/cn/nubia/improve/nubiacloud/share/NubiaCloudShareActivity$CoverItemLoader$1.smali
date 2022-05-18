.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->loadCompleted(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;->this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;

    iput-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;->this$1:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;

    invoke-static {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;->access$1900(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;)Lcn/nubia/improve/move/MoveImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/improve/move/MoveImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
