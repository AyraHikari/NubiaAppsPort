.class Lcn/nubia/gallery3d/app/CameraPage$15;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->showHintView()V
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

    .line 1330
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$15;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1334
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$15;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$900(Lcn/nubia/gallery3d/app/CameraPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    return-void
.end method
