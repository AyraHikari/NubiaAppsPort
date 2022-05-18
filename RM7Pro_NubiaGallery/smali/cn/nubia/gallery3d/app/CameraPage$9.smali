.class Lcn/nubia/gallery3d/app/CameraPage$9;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/ScrollBarView$ScrollBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$9;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBarPositionChanged(IF)V
    .locals 1

    .line 899
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$9;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$3300(Lcn/nubia/gallery3d/app/CameraPage;IF)V

    return-void
.end method
