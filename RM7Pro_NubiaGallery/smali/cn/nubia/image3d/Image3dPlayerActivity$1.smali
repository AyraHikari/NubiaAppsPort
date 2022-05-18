.class Lcn/nubia/image3d/Image3dPlayerActivity$1;
.super Ljava/lang/Object;
.source "Image3dPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/image3d/Image3dPlayerActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/image3d/Image3dPlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/image3d/Image3dPlayerActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$1;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity$1;->this$0:Lcn/nubia/image3d/Image3dPlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->finish()V

    return-void
.end method
