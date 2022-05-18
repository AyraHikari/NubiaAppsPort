.class Lcn/nubia/gallery3d/app/CameraPage$6;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->SetAsPrivate(Landroid/content/Context;)V
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

    .line 689
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$6;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "CameraPage"

    const-string p2, "cancel"

    .line 692
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$6;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2500(Lcn/nubia/gallery3d/app/CameraPage;)V

    return-void
.end method
