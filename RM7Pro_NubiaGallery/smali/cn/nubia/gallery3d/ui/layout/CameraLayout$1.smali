.class Lcn/nubia/gallery3d/ui/layout/CameraLayout$1;
.super Ljava/lang/Object;
.source "CameraLayout.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/layout/CameraLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/CameraClustering;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/layout/CameraLayout;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/layout/CameraLayout;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->initLayoutParameters()V

    return-void
.end method
