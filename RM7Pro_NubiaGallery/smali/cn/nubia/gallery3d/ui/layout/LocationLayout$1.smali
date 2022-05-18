.class Lcn/nubia/gallery3d/ui/layout/LocationLayout$1;
.super Ljava/lang/Object;
.source "LocationLayout.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/layout/LocationLayout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/NubiaLocationClustering;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/layout/LocationLayout;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/layout/LocationLayout;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/layout/LocationLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/LocationLayout$1;->this$0:Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/LocationLayout;->initLayoutParameters()V

    return-void
.end method
