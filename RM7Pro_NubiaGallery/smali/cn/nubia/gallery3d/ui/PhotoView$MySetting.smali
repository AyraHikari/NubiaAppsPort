.class Lcn/nubia/gallery3d/ui/PhotoView$MySetting;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/video/player/MediaSettings$ISettingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySetting"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 2893
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V
    .locals 0

    .line 2893
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onBrightChange(I)V
    .locals 0

    return-void
.end method

.method public onVolumeChange(I)V
    .locals 1

    .line 2898
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$7002(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 2899
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$7102(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z

    return-void
.end method
